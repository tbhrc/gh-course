# Reference & Glossary

A quick operator reference for terms used throughout the course.

---

## Core Git / GitHub Terms

### Repository
A Git-tracked project containing files, configuration and history. On GitHub, the repository also becomes the centre for Issues, PRs, Actions, security, releases, integrations and other operating surfaces.

### Commit
A logical recorded change in Git history.

### Push
Send commits to a remote repository.

### Branch
An isolated line of work based on repository history.

### Pull Request (PR)
A proposal to review and merge changes from a head branch into a base branch, with diff, commits, checks, comments and review evidence.

### Head branch
The branch containing the proposed PR changes.

### Base branch
The branch intended to receive the PR changes.

### Issue
A durable work/problem/request record explaining why actionable work exists.

### Diff
The before/after comparison of changes.

### Merge
Integrate accepted changes into the target branch.

### Mergeable
Git can technically combine the branches. **Mergeable does not mean approved or safe.**

### Revert
Undo a prior change by adding a new commit that reverses it.

### Reset
Move a Git reference/history position; depending on mode, it can rewrite/discard local history.

### `git blame`
Shows the most recent commit/author associated with each line of a file.

---

## Planning / Work Management

### Label
Reusable repository-native classification applied to Issues or Pull Requests.

### Milestone
A grouping of Issues/PRs around a target, outcome or delivery point.

### Project
GitHub’s portfolio/planning layer over Issues, PRs and draft items, with custom fields and multiple views.

### Project item
An Issue, PR or draft item included in a Project. Adding an Issue to a Project does not create another copy of the Issue.

### Project field
Structured metadata used by a Project, such as Status, Priority, Workstream, Iteration or Target date.

### Project view
A saved presentation/filter/grouping of the same Project items, such as Table, Board or Roadmap.

### Project Status vs Issue state
Different layers.

Example:

```text
Issue state = open
Project Status = Blocked
```

### Table view
Dense Project view useful for metadata editing and triage.

### Board view
Kanban-style Project view, often grouped by Status.

### Roadmap view
Timeline-oriented Project view using dates/iterations.

### Sub-issue
A child Issue used to decompose larger work.

### Dependency
A blocking/blocked relationship between Issues.

---

## Automation / Governance

### GitHub Actions
Event-driven, scheduled or manually triggered automation stored under `.github/workflows/`.

### Workflow
An Actions automation definition, normally a YAML file under `.github/workflows/`.

### Job
A group of workflow steps executed on a runner.

### Step
One command or reusable Action executed inside a job.

### Runner
The machine/environment that executes an Actions job.

### Trigger / event
The condition that starts a workflow, such as `push`, `pull_request`, `issues`, `schedule` or `workflow_dispatch`.

### `GITHUB_TOKEN`
GitHub-provided workflow token whose permissions are controlled by repository/workflow policy. It is distinct from user PATs and provider API keys.

### Actions source policy
Controls which GitHub Actions/reusable workflows may be used.

### Workflow permissions
Controls what the workflow’s token may read/write. Allowing broad Action sources does not automatically grant broad token permissions.

### Secret
Secure storage interface for a real credential such as a token/API key. A secret value is not an arbitrary password invented by the operator.

### Ruleset
Repository policy governing branches/tags and allowed operations.

### Branch protection
Controls applied to a branch, such as required PRs/checks/reviews or force-push restrictions.

### CODEOWNERS
A file mapping repository paths to responsible reviewers/owners.

### Check
Automated evidence attached to commits/PRs, such as tests, validation or security analysis.

---

## Releases / Versioning

### Semantic Versioning
`MAJOR.MINOR.PATCH`

- **MAJOR** — incompatible/breaking change after stable `1.0.0` conventions apply.
- **MINOR** — backwards-compatible new capability.
- **PATCH** — backwards-compatible fix.

### Tag
A named Git reference to an exact point in history, commonly `v1.2.3`.

### GitHub Release
A published release record associated with a tag, containing notes and optional artefacts.

### Changelog
A curated record of notable changes, not a copy of every commit.

---

## Knowledge / Publishing

### README
Fast repository/project orientation and a common entry point.

### Canonical source / source of truth
The maintained authoritative location for a fact/state. Other surfaces should link to or summarise it rather than create independent volatile truth.

### Repository Markdown
Markdown files inside the normal repository, governed through branches/PRs like code.

### Wiki
A Git-backed documentation publishing surface with pages, links, revisions and navigation.

### GitHub Pages
GitHub static website hosting for HTML/CSS/JavaScript and static-site output.

### Publishing source
The branch/folder/workflow output used by Pages.

### Entry file
The file used as the public front door, such as `index.html`/`index.md`/supported README behaviour depending on publishing setup.

### Information architecture
How a site/documentation system is structured so a user can find and navigate the information they need.

### Knowledge Base
In this course, the verified authoritative GitHub knowledge stored under `knowledge-base/`.

### Documentation integrity
The condition where canonical content, reader-facing summaries and public navigation remain aligned and traceable.

