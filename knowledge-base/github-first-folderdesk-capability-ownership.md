# GitHub-first FolderDesk Capability Ownership

**Last verified:** 1 September 2026  
**Governing programme:** #134  
**Stage:** #136  
**Status:** Evidence-backed ownership audit; local-runner and Microsoft Graph rows remain explicitly experimental until #137/#138 produce execution proof.

## Question

After three days of materially lower-friction GitHub-first operation, which responsibilities should GitHub own, which should Microsoft 365 or the local machine own, and which capabilities still justify FolderDesk?

## Executive conclusion

The evidence supports a substantial architecture reversal.

```text
OLD ASSUMPTION
FolderDesk = primary operating/task/execution system
GitHub     = downstream repository tool

TARGET DIRECTION
GitHub     = primary durable work + execution control plane
Microsoft 365 = human/client document plane
Mac runner / native APIs = bounded execution/integration plane
FolderDesk = exceptional adapter + broader context/memory layer only where it adds proven value
```

The key reason is structural, not cosmetic: GitHub already provides typed, durable work objects and machine-enforced relationships for Issues, sub-issues, dependencies, Projects, branches, commits, Pull Requests, checks, Actions and releases. FolderDesk currently recreates many equivalent responsibilities through custom task Markdown, execution contracts, route/mode fields, coordination messages, landing verification and dashboard reconciliation.

FolderDesk's own current root contract already says **GitHub-first repository execution** and requires LocalStream only when the capability is unavailable through Web/Brain/GitHub. This audit takes that rule to its logical conclusion: do not keep a parallel custom control plane where GitHub is already the stronger native owner.

## Classification model

Every row uses one of five decisions:

- **USE GITHUB** — GitHub is the natural canonical owner.
- **INTEGRATE** — another system owns the object; GitHub/FolderDesk may connect at the boundary.
- **KEEP IN FOLDERDESK** — FolderDesk currently provides a concrete non-duplicative capability worth retaining.
- **RETIRE FROM FOLDERDESK** — current FolderDesk machinery duplicates a proven stronger native owner.
- **EXPERIMENT REQUIRED** — current capability is credible but final ownership depends on a bounded live proof.

`RETIRE FROM FOLDERDESK` does not mean immediate deletion. It means the architecture should stop treating the custom component as the future owner; retirement follows only after migration dependencies and reversibility are defined in #140.

## Capability ownership matrix

