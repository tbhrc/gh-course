# Learning Note — Documentation Integrity and Reader-Facing Source of Truth

**Student:** David  
**Date:** 27 August 2026  
**Issue:** #71

## Trigger

David used the public GitHub Pages course site and followed links into the reader-facing course surfaces.

He discovered that the backend repository had accumulated substantial current evidence, but several public/Wiki surfaces remained shallow or stale.

Examples included:

- the public AI benchmark originally linking to a stale Issue body instead of the maintained canonical benchmark file;
- Course Handbook and Course Manual remaining primitive summaries despite extensive backend knowledge;
- Course Modules still showing Projects/AI topics as pending after material had been built;
- David’s progress/dashboard still describing pre-success 403 agent states;
- canonical modules for Pull Requests, Actions, Security and GitHub × FolderDesk still being placeholders.

## Key system lesson

```text
backend work complete
≠
reader experience current
```

A public interface can be technically live and still misrepresent the state of the system.

This extends the earlier Pages lesson:

```text
green deployment
≠
correct entry page
≠
good user experience
```

into a documentation-integrity lesson:

```text
current canonical evidence
+ stale downstream summary
=
source-of-truth / trust failure
```

## Correct authority model

The course should not maintain independent copies of volatile truth.

```text
canonical repository truth
├── knowledge-base/          current verified GitHub knowledge
├── numbered modules         reusable curriculum
├── students/                learner evidence/current progress
├── sops/                    practised operating procedures
└── benchmark framework      current executor results

        ↓ summarise / link

GitHub Wiki                 reader handbook/dashboard

        ↓ route

GitHub Pages                public front door
```

Issues and PRs remain vital evidence/history, but an Issue body should not be treated as the live dashboard when a maintained canonical file exists.

## David’s demonstrated judgement

David identified the problem by **using the public course as an actual user**, not by reviewing backend implementation status.

He correctly challenged the mismatch between statements that the course was being comprehensively updated and what a real student could actually see.

This is evidence of a strong operational habit:

> Validate the system from the consumer surface, not only from the implementation surface.

## Governance correction

The course now requires a documentation-integrity review whenever a change materially affects:

- module/curriculum state;
- student current progress;
- benchmark/current capability status;
- navigation or public reader journey;
- a canonical source referenced by Wiki/Pages.

The relevant downstream reader surfaces must be updated in the same governed PR or explicitly documented as not requiring a change.

## Evidence level

**Demonstrated system-level insight.**

David found the integrity failure independently and correctly requested a broad source-to-reader sweep rather than another single-page patch.

## Remaining mastery evidence

David should be able to explain:

1. canonical truth vs reader-facing summary;
2. why Issues/PRs are evidence/history rather than ideal live dashboards;
3. when duplication is acceptable and when linking is safer;
4. why deployment success does not prove documentation freshness;
5. how a completion checklist can prevent public/backend drift.

## Reusable course principle

> **One source of truth; many useful views. Every material view must remain traceable to the truth it represents.**
