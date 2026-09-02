---
name: github-power-user
description: Use GitHub as a complete professional operating platform rather than only a Git remote. Use for GitHub architecture, Issues, Projects, Discussions, Wikis, Actions, agents, repository instructions, MCP, Codespaces, rulesets, security, releases, packages, Pages, integrations, CLI/API power use, automation, governance and cross-repository planning.
version: 1.8.0
status: active
source: FolderDesk canonical github-power-user v1.0.0
source_path: 470-skills/github-power-user/
imported_for: GitHub Professional Operator course
---

# GitHub Power User

## Purpose

This is the reusable strategic layer for the course. It helps an AI coach or operator decide **which GitHub capability should own a workflow** and how the capabilities fit together professionally.

It is a portable course snapshot adapted from the canonical FolderDesk `github-power-user` Skill v1.0.0. Course-specific changes may evolve independently; the provenance above must remain visible.

## First Principle

> **Before building custom infrastructure, check whether GitHub already provides the capability natively.**

```text
work request
→ Issue / Discussion / PR / Project
→ human or agent execution
→ Actions / checks / review
→ merge / release / close
→ searchable durable history
```

## Knowledge / Freshness Rule

This Skill is a **strategic feature map**, not the highest authority for volatile GitHub product state.

Use this order:

```text
current official GitHub docs / live repository evidence
→ knowledge-base/ verified notes
→ this Skill
→ course modules / exercises
→ model memory / old chat
```

Fast-changing executor status, timings, plan/policy boundaries and benchmark scores must resolve to:

`../../knowledge-base/executor-benchmark-framework.md`

Do not freeze a temporary 401/403/429 or plan limitation into the Skill as if it were permanent current truth.

## Fast Feature Map

| Need | Use |
|---|---|
| Concrete task, bug, request or actionable decision | **Issue** |
| Parent/child work | **Issue + sub-issues** |
| Blocking relationship | **Issue dependency** |
| Portfolio / cross-repo planning | **Projects** |
| Conversation before commitment | **Discussion** |
| Governed durable documentation | **Repository Markdown** |
| Browsable documentation / handbook / SOP portal | **Wiki** |
| Proposed repository change | **Pull Request** |
| Event/scheduled automation | **Actions** |
| Deterministic hand-off to an AI worker | **Actions/API dispatcher when needed** |
| Deterministic Project lifecycle/control | **Projects API + Actions when needed** |
| Bounded AI inference in automation | **Supported CLI/API/agent workflow route** |
| Repository policy | **Rulesets / branch protection** |
| Ownership-based review | **CODEOWNERS** |
| Repeatable cloud development | **Codespaces + devcontainer** |
| Versioned delivery | **Tags + Releases** |
| Package distribution | **Packages** |
| Static website with front-end control | **Pages** |
| External AI/service connection | **GitHub Apps / Integrations** |
| AI worker implementing repository work | **Coding/custom agent** |
| Repository-wide AI conventions | **AGENTS.md / supported repository instructions** |
| Repeatable AI task | **Prompt file** |
| External tools/context for an agent | **MCP** |

## Professional Operating Model

```text
Issue
→ branch
→ commits
→ Pull Request
→ checks / review
→ merge
→ release when appropriate
→ Issue closes
```

For portfolio work:

```text
Issues + PRs
→ GitHub Project
→ Board / Table / Roadmap / filtered views
```

For AI-assisted work:

```text
human / ChatGPT Web
→ governed Issue
→ direct assignment OR deterministic dispatch
→ specialist executor
→ branch / commit / PR
→ checks / review
→ merge
```

## Issues

Use Issues as the default handoff object for actionable work. A useful Issue normally has:

1. outcome/problem;
2. context/evidence;
3. acceptance condition;
4. owner/routing signal when useful;
5. links to related work rather than duplicated detail.

Use sub-issues for decomposition, dependencies for blocking relationships, labels for stable facets, milestones for release/outcome grouping, and linked PRs for delivery evidence.

Do not turn a static Issue body into a permanent live dashboard when a maintained canonical file is the better source of current truth.

## Projects

Projects is the portfolio/control layer across Issues, PRs and draft items.

```text
Issue / PR = underlying work + evidence
Project    = planning/control surface
Field      = structured planning metadata
View       = saved lens over the same items
```

Prefer Project fields for structured planning metadata such as Status, Priority, Iteration, Target date, Workstream and Type.

