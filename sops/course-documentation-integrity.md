# SOP — Course Documentation Integrity

## Purpose

Prevent the GitHub Professional Operator course from developing a current backend and a stale reader-facing frontend.

## Governing Rule

> **One source of truth; many useful views. Reader-facing views must remain traceable to the canonical source they represent.**

## Authority Model

```text
canonical repository truth
├── knowledge-base/                  verified GitHub knowledge
├── numbered modules                reusable curriculum
├── students/<id>/progress.md        current learner state
├── students/<id>/assessments/      dated evidence
├── exercises/ + sops/              reusable operation
└── benchmark framework             current executor comparison

        ↓ summarise / link

wiki/*.md                            reader handbook/dashboard

        ↓ route

index.html / GitHub Pages            public front door
```

Issues and Pull Requests are durable work/evidence/history. Do not use a static Issue body as the live authority when a maintained canonical file exists.

## Trigger

Run this integrity check whenever a PR materially changes any of the following:

- module/curriculum state;
- current student progress or next step;
- benchmark/integration capability status;
- public navigation;
- Wiki/Pages architecture;
- knowledge authority/source-of-truth location;
- a major learning breakthrough that changes the reader experience;
- a new substantial course surface.

## Required Review Checklist

Before merge, ask:

### Canonical layer

- [ ] Is the correct canonical file updated?
- [ ] Is factual/current GitHub knowledge verified where required?
- [ ] Is the immutable baseline preserved?
- [ ] Is student current progress updated if evidence materially changed?
- [ ] Is a dated assessment note needed?
- [ ] Is reusable learning placed in a shared module/knowledge/SOP rather than only student evidence?

### Reader layer

- [ ] Does `wiki/Home.md` still describe the current course/student focus correctly?
- [ ] Does `wiki/Course-Modules.md` reflect material module state?
- [ ] Does the student Wiki dashboard reflect current canonical progress?
- [ ] Do Handbook/Manual/Materials need a new link, lesson or correction?
- [ ] Does `wiki/AI-Control-Plane.md` need a current benchmark/control-plane correction?
- [ ] Are reader-facing links pointed to canonical maintained sources rather than stale Issue bodies?

### Public Pages layer

- [ ] Does `index.html` route to the right live/canonical surfaces?
- [ ] Is the public copy avoiding volatile duplicated state where a canonical link is safer?
- [ ] After merge, did Pages deploy successfully if `index.html` changed?
- [ ] Was the user journey checked conceptually, not only the deployment status?

### Wiki publication

- [ ] If `wiki/*.md` changed, did the Publish Wiki workflow succeed after merge?
- [ ] Is the governed `wiki/` source consistent with the live Wiki?

## Non-Rule

Do **not** update every page for every commit.

The purpose is to review whether a material reader-facing effect exists, not to create busywork.

Use KISSS:

```text
material state changed?
  no  → no reader update required
  yes → update the minimum affected reader surfaces in the same PR
```

## Staleness Smells

Treat these as warnings:

- Wiki says “pending” for a module that has substantive material/evidence.
- Student dashboard says an integration is blocked after later evidence proves it operational.
- Public site links to an Issue body as “current matrix” while a maintained canonical file exists.
- Handbook/manual are only link lists while detailed reusable knowledge exists elsewhere.
- A version number displayed in Wiki disagrees with the actual source file.
- “Current focus” differs between `progress.md`, Wiki Home and Student Dashboard.
- A workflow/agent status is described from an old failure after later successful runs.
- A new module or major feature exists but is absent from navigation.

## Verification Order

When a mismatch is found:

1. identify the canonical source;
2. verify current repository evidence;
3. correct canonical state first if it is wrong;
4. update reader summaries/links;
5. update public routing where needed;
6. merge through normal governance;
7. verify Wiki/Pages publication workflows;
8. record a learning note if the failure created reusable teaching value.

## Course Integrity Principle

```text
implementation health
+ documentation freshness
+ reader journey
+ evidence traceability
=
course integrity
```

A green build alone is not enough.
