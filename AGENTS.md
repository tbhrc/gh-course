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
7. Use the Wiki as the reader-facing course dashboard when useful.
8. Continue from demonstrated knowledge; do not restart generic GitHub training.

For David, begin with:

- `students/david/profile.md`
- `students/david/baseline-2026-08-27.md`
- `students/david/progress.md`
- Wiki page `Student-Dashboard-David` for the reader-facing summary.

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
9. Before merge, apply the documentation-integrity check in `sops/course-documentation-integrity.md` when curriculum, learner state, benchmark state, reader navigation or public surfaces materially change.

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

## Student Learning Evidence

AI coaches must preserve the student's learning path, not only the final correct answer.

For meaningful learning moments, distinguish and record:

1. **Original understanding** — what the student actually believed or knew before correction.
2. **Misconception or gap** — what was inaccurate, missing or confused.
3. **Correction learned** — the new concept introduced.
4. **Demonstrated understanding** — what the student can now explain or apply.
5. **Partial recall** — concepts understood but terminology or details not yet automatic.
6. **Remaining mastery gap** — what still requires unaided practical evidence.

Rules:

- Never rewrite an immutable baseline to make the student look more knowledgeable later.
- Do not erase mistakes once corrected; they are evidence of progress.
- Do not equate exposure with mastery.
- Update `students/<student-id>/progress.md` when new evidence materially changes the student's assessed state.
- Use dated files under `students/<student-id>/assessments/` for significant checkpoints, misconceptions, tests and learning notes.
- Student-specific learning evidence stays in the student folder; reusable teaching material belongs in shared course folders.
- Current learner facts should live in the canonical progress file. Do not maintain a separate hand-written current-state copy in the Wiki dashboard.

## Knowledge Base and Freshness

The repository has a durable knowledge authority layer under:

```text
knowledge-base/
```

For material GitHub teaching, architecture or operational claims, use this authority order:

```text
current official/live evidence
→ knowledge-base/ verified notes
→ skills/github-power-user/
→ course modules
→ AI model memory / older chat
```

Rules:

1. Read `knowledge-base/README.md` before substantial course research or knowledge development.
2. Use `skills/github-power-user/SKILL.md` as the strategic accelerator and feature map, not as proof that every volatile feature is still unchanged.
3. Do not teach an assumption as a GitHub fact.
4. When behaviour is current, volatile, plan-dependent, preview, safety-relevant or uncertain, verify an authoritative source—prefer official GitHub Docs or live GitHub evidence.
5. When a verified finding fills a reusable gap, add/update a concise knowledge note through the normal Issue → branch → PR workflow.
6. Record verification dates and primary sources in substantial knowledge notes.
7. Keep student-specific misunderstandings under `students/`; keep reusable platform knowledge under `knowledge-base/`.
8. Avoid maintaining two independent copies of the same truth.
9. Fast-changing executor timing/scoring/capability state belongs in `knowledge-base/executor-benchmark-framework.md`; other pages should link to or generate from it rather than copy a live matrix.

## Integration and Permission Evidence

GitHub Apps, AI integrations, Actions permissions and deployment integrations must be treated as **permissioned capabilities**, not assumed access.

Use this evidence model:

```text
installed / authorised
≠
permission granted for every operation
≠
operation successfully demonstrated
```

Rules:

1. Do not claim an integration can read, write, review, run Actions or deploy merely because it appears under Settings → Integrations.
2. Test the exact operation required and record the result.
3. Distinguish repository/organisation Actions source policy from individual workflow `GITHUB_TOKEN` permissions.
4. `Allow all actions and reusable workflows` does **not** mean unlimited workflow token access.
5. Prefer least-privilege permissions and repository-specific access where practical.
6. Treat permission-change requests as security-relevant; review what changes before accepting.
7. Do not treat one AI integration's proven capability as proof that another integration has the same capability.
8. Use `knowledge-base/pages-actions-integrations-control-plane.md` for the current course model.

## Reader Surfaces and Generated Live State

The course uses three distinct layers:

```text
main repository
= canonical truth + governance

Wiki
= reader handbook + generated live views

GitHub Pages
= public front door
```

Stable Wiki narrative source lives under:

```text
wiki/
```

The live Wiki is published through:

```text
.github/workflows/publish-wiki.yml
```

### Volatile factual state

Do not maintain current learner or executor state manually in several places.

Current projection contracts:

```text
students/david/progress.md
= canonical learner state
        ↓ Publish Wiki Action
Student-Dashboard-David
= generated live Wiki view

knowledge-base/executor-benchmark-framework.md
= canonical benchmark truth
        ↓ Publish Wiki Action
AI-Executor-Benchmark
= generated live Wiki view
```

The repository files `wiki/Student-Dashboard-David.md` and `wiki/AI-Executor-Benchmark.md` are **projection-contract notices**, not current-state sources. Do not put a copied live dashboard/matrix back into those files.

### Stable narrative

Pages such as Handbook, Manual, Course Modules, Home, SOPs and stable architecture explanations remain governed authored content because they require judgement and teaching synthesis.

They should avoid embedding volatile current facts when a generated/canonical live view exists.

### Publication model

```text
canonical progress / benchmark + stable wiki/*.md
        ↓
Issue → branch → PR → merge
        ↓
Publish Wiki Action
        ↓
generate volatile pages + copy stable pages
        ↓
repository.wiki.git
        ↓
live Wiki
```

Rules:

1. Use `wiki/Home.md` as the main human navigation dashboard.
2. Keep the Wiki useful: handbook, manual, course materials, generated student/benchmark pages, epiphanies, exercises, SOP navigation and glossary should remain easy to reach.
3. Do not duplicate long canonical facts unnecessarily; link from Wiki pages to `knowledge-base/`, `students/`, modules, `sops/` and Skills.
4. When learner state changes, update `students/<student-id>/progress.md`; the generated Wiki dashboard should update automatically after merge.
5. When executor benchmark state changes, update the canonical benchmark; the generated Wiki benchmark should update automatically after merge.
6. When a material stable course surface is added or teaching architecture changes, update the relevant stable Wiki navigation/narrative in the same governed PR.
7. When a durable epiphany changes the course's reusable teaching value, add it to the appropriate canonical student/knowledge record and the stable Wiki breakthrough page when useful.
8. Direct live-Wiki UI edits are acceptable only for hands-on learning/urgent correction; reconcile durable authored changes back into `wiki/`. Do not manually edit generated live pages as a permanent fix.
9. Do not claim automated Wiki publishing is healthy unless the relevant GitHub Actions run succeeded.
10. Read `knowledge-base/wiki-publishing-architecture.md` and `sops/course-documentation-integrity.md` before changing the publishing/source-of-truth mechanism.
11. GitHub Pages should route users to generated/canonical current-state surfaces instead of carrying another independent current-state copy.

## Course Development Accelerator

For substantial GitHub course development, read:

```text
skills/github-power-user/SKILL.md
```

Then load only the relevant reference:

- `references/power-guide.md` for feature selection and professional patterns;
- `references/cheat-sheet.md` for commands, search and fast decisions;
- `references/agentic-github.md` for AI-agent-first repository operation.

Rules:

1. Use the Skill to accelerate course design; do not duplicate its entire contents into every module.
2. Convert strategic guidance into practical lessons, exercises and mastery evidence appropriate to the student's level.
3. Prefer live operation in this repository over passive explanation where safe.
4. Keep imported Skill provenance visible.
5. The course copy is portable teaching material; FolderDesk-specific policy remains external unless explicitly included as a case study.
6. Search GitHub-native capability before proposing custom infrastructure.
7. Keep volatile executor status out of the Skill; route current results to the canonical executor benchmark.

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
14. For volatile factual reader state, update the canonical source and deterministic projection rather than hand-maintaining duplicate frontend copies.

## Repository Architecture

```text
.github/
knowledge-base/
wiki/
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

The course should become shareable with founders and other AI-assisted operators. Personalisation belongs in student folders; reusable curriculum belongs in shared course folders; the Wiki makes the system easy for humans to navigate.

## Governing Principle

> Every meaningful change should have context, history and evidence.

## End State

A graduate should be able to confidently design, operate, audit and improve a professional GitHub-based environment; use GitHub safely with AI agents; and judge what belongs in GitHub, what belongs elsewhere, and what should integrate rather than be duplicated.