Useful views include:

- Board;
- Table;
- Roadmap;
- highest priority;
- blocked/review;
- per-area/repository;
- learner/workstream-specific views.

Important distinction:

```text
Issue state = Open / Closed
Project Status = Backlog / Ready / In progress / Blocked / Review / Done
```

`Review` is the general acceptance gate for mixed work. It may include testing/checks, factual validation, documentation review, security review and human acceptance. Do not rename a universal mixed-work gate to `Testing` unless every item genuinely passes through a testing-specific stage.

### Project lifecycle automation

For a proven fixed rule, prefer deterministic automation over agentic reasoning.

Example:

```text
Backlog / Ready
→ supported coding agent assigned
→ In progress

linked non-draft PR
→ Review

Issue closed
→ Done

Issue reopened
→ Ready
```

Keep `Blocked` manual unless a deterministic blocker signal exists.

### Project control from a chat surface

A conversational front door does not need direct Projects mutation support if a deliberately bounded GitHub-native control route exists.

Proven course pattern:

```text
ChatGPT Web
→ bounded repository dispatcher
→ Project-authorised credential
→ GitHub Projects API
→ Project Status mutation
```

Keep credential responsibilities separate:

```text
agent-dispatch credential
≠
Project-mutation credential
```

Course example:

```text
AGENT_DISPATCH_TOKEN
→ coding-agent assignment

PROJECT_MANAGEMENT_TOKEN
→ user-owned Project read/write
```

When renaming a populated single-select Project option through GraphQL, preserve the existing option ID so item values are not cleared. Read `../../knowledge-base/github-projects-operating-model.md` for the verified course proof and current API guidance.

Do not mirror every Project field as a label.

## Pull Requests

Treat a Pull Request as the proposal/review/acceptance gate.

```text
PR
= proposed merge
+ diff
+ commits
+ checks
+ discussion/review
+ merge decision
```

For AI-authored work inspect:

- scope fidelity;
- changed files/diff;
- factual accuracy;
- actor/provenance;
- checks;
- secrets/permissions;
- Issue linkage;
- closing keywords;
- merge authority.

Remember:

```text
mergeable ≠ approved / safe
```

Use `Refs #123` when the Issue should remain open. Use `Closes/Fixes/Resolves` only when merge should actually close it.

## Wiki and Publishing Surfaces

Do not reduce GitHub Wiki to “just a knowledge base.”

> **Wiki = Git-backed documentation website / lightweight documentation CMS.**

Useful Wiki outputs include SOP libraries, internal handbooks, onboarding portals, product documentation, FAQs, training/course companions, architecture notes and runbooks.

Boundary:

```text
Repository Markdown
= governed canonical source/evidence

Wiki
= documentation-focused publishing/navigation

Pages
= static website publishing with HTML/CSS/JS control
```

Before building a custom SOP portal or documentation site, evaluate Wiki first. Before building a custom static public site, evaluate Pages.

## Governed Wiki Publishing Pattern

When Wiki changes need normal repository review, keep Wiki source inside the main repository and publish after merge.

```text
wiki/*.md
→ Issue / branch / PR / merge
→ GitHub Action
→ repository.wiki.git
→ live Wiki
```

Rules:

1. Keep main-repository canonical truth explicit.
2. Keep Wiki reader-facing; link instead of duplicating volatile detail.
3. Update navigation when a material new surface appears.
4. Reconcile any direct live-Wiki learning edits back into governed source.
5. Verify the publishing workflow run before claiming publication.

Read `../../knowledge-base/wiki-publishing-architecture.md`.

## Pages

GitHub Pages is the repository-native static website layer.

Use it for project sites, documentation sites, public course portals, static dashboards/snapshots and developer/product portals.

### Pages Entry-File Diagnostic

A successful deployment does **not** prove the public site is useful.

Diagnose separately:

```text
publishing source
≠
entry file
≠
information architecture
≠
reader journey
```

Course failure pattern:

```text
green deployment
≠
correct entry page
≠
good user experience
```

For this course, `main / (root)` was already correct. The fix was a deliberate root `index.html`, not moving the Pages source.

Read `../../knowledge-base/pages-entry-file-readme-trap.md`.

## Actions

Think in triggers:

```text
push / pull_request → test, lint, QA, build
issues              → triage, label, assign, dispatch
schedule            → audits, freshness, reports
workflow_dispatch   → explicit manual run
release             → publish/deploy
```

Separate:

```text
Actions source policy
= which actions/reusable workflows may run

workflow permissions
= what that workflow's GITHUB_TOKEN may do
```

`Allow all actions and reusable workflows` does **not** mean unlimited token access.

Use least privilege. Never print secrets. Treat untrusted Issue/PR content as untrusted input.

## Deterministic Automation vs Agentic AI

Do not equate **automatic** with **agentic**.

A GitHub Action can run shell/Python/JavaScript, call APIs, publish Wiki/Pages/releases, mutate a Project field or dispatch another worker without invoking a model itself.

Use this model:

```text
1. control surface
   human / ChatGPT Web / GitHub UI

2. deterministic trigger / automation
   Issue / push / workflow_dispatch
   → Actions / API

3. optional agentic execution
   coding agent / CLI / model API / agentic workflow

4. delivery + evidence
   branch / commits / PR / comments / checks / deployment
```

### Proof ladder

```text
trigger created
→ workflow/assignment exists
→ credential/auth accepted
→ executor task/session/inference visible
→ branch/output visible
→ commit visible where applicable
→ PR/delivery visible where applicable
```

Do not mark an agent operational merely because a dispatcher ran.

### Failure classification

| Evidence | Likely layer |
| --- | --- |
| no workflow run | trigger/workflow |
| secret empty | secret name/scope/setup |
| HTTP 401 | invalid/expired credential |
| HTTP 403 | authenticated but forbidden: permission/plan/policy/eligibility |
| assignment accepted, no output | executor/session/runtime |
| HTTP 429 | quota/rate/billing |
| PR exists, checks fail | implementation/CI |
| PR exists, facts wrong | output quality/review |

## Secrets and Credentials

An Actions secret is a secure container for a **real credential** generated by the authenticating service. It is not an invented password.

For normal Actions workflows, store the credential in the Actions secret scope referenced by `${{ secrets.NAME }}`.

Stored secret names and runtime environment-variable names may differ.

Course example:

```text
stored:  AGENT_DISPATCH_TOKEN
runtime: COPILOT_GITHUB_TOKEN
```

Map rather than duplicate credentials.

For separate capabilities, prefer separate least-privilege credentials rather than one broad token. The course uses `PROJECT_MANAGEMENT_TOKEN` separately for Project reads/mutations.

## Capability by Execution Mode

Do not classify an AI product with one yes/no capability label.

Evaluate separately where relevant:

- interactive assistant/agent mode;
- CLI;
- CLI inside Actions;
- native cloud coding agent;
- third-party Partner Agent;
- model API workflow;
- agentic workflow;
- local/self-hosted executor.

A plan/policy can permit one mode and deny another.

Historical course evidence includes:

- a Copilot Free CLI-in-Actions inference success while the cloud-agent assignment route was unavailable in that test state;
- early authenticated Codex/Copilot 403 boundaries;
- later successful governed Copilot/Codex/Claude cloud/partner-agent benchmark runs after the required entitlement/policy/identity setup changed;
- a Jules cloud-agent benchmark;
- Gemini authenticated inference reaching a quota boundary.

**Current comparative status must always be read from** `../../knowledge-base/executor-benchmark-framework.md`.

## Integrations as a Control Plane

Repository Integrations / GitHub Apps can connect GitHub to AI agents, deployment platforms and external services.

```text
GitHub
├── repository truth
├── Issues / PR governance
├── Projects
├── Actions automation
├── Wiki documentation
├── Pages publishing
└── Integrations
    ├── AI coding agents
    ├── review agents
    ├── deployment platforms
    └── external services
```

Do not confuse installed with proven:

```text
installed / authorised
≠
permission granted for every operation
≠
operation successfully demonstrated
```

Test the capability you actually need and record durable evidence.

## Agentic GitHub

The repository should tell AI agents how to work. Prefer durable instructions over chat memory.

Useful surfaces may include:

```text
AGENTS.md
.github/copilot-instructions.md
.github/instructions/
.github/prompts/
.github/agents/
.github/workflows/
.github/ISSUE_TEMPLATE/
.github/PULL_REQUEST_TEMPLATE.md
CODEOWNERS
```

Use a small number of clearly differentiated specialist agents. Give each only the tools and MCP access it needs.

