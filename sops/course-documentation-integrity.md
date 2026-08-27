# SOP — Course Documentation Integrity

## Purpose

Prevent the GitHub Professional Operator course from developing a current backend and a stale reader-facing frontend.

## Governing Rule

> **One source of truth; many useful views. Volatile factual views are generated. Stable narrative views are governed.**

## Architecture

### Canonical layer

```text
knowledge-base/                         verified GitHub knowledge
numbered modules                       reusable curriculum
students/<id>/progress.md               current learner state
students/<id>/assessments/              dated learner evidence
exercises/ + sops/                      reusable operation
knowledge-base/executor-benchmark...    current executor comparison
```

### Reader layer

Two different rules apply.

#### A. Volatile factual state — deterministic projection

Examples:

- current learner focus/progress;
- current executor timing/scoring/capability state.

```text
canonical file
→ deterministic GitHub Action
→ generated Wiki view
```

Current course projections:

```text
students/david/progress.md
→ Student-Dashboard-David

knowledge-base/executor-benchmark-framework.md
→ AI-Executor-Benchmark
```

Do **not** manually maintain separate current-state copies for these pages.

#### B. Stable narrative — governed authoring

Examples:

- Course Handbook;
- Course Manual;
- Course Modules material map;
- conceptual lessons;
- SOPs;
- stable architecture explanations.

These require judgement/synthesis and remain authored through:

```text
Issue
→ branch
→ PR
→ review
→ merge
```

They should link to generated/canonical live state instead of embedding duplicate volatile facts.

### Public Pages layer

```text
GitHub Pages
= public front door
→ stable navigation
→ generated live Wiki views
→ canonical repository evidence
```

Pages should avoid maintaining another independent copy of learner/benchmark current state.

## Issues and PRs

Issues and Pull Requests are durable work/evidence/history.

Do not use a static Issue body as the live authority when a maintained canonical file exists.

## Automation Contract

`.github/workflows/publish-wiki.yml` must trigger when either:

- stable Wiki source changes; or
- canonical live-state files used by generated Wiki pages change.

The workflow must generate the volatile pages from canonical files before publishing to `.wiki.git`.

Therefore:

```text
agent updates canonical progress/benchmark
→ merge
→ Publish Wiki Action
→ live generated page changes automatically
```

The agent does **not** need a second manual Wiki edit for the same facts.

## Required Review Checklist

Before merge, ask:

### Canonical layer

- [ ] Is the correct canonical file updated?
- [ ] Is factual/current GitHub knowledge verified where required?
- [ ] Is the immutable baseline preserved?
- [ ] Is current student progress updated if evidence materially changed?
- [ ] Is a dated assessment note needed?
- [ ] Is reusable learning placed in a shared module/knowledge/SOP rather than only student evidence?

### Generated live-state layer

- [ ] If student current state changed, is `students/<id>/progress.md` correct?
- [ ] If executor state changed, is the canonical benchmark correct?
- [ ] Does the publisher trigger on those canonical paths?
- [ ] Are generated reader pages free from independent hand-maintained current-state copies?

### Stable narrative layer

- [ ] Does the curriculum/material map need updating?
- [ ] Do Handbook/Manual/Materials need a new concept, procedure or link?
- [ ] Does a stable architecture page need correction?
- [ ] Are links pointed to generated/canonical live sources rather than stale Issue bodies or copied matrices?

### Public Pages layer

- [ ] Does `index.html` route to the right generated/canonical surfaces?
- [ ] Does it avoid hard-coded current learner/benchmark facts?
- [ ] After merge, did Pages deploy successfully if the page changed?
- [ ] Was the real user journey checked, not only deployment status?

### Wiki publication

- [ ] Did Publish Wiki run when either stable Wiki source **or canonical generated-state source** changed?
- [ ] Did it complete successfully?
- [ ] Do generated pages identify their canonical source?

## Non-Rule

Do **not** auto-generate every document.

Narrative teaching, judgement and architecture synthesis should remain governed authored content. Automation should own repeated factual projection, not replace useful human/agent reasoning.

Use KISSS:

```text
volatile fact?
→ canonical source + deterministic projection

stable narrative?
→ governed authored page
```

## Staleness Smells

Treat these as warnings:

- a Wiki page contains a manually copied leaderboard;
- current learner focus appears independently in several source files;
- public site links to an Issue body as a current matrix;
- a generated page is manually edited instead of its source;
- Handbook/manual are only link lists while detailed reusable knowledge exists elsewhere;
- a static version/status label disagrees with the canonical source;
- an old failure is described as current capability after later successful evidence;
- a new major module/surface is absent from stable navigation.

## Verification Order

When a mismatch is found:

1. identify the canonical source;
2. verify current repository evidence;
3. correct canonical state first;
4. determine whether the destination should be **generated** or **authored**;
5. fix the projection/build rule for volatile data rather than patching duplicate copies;
6. update stable narrative/navigation only where genuinely needed;
7. merge through normal governance;
8. verify Wiki/Pages publication;
9. record reusable learning evidence if the failure revealed a system lesson.

## Reusable Pattern for Other Projects

This is the recommended pattern for projects such as a public directory/community site:

```text
canonical structured/content source
→ GitHub workflow/build
→ public frontend
```

Examples:

- directory records → directory pages;
- FAQ Markdown/data → public FAQ;
- community resources → public resources index;
- current operational status → generated dashboard.

The frontend should consume/project canonical source, not become another manual database.

## Course Integrity Principle

```text
canonical truth
+ deterministic projection for volatile state
+ governed narrative
+ verified deployment/user journey
=
course integrity
```

A green build alone is not enough.
