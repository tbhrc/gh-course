# 10 — GitHub-First Target Architecture

## Status

**Architecture decision locked** — 1 September 2026
**Governing programme:** #134
**This stage:** #139
**Upstream evidence stages:** #136 (capability audit), #137 (macOS runner experiment), #138 (Microsoft Graph/OIDC experiment)

---

## Governing Principle

> **Use native work objects for work. Use the human document system for documents. Keep FolderDesk only for the integration, context and memory capability that is genuinely not better owned natively elsewhere.**

---

## The Decision

The evidence from Stage #136 supports a substantial architecture reversal:

```text
OLD ASSUMPTION
FolderDesk = primary operating / task / execution system
GitHub     = downstream repository tool

TARGET ARCHITECTURE
GitHub           = primary durable work + execution control plane
Microsoft 365    = human / client document plane
Mac runner       = bounded execution / integration plane (runner-scoped, private repo only)
FolderDesk       = thin adapter + cross-system context / memory layer only
```

This is not a migration mandate. It is the architecture direction. Retirement of specific FolderDesk components follows only after migration dependencies and reversibility are defined separately.

---

## Canonical Owner Map

Every major object type has one canonical owner. No architecture should require parallel GitHub and FolderDesk state for the same object.

| Object type | Canonical owner | Rationale |
| --- | --- | --- |
| Actionable work identity | GitHub Issue | First-class durable work object with immutable identity, comments, history and API |
| Large-work decomposition | GitHub sub-issues + Issue hierarchy | Native parent/child/progress support; course-proven Master + Stage convention for agent-compatible surfaces |
| Blocking / dependency | GitHub issue dependencies | Native typed blocked-by/blocking with triage-or-higher access |
| Execution plan / checklist | GitHub Issue body + templates | Checklist-first Issue protocol proven in #135 |
| Portfolio / Kanban status | GitHub Projects | Board/Table/Roadmap views with status automation; course already operates Backlog → Review → Done |
| Structured planning metadata | GitHub Issue/Project fields | Typed org-level fields and APIs; do not rebuild a second metadata schema |
| Work chronology | GitHub native history | Issues, PRs, commits, Actions runs, reviews and field-change events are already recorded |
| Change isolation | Git branch | Issue-linked branches remain default for substantive repository changes |
| Change review + acceptance | GitHub PR | Proposal, diff, commits, discussion, checks and merge decision in one object |
| Execution evidence | GitHub checks, runs, commit/merge, artefacts | Native evidence is attached directly to the work/change graph |
| Repository automation | GitHub Actions | Native event/schedule/job engine |
| Reusable automation | Reusable GitHub workflows | Centralise deterministic automation; organisation-level reusable workflows in #141 |
| AI agent assignment / handoff | GitHub native coding-agent routes | Issue → agent → branch → PR provenance is already proven |
| Repository documentation / SOPs | Repository Markdown + GitHub Wiki + Pages | Governed repository Markdown, generated Wiki and Pages public front door proven in course |
| Business / client documents | Microsoft 365 (OneDrive / SharePoint) | DOCX/XLSX/PDF/CVs belong in the human file system; Git adds cost with little benefit |
| Cross-system business context | FolderDesk / context layer | GitHub is repository-scoped; FolderDesk can index across GitHub, M365 and local without owning their live work |
| Shared continuity / semantic memory | FolderDesk / Hindsight or successor | Explicitly subordinate to canonical sources; never authoritative over GitHub/M365 truth |
| Thin integration adapters | FolderDesk adapter surface only | Only for local/file/service boundaries with no practical native GitHub/Microsoft/API route |

---

## Default Execution Paths

### Path 1 — Repository / code / course work

```text
founder intent / ChatGPT decision
→ governed GitHub Issue
→ Project visibility where useful
→ direct assignment OR deterministic workflow trigger
→ specialist executor (Copilot / Claude / Codex / Jules / Action)
→ issue-linked branch + commits
→ Pull Request
→ checks / review
→ merge
→ durable GitHub evidence
```

FolderDesk references the result via GitHub Issue URL. It does not maintain a parallel task record.

### Path 2 — Business / client document work

```text
client request / business need
→ work object in GitHub Issue (if repository/delivery work is involved)
→ actual document in OneDrive / SharePoint
→ link from Issue to document location
→ no binary committed to Git
```

GitHub holds the work decision and evidence. Microsoft 365 holds the file.

### Path 3 — Mac / local execution (pending full proof)

```text
GitHub Issue / workflow
→ trusted private repository
→ self-hosted macOS runner (restricted, private-repository scope only)
→ bounded local operation
→ GitHub run / job evidence linked to Issue
```