---

## AI / Agent Terms

### AGENTS.md
The shared repository operating contract used by compatible AI agents and explicitly referenced by other agent surfaces in this course.

### Copilot Instructions
Repository/path-specific instructions consumed by supported GitHub Copilot experiences.

### Prompt File
A reusable prompt/instruction stored with the repository.

### Coding agent
An AI executor that can inspect repository context and perform bounded implementation work, usually on an isolated branch with PR delivery.

### Partner Agent
A third-party coding agent integrated into GitHub’s supported agent ecosystem, such as the course’s Codex/Claude benchmark routes.

### Google Jules
A Google Labs cloud coding-agent surface connected through the Jules GitHub App. In this course it is benchmarked separately from Gemini CLI/API.

### Gemini CLI/API route
A model execution route using Gemini tooling/API through GitHub Actions and a provider credential. It is not the same executor as Jules.

### Deterministic automation
Rule-based workflow/script/API behaviour that does not itself require AI reasoning.

### Agentic execution
AI reasoning/execution performed by an agent/model after launch/context is provided.

### Dispatcher
Deterministic logic that routes/assigns work to another executor. A successful dispatcher does not prove the downstream agent completed work.

### Control plane
The shared governance/coordination layer that receives intent, routes execution and preserves evidence. In this course GitHub increasingly acts as the durable control plane.

### Execution mode
A specific way an AI capability is invoked, such as cloud coding-agent assignment, CLI inference inside Actions or provider API workflow.

### Provenance
Durable evidence of who/what performed an operation: triggering user, GitHub App, workflow actor, agent session, branch, commit author/committer, PR author and review identities.

### Setup friction
Account/configuration/policy/credential work required before the first operational benchmark run. Tracked separately from runtime performance.

### First review-ready snapshot
The first agent output presented for review. The executor benchmark scores quality from this state; later human-requested corrections do not retroactively improve the original result.

### MCP
Model Context Protocol: a way for compatible AI systems to use external tools/context through defined servers.

---

## Common Course Distinctions

```text
commit ≠ push
PR ≠ git pull
mergeable ≠ approved
Issue state ≠ Project Status
label ≠ Project field
workflow run ≠ AI execution
installed ≠ operationally proven
secret name ≠ credential value
Wiki ≠ Pages
canonical truth ≠ reader summary
agent execution ≠ learner mastery
```

---

## GitHub × FolderDesk Architecture Terms

### GitHub-first architecture
The target operating model in which GitHub is the primary durable work and execution control plane. FolderDesk is reduced to a bounded cross-system context and integration adapter.

### Canonical owner
The single authoritative system for an object type. No architecture should require parallel state for the same object in two systems.

### Dual-write (anti-pattern)
Maintaining the same work state independently in two systems (e.g. a GitHub Issue and a FolderDesk task). Creates stale state, conflicting IDs, reconciliation logic and human confusion.

### FolderDesk
A cross-system context and integration adapter. In the GitHub-first target architecture, FolderDesk provides continuity memory and thin adapters for local/file/service boundaries with no practical native GitHub or Microsoft 365 route. It does not own work control, repository execution, task dashboards or document storage.

### WebStream / LocalStream (legacy)
FolderDesk terms for web-executed vs locally-executed work lanes. In the GitHub-first model these map to GitHub execution lane (web/cloud) and macOS runner lane (local/self-hosted). Prefer the GitHub-native terms for GitHub-governed work.

### W### / L### (legacy)
FolderDesk numbered request/response coordination protocol for web→local execution handoff. Retired for GitHub-governed work. Replace with GitHub Action run / job / result and Issue/PR comments as the canonical evidence surface.

### Coordination file (legacy)
A FolderDesk-specific Markdown file used to coordinate execution within a task. Retired for GitHub-owned work. Native Issue and PR comments are the coordination surface.

### Cross-system context layer
FolderDesk's retained capability to index and provide context across GitHub, Microsoft 365, local files and other business systems without owning or duplicating their canonical objects.

### Continuity / semantic memory
FolderDesk's retained capability for operational memory across sessions. Explicitly subordinate to canonical sources (GitHub Issues, Microsoft 365 files). Memory is a read/context layer, not an authority layer.

### Thin integration adapter
A minimal FolderDesk component retained only for a local/file/service boundary that has no practical native GitHub or Microsoft API route. Each adapter must be justified by a concrete boundary case.

### Execution route (legacy: FolderDesk)
The FolderDesk term for how a task is executed (web, local, etc.). In the GitHub-first model, equivalent concepts are expressed as workflow route, runner, or executor route.

### Review gate (legacy: FolderDesk)
The FolderDesk term for the acceptance stage. In the GitHub-first model this is the PR review / check / environment approval step.

---

## Need More Detail?

- [Course Manual](Course-Manual)
- [GitHub Power User](GitHub-Power-User)
- [Knowledge Base](Knowledge-Base)
- [Course Modules](Course-Modules)
- [AI Control Plane](AI-Control-Plane)
- [Home](Home)
