# About This Learning System

The repository is simultaneously:

1. a practical GitHub course;
2. a live GitHub operating environment;
3. a reusable AI-coaching system;
4. a public learning case study;
5. a governed evidence system that measures learner progress against an immutable starting point.

---

## Learner Model

Each student gets durable state:

```text
students/<student-id>/
├── profile.md
├── baseline-YYYY-MM-DD.md
├── progress.md
└── assessments/
```

### Baseline

Historical starting evidence. Never rewrite it later to make the learner appear more knowledgeable.

### Progress

Mutable current assessment. Update it when evidence materially changes the learner’s demonstrated state or next focus.

### Assessments

Dated checkpoints preserving misconceptions, corrections, partial recall, breakthroughs and demonstrated evidence.

---

## AI Coach Startup Model

```text
AGENTS.md
→ student profile
→ immutable baseline
→ current progress
→ current module
→ relevant verified knowledge / Power User Skill
→ continue from demonstrated ability
```

For a fresh generic ChatGPT/GitHub-connector conversation, explicitly bootstrap:

```text
Use tbhrc/github-course. Before doing anything else,
read root AGENTS.md and follow its startup protocol
and repository workflow.
```

Do not assume every chat surface automatically loads repository agent instructions.

---

## Evidence Model

The course deliberately records:

```text
original understanding
→ misconception / gap
→ correction
→ demonstrated understanding
→ partial recall
→ remaining mastery gap
```

It also distinguishes:

```text
concept understood
performed with help
performed unaided
professional diagnosis / architecture judgement
```

Agent/coach execution is not silently credited as learner mastery.

---

## Learn-by-Operating Loop

```text
operate
→ notice
→ articulate
→ correct / refine
→ apply architecturally
→ preserve evidence
→ update current progress
→ teach the next learner
```

This is why the repository itself is used as the training environment.

---

## Knowledge Authority

Material current GitHub facts follow:

```text
current official/live evidence
→ knowledge-base/
→ github-power-user Skill
→ course modules/exercises
→ model memory / old chat
```

The course should not become dependent on one AI model’s memory for fast-changing platform behaviour.

---

## Why the Wiki Exists

The main repository is strong for governance and source truth but not always the fastest human reading surface.

The Wiki provides:

- Home dashboard;
- comprehensive Handbook;
- practical Manual;
- current module/material navigation;
- student dashboard;
- epiphany history;
- exercise/SOP/knowledge navigation;
- links to canonical repository evidence.

The Wiki is a **reader-facing view**, not an independent truth store.

---

## Governed Wiki Publishing

Wiki source lives under:

```text
wiki/
```

Approved changes follow:

```text
Issue
→ branch
→ edit wiki/*.md
→ Pull Request
→ merge
→ Publish Wiki Action
→ .wiki.git
→ live Wiki
```

The live Wiki is therefore a published view of governed source pages rather than an unmanaged parallel documentation system.

---

## Public Pages Role

GitHub Pages is the public front door:

`https://tbhrc.github.io/github-course/`

It should route users into maintained live/canonical surfaces rather than duplicate fast-changing benchmark/student data unnecessarily.

Course model:

```text
main repository = canonical truth / evidence
Wiki            = reader handbook / dashboard
Pages           = public navigation / front door
```

---

## Documentation Integrity

A major live failure exposed this requirement:

```text
backend/current canonical work
+ stale reader-facing Wiki/public summary
=
learning-system integrity failure
```

The course now includes a completion gate for material changes.

If a PR changes:

- curriculum/module state;
- student current state;
- AI benchmark/integration state;
- knowledge authority;
- reader navigation;

then the affected Wiki/Pages/student summaries must be reviewed in the same PR.

[Open Documentation Integrity SOP →](https://github.com/tbhrc/github-course/blob/main/sops/course-documentation-integrity.md)

---

## Two Things Are Always Tracked Separately

### Course capability/material state

What the repository/course has built and proven.

### Learner mastery state

What the learner personally understands, can perform and can diagnose.

Example:

```text
course has successful Codex / Claude / Copilot / Jules benchmark PRs
≠
David personally mastered every executor setup step
```

Likewise:

```text
Projects module exists
≠
David has mastered Projects
```

The current hands-on Projects exercise exists specifically to close that gap with real evidence.

---

## Reusable AI-Coaching Architecture

A future learner should be able to fork/adapt the system by keeping shared material separate from learner-specific state:

```text
shared
├── numbered modules
├── knowledge-base/
├── exercises/
├── sops/
├── skills/
└── wiki/ reader guidance

student-specific
└── students/<student-id>/
    ├── profile
    ├── baseline
    ├── progress
    └── assessments
```

This allows the curriculum to improve without rewriting each learner’s history.

---

## Current Student #1 Focus

David’s current hands-on learning focus is **GitHub Projects**.

[Open David Dashboard →](Student-Dashboard-David)

[Open Projects module →](https://github.com/tbhrc/github-course/tree/main/04-projects)

---

## Navigation

[Course Handbook](Course-Handbook) · [Course Manual](Course-Manual) · [Student Dashboard — David](Student-Dashboard-David) · [Course Modules](Course-Modules) · [Home](Home)
