# GitHub Professional Operator — AI-First Founder Crash Course

> **AI Agent Bootstrap:** Before substantive work in this repository, read root [`AGENTS.md`](AGENTS.md) and follow its startup protocol and repository workflow. Fresh ChatGPT/GitHub-connector chats should be explicitly prompted to do this because automatic `AGENTS.md` loading is not guaranteed on generic chat/connector surfaces.
>
> Copy/paste for a fresh chat: `Use tbhrc/github-course. Before doing anything else, read root AGENTS.md and follow its startup protocol and repository workflow.`

A practical GitHub operator course for founders and AI-assisted operators who need to use GitHub as a professional working platform rather than only a remote Git repository.

This repository is both the **course** and the **live training environment**.

Student #1 is David. His baseline, mistakes, corrections, breakthroughs and current progress are deliberately preserved so improvement can be measured and the learning system can later be reused.

## Start Here

| Need | Open |
| --- | --- |
| Public course front door | https://tbhrc.github.io/github-course/ |
| Reader-facing course Wiki | https://github.com/tbhrc/github-course/wiki |
| Current David dashboard | https://github.com/tbhrc/github-course/wiki/Student-Dashboard-David |
| Current AI executor benchmark | [`knowledge-base/executor-benchmark-framework.md`](knowledge-base/executor-benchmark-framework.md) |
| Verified GitHub knowledge | [`knowledge-base/`](knowledge-base/) |
| Current David canonical progress | [`students/david/progress.md`](students/david/progress.md) |
| Course modules | numbered module folders below |
| Repository operating contract | [`AGENTS.md`](AGENTS.md) |

## Course Goal

A graduate should be able to confidently design, operate, audit and improve a professional GitHub environment and answer:

- What work exists and why?
- What is currently changing?
- Which branch contains the proposal?
- Who or which agent changed it?
- What does the diff prove?
- What checks/reviews passed or failed?
- Is the change safe to merge?
- What version contains it?
- What automation/agent executed?
- What should GitHub own, what should another system own, and what should integrate?

## Core Operating Model

```text
Issue
→ issue-linked branch
→ logical commits
→ Pull Request
→ checks / review
→ merge
→ release / deployment when appropriate
→ durable history
```

Portfolio view:

```text
Issues + PRs
→ GitHub Project
→ Table / Board / Roadmap / filtered views
```

AI-first execution:

```text
human / ChatGPT Web
→ governed Issue
→ direct assignment or deterministic dispatch
→ specialist executor
→ branch / commit / PR
→ checks / review
→ merge
```

## One Source of Truth, Several Surfaces

The course now explicitly separates canonical truth from reader/publishing surfaces.

```text
CANONICAL
knowledge-base/                verified GitHub facts
numbered modules               reusable curriculum
students/                      learner evidence/current progress
exercises/ + sops/             practical operating material
benchmark framework            current executor results

      ↓ summarise / link

WIKI
reader handbook / dashboard

      ↓ route

PAGES
public front door
```

Issues and Pull Requests remain durable work/evidence/history. They should not be used as a static “current dashboard” when a maintained canonical file exists.

See [`sops/course-documentation-integrity.md`](sops/course-documentation-integrity.md).

## Knowledge Authority

For material GitHub facts:

```text
current official/live evidence
→ knowledge-base/
→ course modules
→ model memory / older chat
```

Authorised agents also have access to the central `tbhrc/skills/github-power-user` Skill canon (private Skill Bank) as a strategic accelerator. This repository keeps a frozen public snapshot at `skills/github-power-user/` for learners without private access; it is teaching material, not an independent canon.

The course deliberately avoids teaching volatile GitHub behaviour from AI memory alone.

## Course Structure — Material State

This table describes **curriculum/material availability**, not David’s personal mastery.

| Module | Topic | Material state |
| --- | --- | --- |
| 00 | Start Here | **Substantive** |
| 01 | GitHub Mental Model | **Substantive** |
| 02 | Issues — GitHub’s Work Engine | **Substantive** |
| 03 | Pull Requests — The Control Gate | **Substantive** |
| 04 | GitHub Projects | **Substantive + live course example** |
| 05 | Actions & Automation | **Substantive + live workflow evidence** |
| 06 | Releases & Professional Versioning | **Substantive + release automation** |
| 07 | GitHub Knowledge Architecture | **Substantive + Wiki/Pages implementation** |
| 08 | Security & Governance | **Substantive** |
| 09 | AI Agents + GitHub | **Substantive + live multi-agent benchmarks** |
| 10 | GitHub × FolderDesk Architecture | **Substantive decision framework** |

