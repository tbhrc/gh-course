# Talent Bridge + iMPLEMENTAi — GitHub-First Business Operating Model

**Last verified:** 1 September 2026
**Governing programme:** #134
**Stage:** #141
**Status:** Design blueprint — pilot migration scope defined; Stage 8 to validate.

---

## Purpose

This document is the canonical operating blueprint for Talent Bridge (recruitment) and iMPLEMENTAi (implementation/consulting) after separating runtime/work control from human/client deliverables.

It establishes:

- where human and AI work happens (GitHub),
- where client/business documents live (OneDrive/SharePoint),
- the boundary between them, and
- how the system learns from completed work without polluting Git history with PII or sensitive binaries.

---

## Governing principle

```text
Human / AI work      →  GitHub Issue / Project / workflow / agent
Client deliverable   →  OneDrive / SharePoint
Local execution      →  GitHub-controlled runner where needed
Cross-boundary link  →  Microsoft Graph / direct API — minimal adapter only if required
```

One canonical work object per task. No dual-write of the same truth into both systems.

---

## A. Business operating model

### A.1 Recurring work-object types

| Work object | Examples | Natural home |
|---|---|---|
| Client / account | Talent Bridge client, iMPLEMENTAi account | GitHub Issue + Project |
| Vacancy / project | Open role, consulting engagement | GitHub Issue (sub-issue of client) |
| Candidate / work item | Candidate in pipeline, deliverable task | GitHub Issue (sub-issue of vacancy) |
| Proposal / statement of work | Commercial document for client signature | OneDrive (linked from Issue) |
| Assessment / research | Competency notes, market research text, decision records | GitHub Issue body / comment / knowledge-base note |
| Implementation task | Code/config/doc change within a repo | GitHub Issue → branch → PR |
| Maintenance | Scheduled or triggered operational task | GitHub Issue + scheduled Action |
| Process lesson / SOP | Reusable operating procedure discovered in delivery | `knowledge-base/` or `sops/` (de-identified) |

### A.2 Deciding which work objects belong where

Use this test for every new work type:

| Question | GitHub signal | OneDrive signal |
|---|---|---|
| Does it require tracked decisions, assignees and status? | Yes → GitHub | — |
| Is it a Word/Excel/PDF for human review/signature? | — | Yes → OneDrive |
| Does it contain PII or sensitive candidate/client data? | No (keep out) | Yes → OneDrive |
| Should an AI agent act on it autonomously? | Yes → GitHub | — |
| Is a diff/change history meaningful? | Yes → GitHub | — |

### A.3 Repository structure decision

**Recommended: one private operations repository per business + organisation-level Projects.**

Rationale:

- Talent Bridge and iMPLEMENTAi are distinct businesses; each gets its own private GitHub repository.
- A single operations repository per business keeps all work, SOPs, automation and agent context in one place.
- Per-client GitHub repositories are **not recommended** as a default: they create ceremony without confidentiality benefit (access control is per-repository regardless), fragment reusable automation, and inflate repository count.
- Per-client **Projects** within the operations repository are the correct scoping unit: they provide a clean Kanban/table/roadmap view for each client without requiring separate repositories.

```text
GitHub Organisation (tbhrc or dedicated)
├── talent-bridge-ops          (private)
│   ├── AGENTS.md              (agent operating contract)
│   ├── knowledge-base/        (client-agnostic process knowledge, de-identified lessons)
│   ├── sops/                  (standard operating procedures)
│   ├── templates/             (Issue templates, workflow starters)
│   ├── .github/workflows/     (automation)
│   └── [no per-client folders in the repository root]
│
└── implementai-ops            (private)
    ├── AGENTS.md
    ├── knowledge-base/
    ├── sops/
    ├── templates/
    └── .github/workflows/
```

Per-client Projects live at the organisation or repository level and are not separate repositories.

**Exception:** if a client engagement requires a distinct code base, isolated CODEOWNERS, or a separate public/private boundary, a per-client repository is acceptable for that specific deliverable. The operations repository remains the work-management plane.

### A.4 Client work hierarchy

```text
Client/Account Issue (label: client)
  └── Vacancy/Project Issue (sub-issue, label: vacancy | engagement)
        └── Candidate/Task Issue (sub-issue, label: candidate | task)
              └── Implementation Issue (sub-issue, label: implementation)
                    └── branch → PR → merge → close
```

