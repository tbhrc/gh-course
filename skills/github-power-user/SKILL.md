---
name: github-power-user
description: Use GitHub as a complete professional operating platform rather than only a Git remote. Use for GitHub architecture, Issues, Projects, Discussions, Wikis, Actions, agents, repository instructions, MCP, Codespaces, rulesets, security, releases, packages, Pages, integrations, CLI/API power use, automation, governance and cross-repository planning.
version: 1.3.0
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

Before building custom infrastructure, check whether GitHub already provides the capability natively.

```text
work request
  -> Issue / Discussion / PR / Project
  -> human or agent execution
  -> Actions / checks / review
  -> merge / release / close
  -> searchable durable history
```

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
| Repository policy | **Rulesets / branch protection** |
| Ownership-based review | **CODEOWNERS** |
| Repeatable cloud development | **Codespaces + devcontainer** |
| Versioned delivery | **Tags + Releases** |
| Package distribution | **Packages** |
| Static website with front-end control | **Pages** |
| External AI/service connection | **GitHub Apps / Integrations** |
| AI worker implementing repository work | **Coding/custom agent** |
| Repository-wide AI conventions | **AGENTS.md / repository instructions** |
| Repeatable AI task | **Prompt file** |
| External tools/context for an agent | **MCP** |

## Professional Operating Model

```text
Issue
  -> branch
  -> commits
  -> Pull Request
  -> checks / review
  -> merge
  -> release when appropriate
  -> Issue closes
```

For portfolio work:

```text
Issues + PRs
    -> GitHub Project
    -> Board / Table / Roadmap
```

## Issues

Use Issues as the default handoff object for actionable work. A useful Issue normally has:

1. outcome/problem;
2. context/evidence;
3. acceptance condition;
4. owner/routing signal when known;
5. links to related work rather than duplicated detail.

Use sub-issues for decomposition, dependencies for blocking relationships, labels for stable facets, milestones for release/outcome grouping, and linked PRs for delivery evidence.

## Projects

Projects is the portfolio layer across Issues and PRs. Prefer Project fields for structured planning metadata such as Status, Priority, Effort, Iteration, Target date and Area/product.

Useful views: Board, Table, Roadmap, highest-priority, blocked, and per-area/repository views.

## Wiki and Publishing Surfaces

Do not reduce GitHub Wiki to "just a knowledge base." A better power-user mental model is:

> **Wiki = Git-backed documentation website / lightweight documentation CMS.**

Useful Wiki outputs include SOP libraries, internal handbooks, onboarding portals, product documentation, FAQs, training/course companions, architecture notes and runbooks.

Important boundary:

```text
Wiki
= documentation-focused publishing
= rendered markup + navigation + Git history

Pages
= static website publishing
= HTML + CSS + JavaScript
= optional build process
```

Before building a custom SOP portal or documentation site, evaluate Wiki first. Before building a custom static public website, evaluate GitHub Pages.

For this course, `knowledge-base/` in the main repository remains authoritative because it participates directly in Issue → branch → PR governance; Wiki is the human-friendly publishing/navigation layer.

Read `knowledge-base/wiki-as-documentation-platform.md`.

## Governed Wiki Publishing Pattern

When the Wiki should be a real operating surface **and** Wiki changes need normal repository review, keep Wiki source inside the main repository and publish it after merge.

```text
wiki/*.md                 = governed Wiki source
.github/workflows/...     = publisher
repository.wiki.git       = live Wiki Git repository
```

Workflow:

```text
Issue
→ branch
→ edit wiki/*.md
→ Pull Request
→ merge
→ GitHub Action
→ push to .wiki.git
→ live Wiki
```

Rules:

1. Decide which main-repository files remain canonical factual truth.
2. Keep Wiki pages reader-facing and link to canonical evidence instead of blindly duplicating it.
3. Update Wiki navigation when a material new course surface is added.
4. If a student edits the live Wiki directly for hands-on learning, reconcile durable changes back into governed `wiki/` source afterward.
5. Verify the publishing workflow run before claiming publication worked.

Read `knowledge-base/wiki-publishing-architecture.md`.

## Pages

GitHub Pages is the repository-native static website layer.