Stage #137 is testing this path. Until it passes end-to-end, the FolderDesk local relay must not be retired. Self-hosted runners should be treated as privileged machine execution.

### Path 4 — OneDrive / SharePoint integration (pending full proof)

```text
GitHub Issue / workflow
→ GitHub Actions OIDC token (id-token: write)
→ Microsoft Graph API
→ targeted read / write to OneDrive / SharePoint
→ run evidence linked to Issue
```

Stage #138 is testing this path. Until it passes end-to-end, the FolderDesk-mediated OneDrive transport must not be retired.

---

## FolderDesk Purpose Statement

After GitHub-first adoption, FolderDesk's purpose is:

> **FolderDesk is a bounded cross-system context and integration adapter. It provides continuity memory and thin adapters for local, file, or service boundaries that have no practical native GitHub or Microsoft 365 route. It does not own work control, repository execution, task dashboards, or document storage.**

### What FolderDesk genuinely contributes (retain)

1. **Cross-system context and indexing** — information that naturally spans GitHub, Microsoft 365, local files and other business systems without a GitHub-native equivalent.
2. **Shared continuity / semantic memory** — operational memory explicitly subordinate to canonical sources (GitHub Issues, M365 files). Memory is a read layer, not an authority layer.
3. **Thin adapters for unsupported boundaries** — local/file/service integrations for which no native GitHub/Microsoft/API route is practical. Each adapter must be justified by a concrete boundary case.
4. **Maintenance of surviving adapter/service infrastructure** — lifecycle support for whatever bounded adapters remain after #140 audit.

### What FolderDesk becomes an adapter for (not an owner of)

- GitHub work objects (Issues, PRs, Actions runs) — FolderDesk may reference and link; it does not maintain a parallel status.
- Microsoft 365 document storage — FolderDesk may provide index/context; OneDrive/SharePoint is the file authority.
- macOS execution — FolderDesk may relay to local environments only for operations that cannot run through a GitHub self-hosted runner.

### What FolderDesk no longer owns

- Primary work identity and allocation (→ GitHub Issues).
- Task status, dashboard and Kanban state for GitHub-owned work (→ GitHub Projects).
- Repository execution dashboards and W/L coordination files for GitHub-owned work (→ GitHub native evidence).
- Task-scoped commit reconciliation and evidence files for GitHub PRs/checks (→ GitHub native evidence).
- Repository version/release tracking (→ GitHub Releases/tags).
- Repository documentation and SOPs (→ repository Markdown, Wiki, Pages).
- Agent routing and assignment for repository work (→ GitHub native coding-agent routes).

---

## What Must Not Exist in the Target Architecture

```text
GitHub Issue
+ FolderDesk task for the same work          ← eliminate

GitHub Project Status
+ FolderDesk task status for the same work   ← eliminate

GitHub branch / PR / checks
+ FolderDesk repository execution dashboard  ← eliminate

GitHub Action / runner result
+ W### / L### protocol for the same proof    ← eliminate for GitHub-governed work
```

One canonical work object with linked external evidence is the target.

---

## Semantics / Language Alignment

The following audit decides KEEP / RENAME / RETIRE for current bespoke FolderDesk terms.

