# 06 — Releases & Professional Versioning

## Objective

Understand the difference between **version control** and **version numbers**, then operate a professional release model using commits, tags, Semantic Versioning, changelogs and GitHub Releases.

## The Most Important Distinction

These are related, but they are not the same thing:

```text
VERSION CONTROL
Git records every meaningful change
        ↓
commit history
branches
Pull Requests
diffs

RELEASE VERSIONING
we deliberately name important stable checkpoints
        ↓
tag
version number
changelog
GitHub Release
```

A repository can have excellent Git version control and still have poor release/version-number discipline.

That was the starting condition of this course repository: commits and Pull Request history existed before formal release/version discipline was introduced.

## Professional Version Stack

### 1. Commit

A commit records a logical change in Git history.

Example:

```text
chore(version): establish 0.1.0 development baseline (#3)
```

A project may have hundreds or thousands of commits between releases.

### 2. Branch

A branch isolates ongoing work. It moves as new commits are added.

Example:

```text
issue-119-release-v0.3.0
```

### 3. Tag

A Git tag gives a human-readable name to one exact point in Git history.

Example:

```text
v0.3.0
```

Think of a tag as:

> "This exact commit is Version 0.3.0."

### 4. Semantic Version

This repository uses Semantic Versioning:

```text
MAJOR.MINOR.PATCH
  1  .  4  .  2
```

Meaning after a stable `1.0.0` release:

- **MAJOR** — incompatible/breaking change;
- **MINOR** — new backwards-compatible capability;
- **PATCH** — backwards-compatible fix.

### 5. `CHANGELOG.md`

The changelog is a curated human-readable summary of **notable** changes.

It is not a duplicate of Git history and should not list every commit.

New notable work goes under:

```text
## [Unreleased]
```

When a release is made, those items are moved into the released version section.

### 6. GitHub Release

A GitHub Release is built around a Git tag and adds a richer release page: release notes, downloadable source archives and optional release artefacts.

The Git tag identifies the exact snapshot. The GitHub Release explains and packages that snapshot.

## David's Starting Version Model

The initial intuitive model was approximately:

```text
0.1
0.2
...
0.99
1.0
1.1
...
1.99
2.0
```

That is understandable, but it is **not Semantic Versioning**.

There is no requirement to reach `.99` before advancing.

Version components increase numerically according to meaning. For example:

```text
1.8.0
1.9.0
1.10.0
1.11.0
```

`1.10.0` is a later minor version than `1.9.0`.

The numbers are not decimal fractions. They are three independent integers.

## Initial Development: `0.y.z`

Semantic Versioning reserves major version zero for initial development:

```text
0.1.0
0.2.0
0.3.0
...
```

During `0.y.z`, the public contract is not yet considered stable.

For this course repository:

```text
0.1.0 = first documented development baseline
0.2.0 = first formally published course release
0.3.0 = Project lifecycle + AI operations milestone
```

We do **not** need to reach `0.99.0` before `1.0.0`.

When the course is deliberately judged stable enough to make a clear public promise about its structure and behaviour, it can become:

```text
1.0.0
```

## Practical Examples for This Repository

| Change | Example next version | Why |
| --- | --- | --- |
| Fix a typo or broken link in `0.3.0` | `0.3.1` | Patch-level correction |
| Add another substantial course capability | `0.4.0` | New development capability |
| Reach first deliberately stable public course | `1.0.0` | Stable public contract |
| Fix a broken exercise after `1.0.0` | `1.0.1` | Backwards-compatible fix |
| Add a new optional module after `1.0.0` | `1.1.0` | Backwards-compatible capability |
| Redesign the public course/student contract incompatibly | `2.0.0` | Breaking change |

## Pre-release Versions

When useful, Semantic Versioning supports pre-release identifiers:

```text
1.0.0-alpha.1
1.0.0-beta.1
1.0.0-rc.1
1.0.0
```

Use these only when they add real value. Do not create complexity for its own sake.

## The Repository Standard

The current project version is stored in root:

```text
VERSION
```

Notable changes are recorded in:

```text
CHANGELOG.md
```

The live release flow is:

```text
release Issue
→ issue-linked branch
→ prepare CHANGELOG + VERSION
→ Pull Request
→ review / checks
→ merge to main
→ Publish Release Action
→ tag vX.Y.Z + GitHub Release
→ verify VERSION / changelog / tag / Release alignment
→ close release Issue
```

This ordering matters. A merged release PR is **not yet proof that the GitHub Release published successfully**. The post-merge Action must be verified before the release Issue is considered complete.

A version should **not** be bumped for every commit.

A commit is a change record. A release version is a named checkpoint.

## Automated Release Publisher

The repository contains:

```text
.github/workflows/publish-release.yml
```

A deliberate `VERSION` change merged to `main` triggers a deterministic GitHub Action that:

1. reads and validates `VERSION`;
2. derives tag `vX.Y.Z`;
3. exits safely if that Release already exists;
4. creates the Git tag at the merged commit;
5. creates the matching GitHub Release with generated notes.

The workflow uses repository `GITHUB_TOKEN` with `contents: write`. No separate release PAT is required for this route.

## Agent Rule

AI agents must never silently invent or increment a version number.

They should:

1. preserve Git history through meaningful commits;
2. link substantive work to an Issue;
3. record notable unreleased changes in `CHANGELOG.md`;
4. propose the appropriate SemVer impact when relevant;
5. bump `VERSION` only as part of a deliberate release/version decision;
6. prepare `VERSION` and the changelog before the release PR merges;
7. verify the post-merge tag and GitHub Release before closing the release Issue.

## Current Repository Status

Read the current version from root `VERSION` and current publication state from GitHub Releases rather than maintaining a second independent version number here.

Verified release architecture:

```text
VERSION change on main
→ Publish Release Action
→ matching Git tag
→ matching GitHub Release
```

`v0.2.0` proved this automation in production. Release Issue #119 applies the same deterministic path to `v0.3.0`.

## Operator Checkpoint

You should now be able to explain, without looking:

1. Why a commit is not the same as a release.
2. What a Git tag does.
3. Why `1.10.0` follows `1.9.0` without going through `1.99.0`.
4. The difference between MAJOR, MINOR and PATCH.
5. Why `0.y.z` is appropriate for an early evolving project.
6. What belongs in a changelog versus commit history.
7. Why the release Issue should stay open until the post-merge publisher is verified.

## Evidence of Mastery

Mastery requires the learner to correctly choose the next version for realistic change scenarios and personally participate in a real tagged GitHub Release workflow.

## Official References

- Semantic Versioning 2.0.0: https://semver.org/
- GitHub Releases: https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases
- GitHub release management: https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository
- Keep a Changelog: https://keepachangelog.com/
