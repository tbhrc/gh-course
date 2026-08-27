# 01 — GitHub Mental Model

## Objective

Understand GitHub as a **change-management operating platform built around repositories**, not merely cloud storage for Git.

## The Stack

```text
Organisation
  ↓
Repository
  ↓
Issue — why the work exists
  ↓
Branch — where the change is isolated
  ↓
Commits — logical history of what changed
  ↓
Pull Request — proposed change + review surface
  ↓
Checks — automated evidence
  ↓
Merge — accepted change enters the target branch
  ↓
Release — named/versioned delivery point
  ↓
Deployment — software reaches an environment
```

Around this flow sit Projects, permissions, rulesets, Actions, security, documentation and AI agents.

## Core Distinctions

| Term | Operator meaning |
| --- | --- |
| Git | Distributed version-control system |
| Repository | Files plus Git history and related metadata |
| GitHub | Hosted collaboration, governance, automation and work platform around Git repositories |
| Commit | Record one logical change in Git history |
| Push | Send local commits to a remote |
| Pull | Bring remote changes into the local working repository |
| Branch | Independent line of development |
| Pull Request | Proposal to review and merge one branch into another |
| Issue | Durable record of work, context, decision or problem |

## The Three Questions Every Change Should Answer

A professional GitHub change should make it easy to answer:

1. **Why did this work happen?** — Issue
2. **What exactly changed?** — commits + diff + Pull Request
3. **What happened to the change?** — checks + review + merge + release/deployment history

## The Course Is the Lab

Issue #1 in this repository is the first live example:

```text
Issue #1
  ↓
branch: issue-1-next-course-tranche
  ↓
course files changed in commits
  ↓
Pull Request
  ↓
merge
  ↓
Issue #1 closes
```

This is intentionally more valuable than reading a diagram because the repository itself becomes evidence of the workflow.

## Operator Principle #1

> **Every meaningful change should have context, history and evidence.**

## Operator Principle #2

> **Create the work record before doing the work.**

This means Issue first for substantive repository changes.

## Anti-patterns

Avoid:

```text
idea → agent edits main → done
```

Prefer:

```text
idea/problem
→ Issue
→ branch
→ commits
→ Pull Request
→ checks/review
→ merge
→ close
```

## Checkpoint

A learner should be able to explain without notes:

1. Why a commit and a push are different.
2. Why `git pull` and a Pull Request are unrelated operations despite the similar wording.
3. Why a branch is useful even for a solo founder using AI agents.
4. Why an Issue should exist before meaningful repository work.
5. Where automated checks sit in the lifecycle.

## Evidence for Mastery

Module 01 is not complete merely after reading it. Evidence should include:

- correctly explaining the full lifecycle;
- identifying Issue, branch, commits and PR in a real repository change;
- distinguishing Git operations from GitHub platform objects.

## Official References

- GitHub Issues: https://docs.github.com/en/issues
- Pull requests: https://docs.github.com/en/pull-requests
- Git basics: https://docs.github.com/en/get-started/using-git/about-git