## Student #1 — David

David’s immutable baseline is:

[`students/david/baseline-2026-08-27.md`](students/david/baseline-2026-08-27.md)

Starting position:

- Git fundamentals: approximately **6/10**;
- GitHub platform operation: approximately **2/10**;
- Pull Requests / Issues: beginner;
- Projects / Actions / Wiki / AI-agent-native GitHub workflows: new operationally.

Current progress belongs in:

[`students/david/progress.md`](students/david/progress.md)

### Current learning state

Current learner focus, assignment and mastery state are not maintained as a second hand-written copy in this README. Use the [generated Student Dashboard — David](https://github.com/tbhrc/github-course/wiki/Student-Dashboard-David), backed by [`students/david/progress.md`](students/david/progress.md).

### Major progress already demonstrated

- Issue-first governance recognised and established.
- Semantic Versioning model materially learned.
- Verified knowledge-base requirement recognised.
- GitHub Wiki operated hands-on and re-framed as a documentation website/CMS.
- GitHub Pages independently enabled and later evaluated as a real public user.
- Pages source vs entry file vs information architecture distinction learned.
- Integrations recognised as an AI-first control-plane layer.
- Deterministic Actions vs agentic AI distinguished from live evidence.
- Real secret/credential model learned.
- Copilot execution modes separated rather than treated as one yes/no capability.
- GitHub Copilot cloud agent, OpenAI Codex, Anthropic Claude and Google Jules now have bounded governed benchmark evidence.
- Gemini API authentication/inference route is proven; the current blocker is free-tier quota.
- Public documentation drift was independently identified as a system integrity failure, leading to a source-of-truth/documentation-sync governance fix.

## Current AI Executor Benchmark

Canonical source:

[`knowledge-base/executor-benchmark-framework.md`](knowledge-base/executor-benchmark-framework.md)

Current bounded one-file benchmark scores:

| Executor | Score /100 |
| --- | ---: |
| ChatGPT Web | **95.0** |
| OpenAI Codex | **90.6** |
| Anthropic Claude | **89.4** |
| GitHub Copilot | **87.3** |
| Google Jules | **77.9** |
| Gemini CLI/API | pending governed completion |

These results apply only to the current benchmark task class. Do not generalise them to large builds/refactors until additional benchmark classes are run.

## Learn by Operating

Each substantial module should include:

1. concept;
2. operator value;
3. practical repository example;
4. hands-on GitHub task;
5. checkpoint/test;
6. evidence required for mastery;
7. relevant authoritative references.

Reading does not equal mastery.

## Repository Architecture

```text
github-course/
├── README.md
├── AGENTS.md
├── VERSION
├── CHANGELOG.md
├── index.html                  # public Pages front door
├── .github/
│   ├── copilot-instructions.md
│   └── workflows/
├── knowledge-base/             # verified GitHub knowledge
├── wiki/                       # governed source for live Wiki
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
├── integration-tests/          # executor evidence
├── students/
├── exercises/
├── sops/
├── skills/
├── question-bank/
├── templates/
├── docs/
├── certification/
└── resources/
```

## Publishing Surfaces

### GitHub Wiki

Use for:

- Handbook;
- Manual;
- module navigation;
- student dashboard;
- learning breakthroughs;
- knowledge/SOP/exercise navigation.

Governed source lives under `wiki/` and is published by `.github/workflows/publish-wiki.yml`.

### GitHub Pages

Use as the public front door. It should route readers to maintained sources rather than duplicate volatile benchmark/student state unnecessarily.

## Reusable Course Assets

- `knowledge-base/` — current verified knowledge and architecture notes;
- `skills/github-power-user/` — frozen public snapshot of the strategic GitHub feature/operating map (canon lives in the private `tbhrc/skills/github-power-user` Skill Bank);
- `integration-tests/` — durable AI executor evidence;
- `students/` — student-specific truth;
- `exercises/` — practical mastery work;
- `sops/` — repeatable operating procedures;
- `wiki/` — human-readable course interface;
- `index.html` — public course portal.

## Core Principles

> **Every meaningful change should have context, history and evidence.**

> **Verify what matters. Preserve what was verified. Teach from evidence.**

> **One source of truth; many useful views.**

> **Search GitHub-native capability before building duplicate infrastructure.**

## Current Version

The released version source is [`VERSION`](VERSION). Notable unreleased work belongs under [`CHANGELOG.md`](CHANGELOG.md) → `[Unreleased]` until a deliberate release is published.