| Current term | Decision | Replace with | Rationale |
| --- | --- | --- | --- |
| Task (FolderDesk task, NNN.md) | **RETIRE** (for GitHub-owned work) | GitHub Issue | Issue is the stronger durable work object |
| Project dashboard state | **RETIRE** (for GitHub-owned work) | GitHub Project Status | Project is the canonical portfolio/Kanban surface |
| W### / L### request–response protocol | **RETIRE** (for GitHub-governed work) | Action run / job / result + Issue/PR comment | GitHub natively preserves request, actor, branch, PR and run evidence |
| WebStream / LocalStream | **RENAME** | GitHub/web execution lane / macOS runner lane | Retain the conceptual separation; replace with GitHub-native language |
| Execution route | **RENAME** | Workflow route / runner / executor route | Keep the concept; use standard GitHub/AI terminology |
| Review gate | **RENAME** | PR review / check / environment approval | Standard GitHub terminology; no new ontology needed |
| Evidence (task-scoped) | **RENAME** | Run / check / commit / PR / artefact / linked external evidence | Reuse the GitHub evidence graph; link external evidence only when outside GitHub |
| Task-scoped commit discipline | **RENAME** | Issue-linked branch / commits / PR | Standard GitHub flow covers the concept completely |
| Coordination file | **RETIRE** (for GitHub-owned work) | Native Issue / PR comments | GitHub comments are the canonical coordination surface for Issues and PRs |
| FD7 / FDW-7 workflow | **RETIRE** (for GitHub-governed work) | Issue → branch → PR → merge workflow | Course `AGENTS.md` workflow already covers this |
| Atomic task | **RETIRE** (for GitHub-owned work) | GitHub Issue (bounded scope) | Issues are the natural bounded work object |
| Canonical task file | **RETIRE** (for GitHub-owned work) | GitHub Issue body + comments | Issue body and comments are the canonical record |
| LocalStream access profile | **KEEP** (pending #137 proof) | Runner scope + permissions + OS account | Retain for non-runner local adapter until #137 fully proven |
| Cross-system context layer | **KEEP** | Cross-system context layer | Represents a genuinely different concept with no GitHub-native equivalent |
| Hindsight / operational memory | **KEEP** | Continuity memory / semantic memory layer | Distinct from Issue tracking; retained explicitly as a read/context layer |
| FD0 connector adapter | **KEEP** (bounded, pending #140) | Thin integration adapter | Retain only for endpoints without a practical native API route |

**Goal:** an AI agent already fluent in GitHub and standard AI terminology should be able to infer FolderDesk's remaining operating model without learning new ontology. The terms that survive do so only because they represent capabilities with no GitHub-native equivalent.

---

## Capabilities FolderDesk Must Not Duplicate

1. GitHub Issue lifecycle — creation, status, closure, checklist.
2. GitHub Project portfolio and Kanban status.
3. GitHub branch, commit and PR machinery.
4. GitHub Actions trigger, job, run and result recording.
5. GitHub AI agent assignment and execution evidence.
6. GitHub release and version management.
7. Repository documentation, Wiki and Pages.
8. OneDrive / SharePoint file authority.

---

## External Evidence Linkage Without Dual-Writing

When evidence lives outside GitHub, it must link back to the canonical Issue without duplicating the work status:

```text
external tool completes an operation
→ record result in the external tool's native form
→ post a comment on the governing GitHub Issue with a reference URL or summary
→ do NOT open a parallel FolderDesk task mirroring the Issue state
→ do NOT write status into FolderDesk while GitHub still owns the canonical state
```

Pattern: **one canonical work object + linked reference(s)**. The external system does not become a second authority.

---

## Open Experiments (Must Not Be Promoted Prematurely)

These three open items cannot be converted to final decisions until evidence arrives:

| Experiment | Issue | Open question |
| --- | --- | --- |
| macOS self-hosted runner | #137 | Does a safely scoped macOS runner replace routine FolderDesk local relay? |
| Microsoft Graph/OIDC | #138 | Can GitHub Actions + Graph safely replace FolderDesk-mediated OneDrive transport? |
| Cross-platform Skill distribution | Future | Should GitHub become canonical source for Skills without breaking ChatGPT/local runtime installation? |

Until these close, `EXPERIMENT REQUIRED` rows in `knowledge-base/github-first-folderdesk-capability-ownership.md` remain valid decisions — not gaps to fill with optimism.

---

## Architecture Simplicity Test

The target architecture passes when:

- [ ] Every major object has one canonical owner.
- [ ] No live workflow requires parallel GitHub + FolderDesk state for the same work.
- [ ] Runtime execution evidence and client deliverables live in separate systems.
- [ ] A fresh AI agent can explain the path using only GitHub and standard AI vocabulary.
- [ ] Retained FolderDesk capability is justified by a concrete boundary case, not by sunk cost.
- [ ] The system is simpler than what it replaced.

---

## Hands-On Exercise — Architecture Validation

1. Pick any active GitHub Issue from the course repository.
2. Trace the full path from instruction to durable evidence using only GitHub surfaces.
3. Identify whether any step in your trace currently requires a FolderDesk parallel record.
4. If yes, classify it: is this a genuine boundary case or an unnecessary duplication?
5. Produce a one-sentence canonical-owner statement for each object involved.

---

## Mastery Check

Without prompts, explain:

1. What architecture reversal does this stage confirm?
2. What are the four layers of the target architecture and what does each own?
3. Name three things FolderDesk must no longer own.
4. Name two things FolderDesk still genuinely contributes.
5. What does "external evidence linkage without dual-writing" mean in practice?
6. Why are the three open experiments important to complete before finalising their rows?
7. What standard GitHub term replaces each of: W###/L###, task-scoped commit discipline, coordination file?

---

## References

- `knowledge-base/github-first-folderdesk-capability-ownership.md` — evidence-backed capability ownership matrix (Stage #136)
- `knowledge-base/github-first-target-architecture.md` — canonical architecture decision record (this stage)
- `knowledge-base/executor-benchmark-framework.md` — executor capability evidence
- `skills/github-power-user/SKILL.md` — GitHub feature map and strategic accelerator
- `09-ai-agents-github/README.md` — AI agent execution routes
- `04-projects/README.md` — GitHub Projects operating model
- `AGENTS.md` — shared repository operating contract