| Capability / current responsibility | Current FolderDesk mechanism | Stronger native / external capability | Decision | Future canonical owner | Why / evidence | Next action |
| --- | --- | --- | --- | --- | --- | --- |
| Actionable work identity | Numeric task allocator + `120-tasks/NNN/NNN.md` | GitHub Issue | **RETIRE FROM FOLDERDESK** | GitHub Issue | Issues are first-class work objects with immutable identity, comments, assignees, labels/types, history and API support. | New durable work should default to Issues where GitHub is the natural work plane. |
| Large-work decomposition | Stages/checklists inside task Markdown | GitHub sub-issues + parent hierarchy | **USE GITHUB** | GitHub | GitHub supports nested sub-issues, parent progress and Project visibility. The course also retains the proven Master + Stage convention for surfaces where native sub-issue manipulation is unavailable. | Prefer native hierarchy when available; retain two-way Issue linking as compatibility layer. |
| Blocking/dependency relationships | `blocked_by` / `blocks` task metadata and prose | GitHub issue dependencies | **USE GITHUB** | GitHub | GitHub supports explicit blocked-by / blocking relationships with triage-or-higher access across Free/Pro/Team/Enterprise Cloud. | Replace bespoke dependency truth for GitHub-owned work. |
| Task checklist / execution plan | Markdown checklist in canonical task file | Issue body checklists + Issue templates | **RETIRE FROM FOLDERDESK** | GitHub Issue | Course #135 proved a reusable checklist-first Issue protocol with standard and Master templates. | Keep the Issue live; do not mirror checklist status to FolderDesk. |
| Portfolio / Kanban / work status | Custom task statuses, dashboard, Tracker, generated HTML | GitHub Projects + Issue/Project fields + built-in workflows | **RETIRE FROM FOLDERDESK** | GitHub Projects | Projects provides Board/Table/Roadmap views, structured fields and status automation. Current course already operates `Ready → In progress → Review → Done`. | Use GitHub Project as human control surface. |
| Work-state metadata | Frontmatter such as status, priority, route, owner | Issue fields / Project fields / issue metadata | **USE GITHUB** | GitHub | GitHub now supports organisation-level typed issue fields plus APIs and Actions events; Projects supports structured planning metadata. | Standardise only fields that add value; do not rebuild a second metadata schema. |
| Work chronology / timestamps | Mandatory task frontmatter timestamps + Timeline section | Native Issue/PR/commit/Actions event history | **RETIRE FROM FOLDERDESK** | GitHub | GitHub already records creation/update/close, comments, field changes, commits, reviews, workflow runs and merge events. | Stop hand-maintaining duplicate chronology for GitHub-owned work. |
| Change isolation | Execution modes / task-scoped local changes + custom discipline | Git branches | **USE GITHUB** | Git/GitHub | Branches isolate concurrent work natively and connect cleanly to commits/PRs. | Issue-linked branches remain default for substantive repository changes. |
| Repository change review | FolderDesk acceptance + task evidence + local diff/commit | Pull Requests + diff + reviews + checks | **USE GITHUB** | GitHub PR | PRs combine proposal, diff, commits, discussion, review/check state and merge decision in one object. | Use PR as the repository acceptance gate. |
| Repository acceptance evidence | Task-scoped evidence files, measured results, commit reconciliation | Checks, workflow runs, PR review, commit/merge history, artefacts | **RETIRE FROM FOLDERDESK** | GitHub | Native evidence is attached directly to the work/change graph rather than manually reconciled into a second dashboard. | Link external evidence only when it lives outside GitHub. |
| Deterministic automation | Custom connector/watcher/workflow machinery | GitHub Actions | **USE GITHUB** | GitHub Actions | Actions is the native event/schedule/job engine; Projects also has built-in workflows for common status transitions. | Prefer Actions before custom orchestration. |
| Reusable repository automation | FolderDesk Skills/workflows or repeated custom dispatch | Reusable GitHub workflows/actions | **USE GITHUB** | GitHub | Reusable workflows centralise deterministic automation and can propagate OIDC context/permissions deliberately. | Organisation-level reusable workflows should be evaluated in #141. |
| Repository AI-agent assignment | Coordinator receivers / custom agent routing | Native coding-agent assignment / supported GitHub agent routes | **USE GITHUB** | GitHub | Course evidence already proves GitHub as the durable handoff/control plane for multiple AI executors. Exact billing/entitlement remains route-specific. | Use Issue/PR-linked execution first; custom routing only for an unmet executor. |
| Web → repository agent handoff | W### request → receiver → L### response | Issue → agent → branch/PR/run history | **RETIRE FROM FOLDERDESK** | GitHub | For repository work, GitHub natively preserves request, actor, branch, PR and evidence without a parallel coordination file. | Stop using W/L semantics for GitHub-owned repository work. |
| Web → local Mac execution | FD10 relay / watcher / LocalStream | macOS self-hosted GitHub Actions runner | **EXPERIMENT REQUIRED** | Likely GitHub + macOS runner | #137 has already produced a private repository-scoped workflow and a pending GitHub job; live Mac enrolment/execution is still required. Self-hosted runner security requires trusted/private scope and OS-level least privilege. | Complete #137 before retiring the equivalent FolderDesk local relay. |
| Local executor access profile | `localstream_access_profile` + route/receiver policy | Runner scope + repository permissions + workflow permissions + OS account/filesystem permissions + environments | **EXPERIMENT REQUIRED** | Likely GitHub + OS | GitHub controls repository/workflow/runner access, but a self-hosted process also inherits the macOS account's ambient rights. The final least-privilege model must be proven, not assumed. | #137 must test a dedicated/restricted runner pattern. |
| W### / L### local coordination protocol | `coordination.md`, numbered requests/responses, session tracking | Action run/job/result + Issue/PR comments + runner logs | **EXPERIMENT REQUIRED** | Likely GitHub for GitHub-governed work | If #137 passes, native run history removes most need for a custom transport protocol. Non-GitHub exceptional executors may still justify an adapter lane. | Compare instruction burden/failure points in #137. |
| Git commit / release / version history | FolderDesk commit labelling + task reconciliation | Git commits, tags, GitHub Releases, release workflows | **RETIRE FROM FOLDERDESK** | GitHub | GitHub/Git already natively owns repository version/change history. Course has proven aligned VERSION/CHANGELOG/tag/Release automation. | Keep repository-specific version policy in repo; stop duplicating it as FolderDesk task mechanics. |
| Repository documentation / SOP portal | FolderDesk knowledge folders + generated task HTML | Repository Markdown + GitHub Wiki + Pages | **USE GITHUB** | GitHub | Course has proven governed repository Markdown, generated Wiki live state and Pages as public front door. | Use GitHub surfaces for repository-owned knowledge/documentation. |
| Task HTML dashboards / xva task routes | Canonical task Markdown → generated HTML → xva route | GitHub Issue/Project/Wiki/Pages for GitHub-owned work | **RETIRE FROM FOLDERDESK** | GitHub | The custom task dashboard duplicates Issue/Project visibility for GitHub-owned work. | Keep xva publishing only where it is itself a distinct product/publication need, not as task infrastructure. |
| Repository search / provenance | Brain indexing + canonical-file lookup | Native GitHub repository/Issue/PR/commit history and search | **USE GITHUB** | GitHub | Repository work/history is already co-located and addressable by stable GitHub objects. | FolderDesk should not mirror repository truth merely for discoverability. |
| Business/client documents | Generic FolderDesk/OneDrive file paths, connector transport | OneDrive / SharePoint | **INTEGRATE** | Microsoft 365 | DOCX/XLSX/PDF/CV/client files are more natural for human business use in Microsoft 365; Git history adds little and may create privacy risk. | Keep OneDrive/SharePoint authoritative; link from GitHub work objects. |
| GitHub ↔ OneDrive/SharePoint file operations | FD0 file transport / OneDrive-facing workflows | Microsoft Graph + GitHub Actions/OIDC | **EXPERIMENT REQUIRED** | Microsoft 365 for files; GitHub for work | GitHub Actions can request OIDC tokens; Microsoft Graph is the intended direct API candidate. Exact tenant permissions/read-write path must be proven in #138. | Complete bounded Graph read/write #138 before removing FolderDesk from this lane. |
| Generic safe-root binary/text transfer | FD0 format-neutral file transport + physical landing acknowledgement | Native service APIs, GitHub artefacts/releases, runner filesystem operations, Microsoft Graph | **INTEGRATE** | Depends on destination | This is useful transport, but transport should not become an operating system. Native destination APIs should win; FolderDesk remains only for unsupported boundaries. | #140 should isolate the minimal adapter surface actually still needed. |
| Exact local physical-file landing proof | Watcher acknowledgement `physical_landing.status: verified` | Runner job evidence / destination API response / direct local verification | **INTEGRATE** | Destination-specific | Exact landing proof is valuable, but GitHub runner and Microsoft Graph lanes have their own natural evidence. FolderDesk's watcher remains useful only for files transported through FolderDesk. | Retain proof only with any surviving FolderDesk transport adapter. |
| Cross-system business context | FolderDesk file-first context spanning businesses/storage/runtime | GitHub links + Microsoft 365 + connected apps, but no single GitHub-native cross-business file/context plane | **KEEP IN FOLDERDESK** | FolderDesk / context layer | GitHub is repository/work-centric. FolderDesk can still add value as a thin context/index/adapter layer across non-GitHub systems without owning their live work states. | #139 must define a much smaller read/context role. |
| Shared continuity / semantic operational memory | Hindsight / broader FolderDesk memory model | Repository knowledge is durable but scoped; GitHub is not itself a cross-surface semantic memory service | **KEEP IN FOLDERDESK** | FolderDesk/Hindsight or successor memory layer | This is materially different from Issue tracking. Retain only as continuity/context memory, never as authority over canonical GitHub/M365 truth. | Preserve authority order: canonical source → work object → memory → chat. |
| Reusable agent instructions for a repository | Root FolderDesk Skills + agent files | Repository `AGENTS.md`, templates, SOPs, prompts, reusable workflows | **USE GITHUB** | GitHub repository | Agents already read standard repository instructions naturally; #135 proved this workflow. | Keep repository-specific operating instructions beside the work. |
| Cross-platform Skill packaging/distribution | `470-skills/`, installed bootstrap, local skill-sync machinery | GitHub can version source, but ChatGPT/local runtime installation semantics are product-specific | **EXPERIMENT REQUIRED** | To be decided | GitHub is a strong candidate canonical source, but runtime discovery/installation cannot be assumed equivalent across ChatGPT, Codex, Claude and local agents. | Evaluate separately before moving/retiring `470-skills/` runtime distribution. |
| Connector / adapter API | FD0 connector with `find/project/task/file/connector/website/coordinate` | GitHub APIs + Microsoft Graph + app connectors + runner | **INTEGRATE** | Thin adapter layer only | Much of FD0's task/control surface is duplicated; a smaller adapter may still be valuable for unsupported local/file/context boundaries. | #140 should decompose FD0 by endpoint and remove control-plane ownership. |
| Connector/VPS maintenance | FolderDesk maintenance Skills + VPS/watcher health | GitHub Actions/runners cover only GitHub execution, not any surviving FolderDesk service | **KEEP IN FOLDERDESK** | FolderDesk only while service survives | If a smaller FolderDesk adapter/memory service remains, it still needs bounded maintenance. This is lifecycle support for the surviving service, not justification for the old OS scope. | Re-evaluate after #140 determines which services survive. |
| Public/custom website publication outside GitHub Pages | FolderDesk xva publisher / custom route lifecycle | GitHub Pages for repo sites; external publisher where custom domain/runtime requires it | **INTEGRATE** | Site-specific | Pages should own repository/static sites where suitable. Custom xva/other publication remains a distinct adapter only when the destination requires it. | Remove task-dashboard publication dependency; keep site publisher only for actual site needs. |

