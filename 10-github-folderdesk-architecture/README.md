# 10 — GitHub × FolderDesk Architecture

## Objective

Decide what GitHub should own, what FolderDesk should own, what should integrate between them, and what duplicated infrastructure should be retired.

This is an **architecture judgement module**, not a migration mandate.

## First Principle

> **Use the strongest native system for each responsibility. Do not maintain two systems of record for the same truth.**

The course began partly because David realised GitHub already contains mature work-management, history, automation and agent infrastructure that he had been attempting to recreate elsewhere.

The correct response is not “move everything to GitHub.” The correct response is to evaluate the boundary deliberately.

## Two Different Strength Profiles

### GitHub is strongest when the work is repository/change-centric

Examples:

- Issues and sub-issues;
- branches and commits;
- Pull Requests;
- code/config/document review;
- Actions;
- rulesets and CODEOWNERS;
- Releases/tags;
- Packages;
- repository Wiki/Pages;
- software/developer security;
- AI coding-agent assignment and repository execution;
- searchable change history and provenance.

### FolderDesk is strongest when the work is broader file-first operating context

Examples may include:

- business files/folders outside a Git repository;
- local/cloud file truth across OneDrive and other storage;
- cross-business operating context;
- workflows that span non-GitHub systems;
- human document operations where Git is not the natural source of truth;
- durable operating memory and coordination beyond repository work.

The exact FolderDesk boundary can evolve, but the principle should remain stable.

## Decision Framework

For every capability, classify it as one of four outcomes:

1. **GitHub owns**
2. **FolderDesk owns**
3. **Integrate**
4. **Retire / replace duplication**

Use this test:

| Question | Why it matters |
| --- | --- |
| What is the natural system of record? | Prevents split truth |
| Does the work depend on branches/commits/PRs? | Strong GitHub signal |
| Does it primarily operate ordinary files/folders/business records? | Strong FolderDesk signal |
| Does GitHub already provide a mature native capability? | Avoid custom rebuilds |
| Does FolderDesk add cross-system/local context GitHub cannot own naturally? | Preserve broader OS value |
| Which system has the stronger audit trail for this object? | Governance/provenance |
| Which agent surface needs to act on it? | Execution architecture |
| Can one system link to the other instead of copying data? | KISSS integration |

## Example Capability Map

This table is a starting architecture hypothesis, not an immutable mandate.

| Capability | Likely owner / pattern | Reason |
| --- | --- | --- |
| Repository change request | GitHub Issue | Native durable work object linked to code/PR |
| Branch/commit history | GitHub | Native Git history |
| Code/config/document change review | GitHub PR | Native diff/check/review gate |
| Repository automation | GitHub Actions | Native event engine |
| Repository release/version | GitHub | Tags + Releases |
| Repository work portfolio | GitHub Projects | Native Issues/PR portfolio view |
| Repository developer handbook | GitHub Wiki/repo docs | Close to code/work history |
| Public static project/course site | GitHub Pages where appropriate | Native repository publishing |
| General business document storage | FolderDesk/file system | Git is often the wrong document store |
| OneDrive/client-folder operations | FolderDesk | File-first operational context |
| Cross-system business workflow | FolderDesk orchestrates, GitHub participates | GitHub may be one bounded execution system |
| Repository AI coding work | GitHub agent/control plane | Issue → agent → branch → PR provenance |
| Company-wide context/memory | FolderDesk/memory layer | Broader than one repository |

## The Task-Tracker Question

One major architecture question is whether GitHub Issues/Projects should replace part of FolderDesk’s custom task mechanism.

Do not decide this from feature excitement alone.

Compare at least:

- work object richness;
- parent/child/dependency support;
- portfolio views;
- automation;
- agent assignment;
- cross-repository scope;
- cross-business/non-repository work;
- local file linkage;
- API/integration ergonomics;
- auditability;
- migration/duplication cost.

A likely professional pattern is:

```text
repository/change work
→ GitHub Issues / Projects

broader business/file work
→ FolderDesk

cross-boundary work
→ link/integrate, do not duplicate full records
```

## GitHub as an Execution Plane for FolderDesk

FolderDesk can treat GitHub as a specialised downstream execution surface.

Example:

```text
FolderDesk / ChatGPT decision
→ create/refine GitHub Issue
→ GitHub assigns agent
→ branch / commits / PR
→ checks / merge
→ durable result in repository
→ FolderDesk references completion/evidence
```

FolderDesk does not need to recreate GitHub’s branch/PR/check machinery to coordinate the work.

## GitHub Should Not Become a Generic Dumping Ground

Do not place ordinary business files in GitHub merely because version history is useful.

Ask:

- Is diff/merge meaningful for this file type?
- Does repository collaboration improve the workflow?
- Does GitHub access control fit the audience?
- Is the content appropriate for Git history?
- Will binary/document churn create noise?
- Is another system already the authoritative file store?

If the answer is mostly no, link to the external source instead.

## Avoid Dual Write

The highest-risk architecture is:

```text
same task / same status / same truth
stored independently in GitHub and FolderDesk
```

That creates:

- stale state;
- reconciliation logic;
- conflicting IDs/statuses;
- duplicated automation;
- human confusion.

Prefer:

```text
one canonical object
+ references / derived summaries elsewhere
```

This course’s own documentation drift is a direct example of why parallel truth copies fail.

## KISSS Architecture

KISSS = **Keep It Stupid Simple and Short.**

For integration design:

1. choose one authority;
2. expose only the minimum link/status needed elsewhere;
3. automate only repeated mechanical synchronisation;
4. avoid a custom middleware layer until a real need exists;
5. prefer native GitHub events/APIs where GitHub owns the object;
6. keep exceptions visible;
7. enforce navigation integrity: material handoffs between systems must expose a practical return or onward route (`tbhrc/skills#18`) so navigation loops close while keeping ownership and dependency boundaries distinct and acyclic.

## Hands-On Exercise — Capability Ownership Matrix

Create a table of at least 15 current FolderDesk/GitHub responsibilities.

For each one record:

- current system;
- proposed canonical owner;
- use/integrate/retire decision;
- rationale;
- migration risk;
- next experiment required.

Do not migrate anything during the first pass.

## Hands-On Exercise — One Real Integration

Choose one bounded workflow, for example a repository implementation task.

Prove:

```text
upstream decision
→ GitHub Issue
→ governed GitHub execution
→ PR / merge evidence
→ upstream system references result
```

Measure whether this reduces complexity compared with duplicating the entire workflow in FolderDesk.

## Mastery Check

Explain without prompts:

1. Why should GitHub not automatically replace FolderDesk?
2. What work is naturally GitHub-owned?
3. What work is naturally file/business-system-owned?
4. Why is dual-write dangerous?
5. What does “integrate rather than duplicate” mean?
6. Why might GitHub Issues/Projects replace only part of a custom task system?
7. How can FolderDesk use GitHub as a downstream execution plane?
8. What evidence should exist before retiring an existing workflow?

## Evidence Required for Mastery

A defensible ownership/integration matrix plus at least one real cross-system workflow where one canonical authority is preserved end to end.

## Governing Principle

> **Search native capability first. Keep one source of truth. Integrate at the boundary.**

## References

- `skills/github-power-user/SKILL.md`
- `knowledge-base/chatgpt-web-github-control-plane.md`
- `knowledge-base/executor-benchmark-framework.md`
- `04-projects/README.md`
- `09-ai-agents-github/README.md`
