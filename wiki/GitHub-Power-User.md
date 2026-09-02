# GitHub Power User

This page is the reader-facing entry point to the course's strategic GitHub operating Skill.

## What It Is

The `github-power-user` Skill helps an AI coach or operator answer:

> **Which native GitHub capability should own this workflow before we build custom infrastructure?**

The single editable Skill canon lives in the private `tbhrc/skills/github-power-user` Skill Bank, used by authorised agents. This course keeps a frozen public snapshot (current version: **1.8.0**) so learners without private access still have the full strategic feature map.

[Open the course's frozen public Skill snapshot →](https://github.com/tbhrc/github-course/blob/main/skills/github-power-user/SKILL.md)

> The Skill is a strategic feature map and accelerator, not the reusable editable canon. Current volatile executor results belong in the verified knowledge/benchmark layer, not as duplicated live truth inside the Skill or this Wiki page.

---

## Fast Feature Map

| Need | GitHub capability |
| --- | --- |
| Concrete task / bug / request | Issue |
| Parent/child work | Sub-issues |
| Blocking relationship | Dependencies |
| Portfolio / cross-repo planning | Projects |
| Conversation before commitment | Discussions |
| Proposed repository change | Pull Request |
| Event/scheduled automation | Actions |
| Deterministic AI-worker hand-off | Actions/API dispatcher where needed |
| Deterministic Project lifecycle/control | Projects API + Actions where needed |
| Repository policy | Rulesets / branch protection |
| Ownership-based review | CODEOWNERS |
| Versioned delivery | Tags + Releases |
| Governed canonical docs | Repository Markdown |
| Documentation handbook / SOP portal | Wiki |
| Static public website | Pages |
| External AI/service connection | GitHub Apps / Integrations |
| AI worker implementing repository work | Coding/custom agent |
| Repository AI contract | AGENTS.md / supported repository instructions |
| Repeatable AI task | Prompt file |
| External tools/context | MCP |

---

## Professional Operating Model

```text
Issue
→ branch
→ commits
→ Pull Request
→ checks / review
→ merge
→ release/deployment when appropriate
→ Issue closes
```

Portfolio layer:

```text
Issues + PRs
→ Project
→ Table / Board / Roadmap
```

AI layer:

```text
human / ChatGPT Web
→ Issue
→ direct assignment OR deterministic dispatch
→ specialist executor
→ PR
→ review / merge
```

---

## Power Principle #1 — Search Before Building

> **Before building custom infrastructure, check whether GitHub already provides the capability natively.**

This principle is especially important for:

- task/work tracking;
- Projects/portfolio planning;
- documentation/Wiki;
- Pages/static sites;
- Actions/automation;
- releases;
- repository policy;
- AI-agent routing.

The course itself exists partly because mature GitHub capabilities were being underused while similar infrastructure was being rebuilt elsewhere.

---

## Power Principle #2 — Use One Source of Truth

Do not create several independently maintained dashboards for the same volatile state.

Course model:

```text
canonical repository truth
→ Wiki reader summaries/navigation
→ Pages public routing
```

Issues/PRs remain evidence/history. When a maintained canonical file exists, point readers there rather than manually synchronising a static Issue body forever.

---

## Projects Power Model

Projects is the portfolio/control layer over Issues and PRs.

```text
Issue / PR = work + evidence
Project    = planning/control surface
Field      = structured metadata
View       = saved lens
```

Use Project fields for portfolio metadata such as Status/Priority/Workstream. Use labels for repository-native classification that should travel with the Issue.

For a mixed-work Project, use **Review** as the broad acceptance gate; testing/checks can happen inside Review, alongside documentation, factual, security and human acceptance.

The GitHub Course Project uses:

```text
Backlog / Ready / In progress / Blocked / Review / Done
```

The course has also proven a bounded ChatGPT Web → GitHub Actions/API → Project Status control route, with Project mutation authority kept separate from coding-agent dispatch authority.

[Open the verified Projects operating model →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/github-projects-operating-model.md)

[Open the Projects module →](https://github.com/tbhrc/github-course/tree/main/04-projects)

---

## Pages Power-User Diagnostic

A Pages site being live is not enough.

```text
green deployment
≠
correct entry page
≠
good user experience
```

Separate:

```text
publishing source
entry file
information architecture
```

For this course, `main / (root)` was already correct. The fix was a deliberate root `index.html` portal.

[Read the verified Pages failure pattern →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/pages-entry-file-readme-trap.md)

---

## AI / Agent Power Model

Do not treat “AI connected to GitHub” as one capability.

The course now distinguishes:

```text
ChatGPT Web           connected GitHub control/execution
GitHub Copilot        native cloud coding agent
OpenAI Codex          GitHub Partner Agent
Anthropic Claude      GitHub Partner Agent
Google Jules          Jules GitHub App/cloud agent
Gemini CLI/API        Actions + provider API route
```

Use this proof rule:

```text
installed / authorised
≠
permission available
≠
request accepted
≠
AI executed
≠
correct output
```

### Current live benchmark

Do not use an old Skill paragraph or Issue body as the current executor ranking.

[**Open the canonical AI Executor Benchmark & Leaderboard →**](https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md)

That file is the maintained current authority for timings, scores, setup friction and provenance.

---

## Deterministic Actions vs Agentic AI

```text
control surface
→ deterministic event / Action / API
→ optional AI worker
→ branch / PR / output
```

A workflow can publish, validate, mutate Project fields or dispatch without invoking a model.

Never infer AI execution merely because an Action ran.

[Read the verified distinction →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/deterministic-actions-vs-agentic-ai.md)

---

## Repository Agent Instructions

Root `AGENTS.md` is the shared course operating contract.

Supported agent surfaces may discover repository instructions automatically, but generic fresh ChatGPT/GitHub-connector conversations should be explicitly bootstrapped:

```text
Use tbhrc/github-course. Before doing anything else,
read root AGENTS.md and follow its startup protocol
and repository workflow.
```

Prefer one shared contract plus surface-specific pointers over duplicated instruction systems.

---

## Source Authority

The course uses:

```text
current official/live evidence
→ knowledge-base/
→ github-power-user Skill (central canon for authorised agents; local frozen snapshot otherwise)
→ modules/exercises
→ model memory
```

Therefore:

- use the Skill to discover the likely GitHub feature/pattern;
- use `knowledge-base/` for current verified platform truth;
- use modules for teaching;
- use exercises for mastery evidence.

Version **1.8.0** adds the reusable Projects control model: Issue state vs Project Status, Review as the mixed-work acceptance gate, deterministic lifecycle automation, bounded conversational Project control, credential separation and safe single-select option renaming.

The earlier 1.7.0 anti-staleness rule remains: temporary agent failures/plan boundaries are historical lessons, while current executor status resolves to the canonical benchmark.

[Open Knowledge Base →](Knowledge-Base)

---

## Reference Files

- [Power guide](https://github.com/tbhrc/github-course/blob/main/skills/github-power-user/references/power-guide.md)
- [Cheat sheet](https://github.com/tbhrc/github-course/blob/main/skills/github-power-user/references/cheat-sheet.md)
- [Agentic GitHub](https://github.com/tbhrc/github-course/blob/main/skills/github-power-user/references/agentic-github.md)

---

## Navigation

[Knowledge Base](Knowledge-Base) · [AI Control Plane](AI-Control-Plane) · [Course Manual](Course-Manual) · [Reference & Glossary](Reference-and-Glossary) · [Home](Home)