## Preliminary architecture decision by layer

### 1. Work-control layer — GitHub

GitHub should become the default owner of:

```text
Issue
→ sub-issue / dependency
→ Project status
→ branch
→ agent / Action
→ commits
→ Pull Request
→ checks / review
→ merge
→ close
```

This replaces the need for a separate FolderDesk task allocator, live task Markdown dashboard, duplicated status model, task chronology, repository W/L coordination and task-specific Git reconciliation for GitHub-owned work.

### 2. Business-document layer — Microsoft 365

OneDrive/SharePoint should remain the natural owner of:

- CVs and candidate/client documents;
- DOCX, XLSX and PDFs;
- proposals, agreements and business deliverables;
- human-shared working files;
- binary evidence that does not benefit from Git diff/history.

GitHub should hold the work object, decisions, automation and references; it should not become a binary/client-document dumping ground.

### 3. Local-machine execution — GitHub runner, pending proof

The candidate path is:

```text
GitHub Issue / workflow
→ trusted private repository
→ self-hosted macOS runner
→ bounded local operation
→ GitHub run/job evidence
```

Stage #137 is deliberately testing this with a repository-scoped private sandbox before any wider runner scope is allowed.

### 4. Remaining FolderDesk boundary

The strongest current reasons for FolderDesk to survive are not task management or repository execution. They are:

1. **cross-system context/indexing** where information naturally spans GitHub, Microsoft 365, local files and other business systems;
2. **shared continuity/semantic memory** that remains explicitly subordinate to canonical sources;
3. **thin adapters** for a local/file/service boundary for which no native GitHub/Microsoft/API route is practical;
4. **maintenance of those surviving adapters/services**.

That is a dramatically smaller role than “operating system for all work.”

## What should explicitly disappear from the target architecture

Unless #137/#138 produce contrary evidence, the future system should not require:

```text
GitHub Issue
+ FolderDesk task for the same work

GitHub Project Status
+ FolderDesk task status for the same work

GitHub branch/PR/checks
+ FolderDesk repository execution dashboard for the same work

GitHub Action/runner result
+ W###/L### protocol merely to prove the same execution
```

One canonical work object plus linked external evidence is the target.

## Permission and plan constraints

- GitHub issue dependencies are currently available on GitHub Free, Pro, Team and Enterprise Cloud; creating them requires at least triage permission.
- Sub-issues require at least triage permission and currently support up to 100 direct sub-issues per parent and eight nesting levels.
- GitHub environments can provide deployment protection and required reviewers, but required-reviewer availability on private repositories is plan-dependent; on Free/Pro/Team, required reviewers are documented as public-repository only.
- Self-hosted runners should be treated as privileged machine execution. GitHub recommends using them only with private repositories, and warns that workflow code can persistently compromise the host.
- OIDC requires explicit `id-token: write` permission for the job requesting a token; downstream cloud permissions remain controlled by the external identity provider.

