# GitHub Professional Operator — AI-First Founder Crash Course

A practical, AI-agent-friendly GitHub operator course designed to move learners from basic Git usage to professional operation of GitHub as a foundational working platform.

David is Student #1 and the first public case study. His starting knowledge, mistakes, assessments and progress are intentionally preserved so the course can prove improvement over time and later be reused by other founders and learners.

## Objective

Become capable of confidently designing, operating, auditing and improving a professional GitHub environment, with particular emphasis on AI-agent workflows, traceability, automation and governance.

The target is not simply to understand GitHub features. A professional operator should be able to answer:

- What is changing?
- Why is it changing?
- Who or which agent changed it?
- What work is outstanding?
- What passed or failed?
- What is safe to merge?
- What version is deployed?
- What should happen next?

## Two Things Are Being Built

This repository is simultaneously:

1. **a course** — David learns and improves by operating GitHub; and
2. **a reusable learning system** — the lessons, question banks, SOPs, Skills, templates, knowledge base and assessment model can later be used by other people and their AI coaches.

The repository itself is part of the training environment.

## AI-Agent-Friendly Learning Model

Any compatible AI coach should be able to attach this repository, read the durable student state and continue coaching without depending on hidden chat history.

```text
student profile
→ baseline diagnostic
→ personalised path
→ lesson
→ hands-on GitHub work
→ assessment
→ evidence
→ progress update
→ next lesson
→ final comparison against baseline
```

Shared agent instructions live in `AGENTS.md`. GitHub Copilot repository-wide instructions live in `.github/copilot-instructions.md`.

## Knowledge Authority

The course does not treat model memory as the final authority for material GitHub behaviour.

```text
current official/live evidence
→ knowledge-base/
→ skills/github-power-user/
→ course modules
→ model memory / older chat
```

- `knowledge-base/` is the authoritative verified GitHub best-practices layer.
- `skills/github-power-user/` is the strategic accelerator and feature map.
- course modules convert that knowledge into teaching and hands-on operation.
- `students/` preserves individual evidence, mistakes and progress.
- GitHub Wiki can be used as a reader-friendly long-form/navigation layer, but it is not the only source of truth.

See `knowledge-base/README.md`.

## Student #1 — David

David's durable learner state lives under `students/david/`.

His baseline on **27 August 2026** shows:

| Area | Starting level |
| --- | --- |
| Git concepts | Intermediate |
| Repositories and files | Intermediate |
| Commits, history and diffs | Intermediate |
| Branching | Basic–Intermediate |
| Pull Requests | Beginner |
| Issues | Beginner |
| Projects | New |
| Actions | New |
| Wikis / knowledge architecture | New |
| Releases and versioning | Beginner |
| Security and governance | Basic–New |
| GitHub automation | New |
| AI-agent GitHub workflows | New |
| GitHub as an operating platform | New |

Approximate starting position: **Git fundamentals ~6/10; GitHub platform operation ~2/10.**

The complete historical baseline is preserved in `students/david/baseline-2026-08-27.md`. It must not be rewritten later.

## Core Mental Model

GitHub is not merely cloud storage for Git repositories.

> **GitHub is a change-management operating platform built around repositories.**

A professional change increasingly follows this chain:

```text
WHY
Issue
  ↓
WHO / WHAT IS WORKING
Assignee or agent
  ↓
WHERE THE CHANGE IS ISOLATED
Branch
  ↓
WHAT CHANGED
Commits
  ↓
PROVE THE CHANGE
Pull Request + Diff + Checks
  ↓
ACCEPT THE CHANGE
Merge
  ↓
WHAT VERSION CONTAINS IT
Release
  ↓
PERMANENT HISTORY
GitHub
```

## Course Structure

| Module | Topic | Status |
| --- | --- | --- |
| 00 | Start Here | In progress |
| 01 | GitHub Mental Model | In progress |
| 02 | Issues — GitHub's Work Engine | Pending |
| 03 | Pull Requests — The Control Gate | Pending |
| 04 | GitHub Projects | Pending |
| 05 | Actions & Automation | Pending |
| 06 | Releases & Professional Versioning | In progress |
| 07 | GitHub Knowledge Architecture | In progress |
| 08 | Security & Governance | Pending |
| 09 | AI Agents + GitHub | Pending |
| 10 | GitHub × FolderDesk Architecture | Pending |

## Repository Structure

```text
github-course/
├── README.md
├── AGENTS.md
├── VERSION
├── CHANGELOG.md
├── .github/
│   └── copilot-instructions.md
├── knowledge-base/
│   ├── README.md
│   ├── source-policy.md
│   ├── wiki-vs-repository-markdown.md
│   └── gap-register.md
├── 00-start-here/
├── 01-github-mental-model/
├── 02-issues/
├── 03-pull-requests/
├── 04-projects/
├── 05-actions-automation/
├── 06-releases-versioning/
├── 07-knowledge-architecture/
├── 08-security-governance/
├── 09-ai-agents-github/
├── 10-github-folderdesk-architecture/
├── students/
│   └── david/
│       ├── profile.md
│       ├── baseline-2026-08-27.md
│       ├── progress.md
│       └── assessments/
├── question-bank/
├── templates/
├── docs/
├── exercises/
├── certification/
├── resources/
├── skills/
└── sops/
```

## Learning Method

This is a **learn by operating** course.

Each substantial module should evolve toward:

1. **Concept** — what the capability is.
2. **Operator value** — why it matters.
3. **Example** — how it fits a real workflow.
4. **Hands-on task** — use GitHub itself.
5. **Operator test** — demonstrate understanding.
6. **Evidence** — preserve proof of capability.
7. **Applied judgement** — decide where and when the feature should be used.

## Reusable Course Assets

- `knowledge-base/` — verified, current GitHub best-practices knowledge and gap tracking.
- `students/` — learner-specific truth and assessments.
- `question-bank/` — reusable diagnostics, checkpoints, scenario tests and answer guides.
- `templates/` — reusable student/course templates.
- `docs/` — architecture and explanatory documentation.
- `exercises/` — practical GitHub work.
- `certification/` — final competency requirements and evidence.
- `skills/` — reusable AI-agent Skills, including the `github-power-user` course accelerator.
- `sops/` — concise standard operating procedures produced from practised workflows.

## Operator Principle #1

> **Every meaningful change should have context, history and evidence.**

## Knowledge Principle

> **Verify what matters. Preserve what was verified. Teach from evidence.**

## Course Rule

Do not rebuild infrastructure merely because we have not yet learned that GitHub already provides it. Understand GitHub's native capability first, then decide whether to use, integrate or replace existing systems.

For David's companies, the course will explicitly test where GitHub should become foundational across **Talent Bridge**, **iMPLEMENTAi** and **FolderDesk**, and where existing systems should remain separate.