Each level is a GitHub Issue. Parent progress rolls up automatically via sub-issues.

GitHub Projects provides the human-facing Kanban/table view across all open work, filterable by client, type and status without requiring David to open individual Issues.

### A.5 Human control surface (David's view)

David needs a dashboard that shows:

- open vacancies and candidates per client;
- status of each piece of work (New / In progress / Review / Done);
- agent-assigned work and its current state.

GitHub Projects Board or Table view with fields:

| Field | Type | Values |
|---|---|---|
| Status | Single select | New · In progress · Review · Done · Blocked |
| Business | Single select | Talent Bridge · iMPLEMENTAi |
| Client | Text | Free-form client name |
| Work type | Single select | Vacancy · Candidate · Engagement · Task · Research |
| OneDrive link | Text | URL to associated folder/document |
| Agent assigned | Checkbox | — |

David operates the Project board; agents operate Issues and branches. David does not need to read branch names or commit logs to know the status of work.

### A.6 Agent context isolation

Agents read `AGENTS.md` at the repository root to understand the current operating contract, then open only the Issues they are assigned. They do not need access to all client work.

`AGENTS.md` for an operations repository must state:

- which Project fields are authoritative;
- how to reference OneDrive documents without reading them;
- PII rules (see Section C);
- which Knowledge Base notes are relevant to the business domain;
- how completed work should be fed back as reusable lessons.

---

## B. Runtime vs deliverables boundary

### B.1 What belongs in GitHub

| Object | Example |
|---|---|
| Issues, sub-issues, dependencies | Vacancy, candidate, task |
| Project status and fields | Board view, status transitions |
| Automation workflows | Candidate pipeline steps, status updates |
| Agent instructions | `AGENTS.md`, repository SOPs |
| Research and decision text | Market research notes, hiring manager notes (de-identified) |
| Process knowledge | Reusable SOPs, lessons, approved preference records |
| Execution logs and artefacts | Action run logs, generated summaries (non-sensitive) |
| Code, config, scripts | Any repository-owned technical artefact |

### B.2 What belongs in OneDrive/SharePoint

| Object | Example |
|---|---|
| CVs and candidate documents | Candidate CV, cover letter, assessment report |
| DOCX/XLSX/PDF deliverables | Proposal, statement of work, engagement report |
| Contracts and signed agreements | Client contracts, NDAs |
| Business financials | Invoices, budgets |
| Human-shared working files | Shared draft documents for client review |
| PII-bearing data | Candidate personal data, client contact details |

GitHub Issues should **reference** these documents by OneDrive URL; they should never copy the document content into Git history.

### B.3 Reference/link contract

Every GitHub Issue that relates to a OneDrive document must carry a standard reference block in its body:

```markdown
## OneDrive references
- CV: [Candidate Name — CV](https://organisation.sharepoint.com/...)
- Proposal: [Client Name — Proposal v2](https://organisation.sharepoint.com/...)
```

This link is the only GitHub record of the document. The document content remains in OneDrive.