These constraints do not change the ownership model, but they matter when selecting the exact implementation.

## Current FolderDesk evidence used

Current canonical FolderDesk `AGENTS.md` v3.11 defines:

- FDW-7 custom seven-step workflow;
- atomic FolderDesk tasks and canonical task dashboards;
- WebStream / LocalStream routing;
- execution modes and access profiles;
- Coordinator receivers and W###/L### transport;
- task timestamps/timeline reconciliation;
- custom local landing/commit/evidence requirements;
- **GitHub-first repository execution** and LocalStream only when unavailable through Brain/GitHub.

Current `fd0-folderdesk-web-connector-operator` v1.5.2 additionally confirms the custom Project/task/file/coordinate surfaces, exact-text checklist addressing, format-neutral file transport and watcher-backed physical-file verification.

The audit therefore compares against current FolderDesk canon rather than older chat recollection.

## Official GitHub sources

Current GitHub capability claims were verified from GitHub Docs on 1 September 2026:

- Issues quickstart / sub-issues / dependencies: https://docs.github.com/en/issues/tracking-your-work-with-issues/learning-about-issues/quickstart
- Adding sub-issues: https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/adding-sub-issues
- Creating issue dependencies: https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/creating-issue-dependencies
- Project built-in automations: https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/using-the-built-in-automations
- Issue fields / typed metadata: https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/adding-and-managing-issue-fields
- Environments / deployment protection: https://docs.github.com/en/actions/reference/workflows-and-actions/deployments-and-environments
- Self-hosted runners: https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/add-runners
- Secure use of self-hosted runners: https://docs.github.com/en/actions/reference/security/secure-use
- OIDC reference: https://docs.github.com/en/actions/reference/security/oidc

Additional repository-specific capability evidence is maintained in this course's `knowledge-base/` and live Issues/PRs/Actions.

## Decisions that remain deliberately open

This Stage can classify the architecture before the experiments finish, because `EXPERIMENT REQUIRED` is an explicit valid outcome. These rows must not be silently promoted to final decisions:

- **#137:** whether a safely scoped macOS self-hosted runner actually replaces routine FolderDesk Web → Local execution;
- **#138:** whether GitHub Actions + Microsoft Graph/OIDC can safely replace routine FolderDesk-mediated OneDrive transport;
- future Skill-runtime experiment: whether GitHub should become canonical source for cross-platform Skills without breaking ChatGPT/local runtime discovery/installation.

## Governing principle

> **Use native work objects for work. Use the human document system for documents. Keep FolderDesk only for the integration/context/memory capability that remains genuinely unique.**
