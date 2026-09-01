# GitHub-First Target Architecture — Decision Record

**Decided:** 1 September 2026
**Governing programme:** #134
**Stage:** #139
**Upstream evidence:** #136 (capability ownership audit), #137 (macOS runner, pending), #138 (Microsoft Graph/OIDC, pending)
**Status:** Architecture locked. Three experiment rows remain open pending #137 and #138.

---

## Decision Summary

The evidence from Stage #136 confirms a substantial architecture reversal. The target system is:

```text
GitHub           = primary durable work + execution control plane
Microsoft 365    = human / client document plane
Mac runner       = bounded execution / integration plane (private repo, restricted scope)
FolderDesk       = thin adapter + cross-system context / memory layer only
```

FolderDesk is no longer the primary operating system. GitHub is.

---

## Four-Layer Responsibility Map

| Layer | System | Owns |
| --- | --- | --- |
| Work control | GitHub | Issues, sub-issues, dependencies, Projects, branches, PRs, checks, Actions, releases, documentation |
| Human documents | Microsoft 365 | DOCX, XLSX, PDF, CVs, client files, business deliverables |
| Machine execution | macOS runner / GitHub Actions | Bounded local execution governed by a private repository workflow |
| Cross-system context | FolderDesk | Index/context/memory spanning GitHub, M365, local — read layer only, not authority layer |

---

## Canonical Owner — Quick Reference

| Object | Canonical owner |
| --- | --- |
| Actionable work | GitHub Issue |
| Work decomposition | GitHub sub-issues |
| Work dependencies | GitHub issue dependencies |
| Execution plan / checklist | GitHub Issue body + templates |
| Portfolio / status views | GitHub Projects |
| Work metadata | GitHub Issue/Project fields |
| Work chronology | GitHub native event history |
| Change isolation | Git branch |
| Change proposal + review | GitHub PR |
| Execution evidence | GitHub checks / runs / artefacts |
| Deterministic automation | GitHub Actions |
| AI agent assignment | GitHub native coding-agent routes |
| Repository knowledge / SOPs | Repository Markdown + Wiki + Pages |
| Client / business files | Microsoft 365 (OneDrive/SharePoint) |
| Cross-system context | FolderDesk (read/index only) |
| Operational memory | FolderDesk/Hindsight (subordinate to canonical sources) |
| Unsupported boundary adapters | FolderDesk thin adapter |

---

## FolderDesk Bounded Purpose

> **FolderDesk is a bounded cross-system context and integration adapter. It provides continuity memory and thin adapters for local, file, or service boundaries that have no practical native GitHub or Microsoft 365 route. It does not own work control, repository execution, task dashboards, or document storage.**

### Retained capabilities (justified)

1. Cross-system context/indexing — spans GitHub, M365, local, other business systems.
2. Continuity/semantic memory — read layer explicitly subordinate to canonical sources.
3. Thin adapters for genuinely unsupported boundaries — each must be justified by a concrete case.
4. Maintenance of any surviving adapter/service infrastructure.

### Explicitly retired responsibilities (for GitHub-owned work)

- Primary work identity and allocation → GitHub Issues.
- Task status, Kanban dashboard → GitHub Projects.
- W/L coordination protocols and execution dashboards → GitHub native evidence.
- Task-scoped commit reconciliation → GitHub PR/check history.
- Release and version tracking → GitHub Releases/tags.
- Repository documentation and SOPs → repository Markdown, Wiki, Pages.
- Agent routing for repository work → GitHub native coding-agent routes.

---

## Semantics Audit Decisions

| Term | Decision | Standard replacement |
| --- | --- | --- |
| FolderDesk task / NNN.md | RETIRE (GitHub work) | GitHub Issue |
| Project dashboard state | RETIRE (GitHub work) | GitHub Project Status |
| W### / L### protocol | RETIRE (GitHub work) | Action run / job / result + Issue comment |
| WebStream / LocalStream | RENAME | GitHub execution lane / macOS runner lane |
| Execution route | RENAME | Workflow route / runner / executor route |
| Review gate | RENAME | PR review / check / environment approval |
| Evidence (task-scoped) | RENAME | Run / check / commit / PR / artefact |
| Task-scoped commit discipline | RENAME | Issue-linked branch / commits / PR |
| Coordination file | RETIRE (GitHub work) | Issue/PR comments |
| FD7 / FDW-7 workflow | RETIRE (GitHub work) | Issue → branch → PR → merge |
| Atomic task | RETIRE (GitHub work) | GitHub Issue (bounded scope) |
| Canonical task file | RETIRE (GitHub work) | GitHub Issue body + comments |
| LocalStream access profile | KEEP (pending #137) | Runner scope + permissions + OS account |
| Cross-system context layer | KEEP | Cross-system context layer |
| Hindsight / operational memory | KEEP | Continuity/semantic memory layer |
| FD0 connector adapter | KEEP bounded (pending #140) | Thin integration adapter |

---

## Dual-Write Rule

No architecture should require parallel GitHub and FolderDesk state for the same work object.

```text
PROHIBITED
─────────────────────────────────────────────────────
GitHub Issue  +  FolderDesk task  (same work)
GitHub Status  +  FolderDesk task status  (same work)
GitHub PR/checks  +  FolderDesk execution dashboard  (same work)
GitHub Action result  +  W/L protocol  (same proof, GitHub-governed)

CORRECT
─────────────────────────────────────────────────────
One GitHub Issue
  + optional Project Status field
  + optional linked external evidence comment
```

---

## External Evidence Without Dual-Writing

When a result is produced outside GitHub:

```text
1. Record result in the external tool's native form.
2. Post a comment on the governing GitHub Issue: reference URL + brief summary.
3. Do NOT open a parallel FolderDesk task mirroring Issue state.
4. Do NOT write canonical status into FolderDesk.
```

---

## Open Experiments (Not Final)

| Experiment | Issue | Blocks |
| --- | --- | --- |
| macOS self-hosted runner safety + scope | #137 | Retiring FolderDesk local relay |
| GitHub Actions + Microsoft Graph/OIDC | #138 | Retiring FolderDesk OneDrive transport |
| Cross-platform Skill distribution via GitHub | Future | Migrating FolderDesk Skill runtime |

These rows remain `EXPERIMENT REQUIRED` in the capability ownership matrix until closed.

---

## Sources Used

- `knowledge-base/github-first-folderdesk-capability-ownership.md` — Stage #136 evidence-backed ownership matrix
- FolderDesk canonical `AGENTS.md` v3.11
- `fd0-folderdesk-web-connector-operator` v1.5.2
- Course live Issues, PRs, Actions evidence (programme #134)
- GitHub Docs verified 1 September 2026 (see #136 knowledge note for source URLs)

---

## Governing principle

> **Use native work objects for work. Use the human document system for documents. Keep FolderDesk only for the integration, context and memory capability that is genuinely not better owned natively elsewhere.**