Agents that need to read or write a document use Microsoft Graph (when Graph integration is proven per Stage #138) or ask David to supply the relevant content as a prompt attachment. They do not commit document content to Git.

### B.4 When generated deliverables go to OneDrive

A generated output (e.g. a drafted proposal, formatted candidate summary) should be written to OneDrive when:

- it is a business document for human review/client distribution,
- it contains candidate or client PII, or
- the natural consumer is a human working in Word/Excel/SharePoint.

The GitHub Issue records the instruction, the agent's action, and the OneDrive destination URL. It does not store the content.

### B.5 When a Markdown copy legitimately belongs in GitHub

A Markdown/text copy of content belongs in GitHub when:

- it is de-identified (no PII),
- it is a reusable process lesson, SOP, or approved template (not client-specific),
- it drives agent behaviour (e.g. a prompt template, an assessment framework), or
- it is a decision record that must survive beyond a single client engagement.

---

## C. Self-learning client/account pattern

### C.1 What a client workspace may safely learn into GitHub

- Approved preferences and working style of the client (non-PII operational facts).
- Reusable process lessons discovered during delivery (de-identified).
- Architecture decisions and rationale.
- Successful workflow patterns and automation configurations.
- Account-level SOP customisations (e.g. "this client prefers two-page summaries").

These live in `knowledge-base/` or `sops/` within the operations repository, scoped to the business (not per-client subfolders that could accumulate sensitive context).

### C.2 What must never enter Git history by default

| Category | Why |
|---|---|
| Passwords, API keys, tokens | Security — use GitHub Secrets or Azure Key Vault |
| Sensitive candidate data (name, contact, health, legal) | Privacy / GDPR compliance |
| Confidential client documents | Binaries with no diff value; PII risk |
| Client financial or contractual data | Commercial sensitivity |
| Unnecessary PII in any form | Minimisation principle |

These rules apply even in private repositories. Git history is difficult to fully purge and may be replicated in forks, clones, or backups.

If an agent is asked to process PII, it must operate in memory (prompt context) and write the output to OneDrive, not to Git.

### C.3 How completed Issue outcomes feed reusable skills/SOPs

When a significant piece of work closes:

```text
Issue closes
  → agent or David writes a de-identified lesson to knowledge-base/ or sops/
  → lesson is committed through a PR (optional review)
  → knowledge-base/ is available to future agents operating in the same repository
```

The lesson must be:
- generic enough to apply to more than one client,
- stripped of candidate/client PII,
- focused on process, pattern or decision — not client-specific content.

Client-specific context that is non-sensitive and useful for continuity may be kept as a comment in the client/account Issue body rather than promoted to a shared knowledge note.

### C.4 How new agents start from current durable context

Agents receive context in this order:

```text
1. AGENTS.md (repository operating contract)
2. Assigned Issue (work object, decisions, references)
3. Parent Issue chain (client/vacancy context)
4. knowledge-base/ relevant notes (linked from AGENTS.md or Issue)
5. Chat/prompt context supplied at dispatch time
```

Agents do not depend on chat history for durable context. AGENTS.md and the Issue chain are the canonical runtime handoff.

---

## D. Organisation-level leverage

### D.1 Organisation-level Projects

A cross-business Project at the organisation level is useful for David as a single dashboard across Talent Bridge and iMPLEMENTAi. It can aggregate open Issues from both operations repositories using the Business field to filter.

This is optional at pilot stage; each operations repository can carry its own Project initially.

### D.2 Reusable workflows

Common automation patterns (e.g. "when Issue labelled `candidate` is opened, add to client Project", "when Issue closes, prompt for lesson capture") belong in a shared `.github/` repository at the organisation level or in a reusable workflow library within each operations repository.

Do not duplicate identical workflow YAML across both repositories without making it a reusable workflow.

### D.3 Runner access model

- GitHub-hosted runners are sufficient for the majority of operations automation.
- A self-hosted macOS runner (Stage #137) is the candidate path for local-execution needs (local file operations, Mac-native tools).
- Runner access must be scoped to the specific operations repository that needs it; do not grant cross-repository runner access without a demonstrated need.
- Self-hosted runners must run in a private repository context only (GitHub's own security recommendation).

### D.4 Issue templates and repository starters

Recommended Issue templates per operations repository:

- `client-account.md` — opens a new client/account Issue with standard reference block
- `vacancy.md` — opens a vacancy sub-issue with job spec fields and OneDrive CV folder link
- `candidate.md` — opens a candidate sub-issue with assessment fields and OneDrive document links
- `engagement.md` — opens an iMPLEMENTAi engagement Issue
- `lesson-capture.md` — structured post-engagement lesson record (de-identified)

A repository template (GitHub repository template feature) can be created from a validated operations repository to bootstrap future business units.

### D.5 Global vs repository-specific governance

| Governance concern | Level |
|---|---|
| PII / privacy rules | Organisation-level policy + per-repository AGENTS.md |
| Secrets (API keys, tokens) | Organisation secrets or repository secrets |
| Runner groups | Organisation level for cross-repo runners |
| Issue templates | Per-repository (content is business-specific) |
| Reusable workflows | Organisation-level `.github` repository |
| CODEOWNERS | Per-repository |
| Branch protection | Per-repository |

---

## E. Migration approach

### E.1 Current state inventory

Current OneDrive/FolderDesk pattern contains:

- `AGENTS.md`-style runtime contracts living in OneDrive alongside document folders.
- AI-agent task files, coordination messages, and execution artefacts mixed with business documents.
- Client folders containing both working documents (correct home) and agent runtime/instruction files (incorrect home).

### E.2 Classification

| Current OneDrive content | Action |
|---|---|
| Agent runtime contracts (`AGENTS.md`, skills, SOPs) | Migrate to operations repository |
| Execution artefacts (task logs, coordination files) | Retire (replace with GitHub Issue/Actions history) |
| Reusable process lessons (de-identified) | Migrate to `knowledge-base/` or `sops/` |
| Business documents (CVs, proposals, DOCX/XLSX/PDF) | Remain in OneDrive — no change |
| Client PII (contacts, candidate data) | Remain in OneDrive — no change |
| Per-client prompt templates (non-PII) | Evaluate: migrate to templates/ if reusable |
| Duplicate task state (matching a GitHub Issue) | Retire the OneDrive copy |

### E.3 Pilot migration plan (reversible)

**Pilot scope:** one Talent Bridge client engagement, end to end.

Steps:

1. Create `talent-bridge-ops` private repository with `AGENTS.md`, Issue templates and initial `knowledge-base/` from de-identified lessons.
2. Create a GitHub Project for the pilot client with the field schema defined in A.5.
3. Open client/vacancy/candidate Issues matching the current active pipeline for that client.
4. Add OneDrive document links to each relevant Issue (no document content in Git).
5. Run one full cycle (candidate sourced → assessment → submission → outcome) using GitHub Issues as the work control plane.
6. Evaluate: did David have clear status? Did agents operate from the correct context? Was OneDrive undisturbed?
7. If successful, migrate the second client; if not, identify gaps before widening.

**What is not touched during the pilot:**

- Existing OneDrive documents for all other clients.
- FolderDesk adapters that remain in use for proven non-GitHub workflows.
- Any production client data.

The pilot is fully reversible: close the Issues, archive the Project, and the OneDrive structure is unchanged.

---

## Verification

| Criterion | Satisfied when |
|---|---|
| David has a simple human-facing Project/work view | GitHub Project Board shows all open work filterable by client without requiring Issue browsing |
| Agents have a clean runtime/control environment | AGENTS.md + Issue chain provides sufficient context without OneDrive access |
| OneDrive remains clean and business-document oriented | No agent runtime files, task logs or duplicate status in OneDrive |
| Sensitive documents/PII not in Git history | All PII-bearing content referenced by URL only; no document content committed |
| Reusable learning without cross-client leakage | Lessons stored in shared `knowledge-base/` are de-identified and generic |
| No ceremony-only per-client repositories | Per-client Projects used; per-client repositories only for isolated deliverable code bases |
| FolderDesk only where a proven gap remains | FolderDesk appears only for Graph/local execution pending proof from #137/#138, and for cross-system context/memory |

---

## Boundary with FolderDesk / Hindsight

This model explicitly does not retire FolderDesk for:

- **Cross-system context/indexing** across GitHub, OneDrive and other business systems where no single native owner exists.
- **Semantic memory (Hindsight)** as continuity/context layer, explicitly subordinate to GitHub canon.
- **Thin adapters** for OneDrive file operations until Microsoft Graph integration is proven in #138.

FolderDesk does not own task management, work status, repository execution evidence, or agent routing for GitHub-owned work.

The authority order remains:

```text
GitHub canonical work object (Issue / PR / commit)
  ↓ canonical truth
OneDrive/SharePoint document
  ↓ human document truth
Hindsight / FolderDesk memory
  ↓ derived continuity context
Chat / prompt memory
  ↓ transient session context
```

---

## Stage 8 pilot definition

Stage 8 must validate:

1. `talent-bridge-ops` repository created and operating.
2. One real client engagement tracked end to end through GitHub Issues and Project.
3. OneDrive documents linked, not copied.
4. At least one de-identified lesson captured to `knowledge-base/`.
5. David can read work status from the Project without opening agent branch/commit views.
6. No PII in Git history.

If Stage 8 passes, the model is proven for rollout to iMPLEMENTAi and additional Talent Bridge clients.

---

## Official sources consulted

- GitHub Issues / sub-issues / dependencies: https://docs.github.com/en/issues
- GitHub Projects: https://docs.github.com/en/issues/planning-and-tracking-with-projects
- Self-hosted runners (security): https://docs.github.com/en/actions/reference/security/secure-use
- Microsoft Graph API: https://learn.microsoft.com/en-us/graph/overview
- Related knowledge notes: `knowledge-base/github-first-folderdesk-capability-ownership.md`, `knowledge-base/github-projects-operating-model.md`
