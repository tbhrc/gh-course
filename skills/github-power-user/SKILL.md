---
name: github-power-user
description: Use GitHub as a complete professional operating platform rather than only a Git remote. Use for GitHub architecture, Issues, Projects, Discussions, Wikis, Actions, agents, repository instructions, MCP, Codespaces, rulesets, security, releases, packages, Pages, CLI/API power use, automation, governance and cross-repository planning.
version: 1.1.0
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

Projects is the portfolio layer across Issues and PRs. Prefer Project fields for structured planning metadata such as:

- Status;
- Priority;
- Effort;
- Iteration;
- Target date;
- Area/product.

Useful views: Board, Table, Roadmap, highest-priority, blocked, and per-area/repository views.

## Wiki and Publishing Surfaces

Do not reduce GitHub Wiki to "just a knowledge base." A better power-user mental model is:

> **Wiki = Git-backed documentation website / lightweight documentation CMS.**

Useful Wiki outputs include:

- SOP libraries;
- internal handbooks;
- onboarding portals;
- product documentation;
- FAQs;
- training/course companions;
- architecture and runbook libraries.

The interface exposes pages, Preview, links, images, navigation, custom sidebar/footer and revision history. That makes Wiki a useful native publishing surface for both humans and agents.

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

Read `knowledge-base/wiki-as-documentation-platform.md` for the verified details and teaching pattern.

## Pull Requests

Treat PRs as the controlled integration boundary, not merely a diff viewer. A professional PR should have a focused change, linked Issue, automated checks where useful, review appropriate to risk, and clear acceptance evidence.

## Actions

Think in triggers:

```text
push / pull_request -> test, lint, QA, build
issues              -> triage, label, assign
schedule            -> audits, freshness, reports
workflow_dispatch   -> explicit manual run
release             -> publish/deploy
```

Use least privilege. Never print secrets. Treat untrusted PR/Issue content as untrusted input.

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
- merge queue when traffic justifies it.

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

Search is a power-user capability. Before creating an Issue, workflow, custom agent or custom system, check whether it already exists.

## Course Use

AI coaches should use this Skill as a **curriculum accelerator**:

1. identify the GitHub capability being taught;
2. read only the relevant reference or verified knowledge note;
3. teach the concept through the live course repository where practical;
4. create or reuse a GitHub Issue before substantive repository changes;
5. preserve student-specific evidence separately from reusable course material;
6. update shared lessons only when the learning produces reusable value;
7. preserve high-value discovery moments instead of pre-explaining every conclusion.

## References

- `references/power-guide.md` — feature-selection and professional patterns.
- `references/cheat-sheet.md` — commands, search and quick decisions.
- `references/agentic-github.md` — AI-agent-first repository operation.
- `../../knowledge-base/wiki-as-documentation-platform.md` — verified Wiki publishing model and Wiki-vs-Pages boundary.

## Governing Principle

> Use native GitHub capability first when it is simpler, sufficiently governed and removes custom infrastructure.
