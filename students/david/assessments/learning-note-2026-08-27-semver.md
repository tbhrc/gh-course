# Learning Note — Semantic Versioning

**Student:** David  
**Date:** 27 August 2026  
**Topic:** Semantic Versioning and release-version control  
**Related work:** Issue #3 and Issue #5

## Purpose

Preserve David's actual learning progression, including the original misconception, the correction, what is now understood, what was only partially recalled, and what still needs hands-on evidence.

## Original Mental Model

David initially treated version numbers like decimal counters:

```text
0.1 → 0.2 → ... → 0.99 → 1.0
1.1 → ... → 1.99 → 2.0
```

This showed a correct instinct that versions should move forward in an orderly way, but the numbering model was not Semantic Versioning.

## Correction Learned

David was introduced to Semantic Versioning:

```text
MAJOR.MINOR.PATCH
```

The components are independent integers that communicate the type of change, not decimal fractions and not a task counter.

### Meaning

- **MAJOR** — incompatible or breaking change after a stable `1.0.0` contract.
- **MINOR** — backwards-compatible new capability.
- **PATCH** — backwards-compatible fix or correction.

Example:

```text
1.8.0 → 1.9.0 → 1.10.0 → 1.11.0
```

There is no requirement to reach `.99` before the next major version.

## Demonstrated Progress

David explicitly stated that he has now learned:

- Semantic Versioning is not built into GitHub itself but is a professional companion standard that should be taught alongside Git/GitHub version control.
- version control and release versioning are both mandatory knowledge for people building serious work on GitHub;
- MAJOR and MINOR have distinct meanings;
- Git tags and GitHub labels are important, while still needing further operational practice;
- AI agents need explicit logging and version-control discipline rather than ad hoc changes.

## Partial Recall Evidence

During recall, David remembered:

```text
MAJOR.MINOR.?
```

but temporarily forgot the term **PATCH**.

This is useful evidence: the concept has been learned but terminology is not yet fully automatic.

## Current Knowledge State

| Capability | Current evidence |
| --- | --- |
| Understands versions are not decimal counters | Demonstrated |
| Understands `MAJOR.MINOR.PATCH` model | Demonstrated conceptually |
| Recalls MAJOR meaning | Emerging / demonstrated with support |
| Recalls MINOR meaning | Emerging / demonstrated with support |
| Recalls PATCH terminology unaided | Not yet automatic |
| Can choose correct SemVer bump in real scenarios | Not yet tested |
| Can create and verify a Git tag | Not yet demonstrated |
| Can publish and verify a GitHub Release | Not yet demonstrated |
| Understands tag vs label distinction | Introduced; needs practical confirmation |

## Remaining Mastery Test

David should later complete a live release exercise where he must, without being given the answer:

1. inspect a set of changes;
2. choose PATCH, MINOR or MAJOR appropriately;
3. explain why;
4. update the changelog;
5. update the version deliberately;
6. create the corresponding Git tag;
7. publish a GitHub Release;
8. verify that the version, changelog, tag and release all agree.

## Evidence Rule

This note records progress, not mastery. The original misconception remains valuable historical evidence and should not be erased when David later becomes fluent in Semantic Versioning.
