# AGENTS.md

## Purpose

This repository is the live learning environment for the **GitHub Professional Operator — AI-First Founder Crash Course** and a reusable AI-agent coaching system.

David is Student #1 and the first public case study. The system must also remain reusable for future students.

## AI Coach Startup Protocol

Before coaching a student:

1. Read this file.
2. Identify the active student.
3. Read `students/<student-id>/profile.md`.
4. Read that student's latest baseline.
5. Read `students/<student-id>/progress.md`.
6. Read the current module.
7. Continue from demonstrated knowledge; do not restart generic GitHub training.

For David, begin with:

- `students/david/profile.md`
- `students/david/baseline-2026-08-27.md`
- `students/david/progress.md`

## Mandatory Repository Change Workflow

For every substantive repository change:

```text
Issue
  ↓
issue-linked branch
  ↓
changes + commits
  ↓
Pull Request
  ↓
review / checks
  ↓
merge
  ↓
Issue closes
```

Rules:

1. Create or identify the governing Issue **before editing repository files**.
2. The Issue must state the objective, scope and acceptance criteria.
3. Work on a branch linked by name or context to that Issue.
4. Do not make substantive course changes directly on `main`.
5. The Pull Request must link the Issue and use a closing keyword when the PR fully completes it, for example `Closes #123`.
6. Merge only when acceptance criteria are satisfied.
7. Preserve the Issue as the durable record of why the work happened.
8. Tiny typo-only corrections may be grouped into an existing suitable Issue; do not create bureaucracy for its own sake.

## Version Control and Release Discipline

This repository uses Semantic Versioning: `MAJOR.MINOR.PATCH`.

Current version source:

```text
VERSION
```

Notable change history:

```text
CHANGELOG.md
```

Agent rules:

1. Every substantive repository change must remain traceable through Issue → branch → commits → Pull Request.
2. Use meaningful commit messages that describe the logical change.
3. Do not treat a version number as a commit counter.
4. Do not silently bump `VERSION`.
5. Record notable unreleased changes under `CHANGELOG.md` → `[Unreleased]`.
6. Propose SemVer impact when a change is release-relevant:
   - PATCH = backwards-compatible fix;
   - MINOR = backwards-compatible new capability;
   - MAJOR = incompatible/breaking change after `1.0.0`.
7. `0.y.z` means active initial development; `1.0.0` is the first deliberately stable public contract.
8. Version components increase numerically. There is no `.99` threshold: `1.9.0 → 1.10.0` is valid.
9. Once a version is formally released, do not modify that released snapshot; make a new version.
10. When publishing a formal release, keep `VERSION`, `CHANGELOG.md`, the Git tag (`vX.Y.Z`) and GitHub Release aligned.
11. Changelog entries summarise notable changes; they do not duplicate every commit.

## Operating Rules

1. Preserve useful course and student history.
2. Baselines are immutable historical evidence. Never rewrite them to reflect later improvement.
3. Progress records may be updated as new evidence is produced.
4. Distinguish student answers, assessment evidence and coach judgement.
5. Record only what the student actually demonstrated; exposure does not equal mastery.
6. Prefer the smallest safe change.
7. Keep lessons concise, practical and operator-focused.
8. Do not turn the course into generic developer training.
9. Prioritise GitHub platform operation, AI-agent workflows, governance, traceability and automation.
10. Use this repository itself for hands-on learning whenever practical.
11. Each substantive change should have clear context and a meaningful commit message.
12. Do not commit credentials, API keys, secrets or sensitive company information.
13. Do not build duplicate infrastructure before checking whether GitHub already provides the capability.

## Repository Architecture

```text
00-start-here/
01-github-mental-model/
02-issues/
03-pull-requests/
04-projects/
05-actions-automation/
06-releases-versioning/
07-knowledge-architecture/
08-security-governance/
09-ai-agents-github/
10-github-folderdesk-architecture/

students/
question-bank/
templates/
docs/
exercises/
certification/
resources/
skills/
sops/
```

## Student Model

Each learner should have:

```text
students/<student-id>/
├── profile.md
├── baseline-YYYY-MM-DD.md
├── progress.md
└── assessments/
```

Student answers belong under their own `assessments/` folder. Reusable questions and answer guides belong under `question-bank/`.

## Lesson Standard

Each substantial module should progressively include:

1. concept;
2. why it matters to an operator;
3. practical example;
4. hands-on GitHub task;
5. checkpoint/test;
6. evidence required for mastery;
7. relevant official GitHub references.

## Course Philosophy

Teach by doing. Avoid unnecessary theory. Introduce terminology when operationally relevant.

The course should become shareable with founders and other AI-assisted operators. Personalisation belongs in student folders; reusable curriculum belongs in shared course folders.

## Governing Principle

> Every meaningful change should have context, history and evidence.

## End State

A graduate should be able to confidently design, operate, audit and improve a professional GitHub-based environment; use GitHub safely with AI agents; and judge what belongs in GitHub, what belongs elsewhere, and what should integrate rather than be duplicated.