Use it when you need a public or internal static site with more front-end control than Wiki.

Publishing can come from a selected branch/folder or a custom GitHub Actions workflow.

Typical uses:

- project website;
- documentation website;
- course landing/reference site;
- generated reports/dashboard snapshots;
- static product or developer portal.

Do not confuse Pages with Wiki: Wiki optimises for documentation authoring/navigation; Pages optimises for static-site publishing.

## Actions

Think in triggers:

```text
push / pull_request -> test, lint, QA, build
issues              -> triage, label, assign
schedule            -> audits, freshness, reports
workflow_dispatch   -> explicit manual run
release             -> publish/deploy
```

Important distinction:

```text
Actions source policy
= which actions/reusable workflows may be used

workflow permissions:
= what that workflow's GITHUB_TOKEN may do
```

`Allow all actions and reusable workflows` does **not** mean unlimited workflow token access.

Use least privilege. Never print secrets. Treat untrusted PR/Issue content as untrusted input.

## Integrations as a Control Plane

Repository Integrations / GitHub Apps can connect GitHub to AI agents, deployment platforms and external services.

A useful AI-first mental model is:

```text
GitHub
├── repository truth
├── Issues / PR governance
├── Actions automation
├── Wiki documentation
├── Pages publishing
└── Integrations
    ├── AI coding agents
    ├── review agents
    ├── deployment platforms
    └── external services
```

Do not confuse **installed** with **proven**:

```text
installed / authorised
≠
permission granted for every operation
≠
operation successfully demonstrated
```

For an important integration, test the specific capability required:

- read repository;
- read/write Issues;
- create branch;
- commit;
- open PR;
- review/comment;
- observe/trigger automation where intended;
- deploy where intended.

Record actual evidence, not assumptions. Prefer repository-specific and least-privilege access where practical.

Read `knowledge-base/pages-actions-integrations-control-plane.md`.

## Agentic GitHub

The repository should tell AI agents how to work. Prefer durable instructions over chat memory.

Key surfaces may include:

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

## Repository Governance Baseline

For important repositories, consider:

- protected default branch;
- required Pull Requests;
- relevant status checks;
- review proportional to risk;
- CODEOWNERS for sensitive paths;
- protection against force-push/deletion;
- Dependabot and appropriate security scanning;
- deliberate merge strategy;
- merge queue when traffic justifies it;
- deliberate App/integration permissions;
- periodic removal of unused integrations.

## Releases and Versioning

Git version control and release versioning are separate layers.

```text
commits = change history
SemVer  = meaning of release number
tag     = exact release snapshot
Release = human-readable published release
```

This course uses Semantic Versioning: `MAJOR.MINOR.PATCH`.

## Search Before Creating

Search is a power-user capability. Before creating an Issue, workflow, custom agent, integration pattern or custom system, check whether GitHub already provides the capability.

## Course Use

AI coaches should use this Skill as a **curriculum accelerator**:

1. identify the GitHub capability being taught;
2. read only the relevant reference or verified knowledge note;
3. teach the concept through the live course repository where practical;
4. create or reuse a GitHub Issue before substantive repository changes;
5. preserve student-specific evidence separately from reusable course material;
6. update shared lessons only when the learning produces reusable value;
7. preserve high-value discovery moments instead of pre-explaining every conclusion;
8. keep the reader-facing Wiki useful when course structure, student dashboards or durable breakthroughs materially change;
9. test integrations by actual capability rather than assuming installed access equals operational access.

## References

- `references/power-guide.md` — feature-selection and professional patterns.
- `references/cheat-sheet.md` — commands, search and quick decisions.
- `references/agentic-github.md` — AI-agent-first repository operation.
- `../../knowledge-base/wiki-as-documentation-platform.md` — verified Wiki publishing model and Wiki-vs-Pages boundary.
- `../../knowledge-base/wiki-publishing-architecture.md` — governed main-repo-to-Wiki publishing model.
- `../../knowledge-base/pages-actions-integrations-control-plane.md` — Pages, Actions policy and integration capability model.

## Governing Principle

> Use native GitHub capability first when it is simpler, sufficiently governed and removes custom infrastructure.