For a generic fresh ChatGPT/GitHub-connector conversation, explicitly direct it to root `AGENTS.md`; automatic instruction loading should not be assumed on every surface.

## Repository Governance Baseline

For important repositories, consider:

- protected default branch / rulesets;
- required Pull Requests;
- relevant status checks;
- review proportional to risk;
- CODEOWNERS for sensitive paths;
- protection against force-push/deletion;
- Dependabot/security scanning where appropriate;
- deliberate merge strategy;
- merge queue when traffic justifies it;
- deliberate App/integration permissions;
- periodic removal of unused access.

For new AI executor routes, stop the first run at an open/draft PR unless merge authority has been deliberately proven safe.

## Releases and Versioning

Git history and release versioning are separate layers.

```text
commits = change history
SemVer  = meaning of release number
tag     = exact release snapshot
Release = published release record
```

This course uses Semantic Versioning: `MAJOR.MINOR.PATCH`.

## One Source of Truth

Do not independently maintain the same volatile state across Issue bodies, Wiki pages, Pages HTML, Skills and knowledge notes.

Use:

```text
canonical repository truth
→ reader-friendly Wiki summaries/navigation
→ public Pages routing
```

When material canonical state changes, run the documentation-integrity review in:

`../../sops/course-documentation-integrity.md`

### Navigation Integrity Backlink Rule

Material handoffs to another Skill, repository, or system must expose a practical return or onward route (parent policy `tbhrc/skills#18`). Unexplained one-way dead ends are architecture defects. Ensure navigation backlinks close while keeping ownership and dependency boundaries distinct and acyclic.

## Search Before Creating

Before creating an Issue type, workflow, custom agent, dashboard, documentation portal, task tracker or custom system, check whether GitHub already provides the capability.

## Course Use

AI coaches should use this Skill as a **curriculum accelerator**:

1. identify the GitHub capability being taught;
2. read only the relevant Skill reference or verified knowledge note;
3. verify current platform state when material/current;
4. teach through the live repository where practical;
5. create/reuse a GitHub Issue before substantive repository changes;
6. preserve student evidence separately from reusable course material;
7. preserve high-value discovery moments rather than pre-explaining every conclusion;
8. test integrations by actual capability, not installation status;
9. for Projects, separate Issue state, Project Status, deterministic lifecycle automation and agent execution;
10. for Pages, verify deployment, entry-file correctness and the real reader journey separately;
11. for AI workflows, separate trigger, deterministic automation, authentication, execution and delivery evidence;
12. classify AI capability by execution mode;
13. route current executor results to the canonical benchmark rather than stale embedded status;
14. run the course documentation-integrity gate when material course/student/benchmark state changes.

## References

- `references/power-guide.md` — feature-selection and professional patterns.
- `references/cheat-sheet.md` — commands, search and quick decisions.
- `references/agentic-github.md` — AI-agent-first repository operation.
- `../../knowledge-base/github-projects-operating-model.md` — verified Projects planning/control model, Review gate, Project credential boundary and live ChatGPT control proof.
- `../../knowledge-base/wiki-as-documentation-platform.md` — Wiki publishing model and Wiki-vs-Pages boundary.
- `../../knowledge-base/wiki-publishing-architecture.md` — governed main-repo-to-Wiki publishing model.
- `../../knowledge-base/pages-actions-integrations-control-plane.md` — Pages, Actions policy and integration capability model.
- `../../knowledge-base/pages-entry-file-readme-trap.md` — Pages entry-file diagnosis and portal fix.
- `../../knowledge-base/deterministic-actions-vs-agentic-ai.md` — deterministic dispatcher vs AI execution and failure-layer model.
- `../../knowledge-base/chatgpt-web-codex-dispatch.md` — preserved dispatcher/setup evidence.
- `../../knowledge-base/copilot-free-ai-in-actions.md` — preserved Copilot CLI-in-Actions execution-mode evidence.
- `../../knowledge-base/executor-benchmark-framework.md` — **current** comparative executor status/timing/scoring/provenance.
- `../../knowledge-base/web-first-local-by-exception-executor-policy.md` — executor routing policy.
- `../../sops/course-documentation-integrity.md` — anti-drift completion gate.

## Governing Principle

> **Use native GitHub capability first when it is simpler, sufficiently governed and removes custom infrastructure. Keep one source of current truth and verify the real operation.**
