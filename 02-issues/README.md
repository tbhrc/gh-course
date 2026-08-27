# 02 — Issues: GitHub's Work Engine

## Objective

Use GitHub Issues as the durable work record for bugs, tasks, features, investigations, decisions and improvement work.

An Issue answers the question:

> **Why does this work exist, and what must be true before it is complete?**

## What an Issue Can Hold

A useful Issue can contain:

- title;
- problem or objective;
- context;
- acceptance criteria;
- assignee;
- labels;
- issue type;
- milestone;
- project membership;
- sub-issues;
- dependencies;
- comments and decisions;
- links to branches, commits and Pull Requests.

GitHub's default organisation issue types include **Task, Bug and Feature**, and organisations can customise issue types.

## Core Metadata

### Assignee

Who owns the work.

For AI-first operation, the assignee may still be a human account while an AI agent performs the implementation. The durable Issue should make the execution context clear.

### Label

A flexible tag used for classification or workflow signalling.

Examples:

```text
bug
course-development
documentation
security
priority-high
blocked
```

Do not create dozens of labels before they are needed.

### Milestone

Groups Issues and Pull Requests toward a repository-level target such as:

```text
v1.0
Course MVP
September release
```

### Project

Adds the Issue into a broader planning/tracking system. Projects can use views and structured fields such as status, priority, iteration and dates.

### Sub-issue

Breaks larger work into smaller related Issues while preserving the hierarchy.

### Dependency

Records that one Issue is blocked by or blocks another.

## A Good Issue

Bad:

```text
Fix course
```

Better:

```markdown
## Objective
Expand Module 02 into a practical Issues lesson.

## Scope
- explain Issue anatomy
- add practical exercise
- link official references

## Acceptance Criteria
- lesson is understandable without chat context
- exercise can be completed in GitHub
- AI coach can identify evidence required for mastery
```

The goal is not bureaucracy. The goal is enough durable context that another human or AI agent can understand the work later.

## Issue Lifecycle

```text
capture
  ↓
classify
  ↓
prioritise
  ↓
assign
  ↓
branch / implementation
  ↓
Pull Request
  ↓
review + checks
  ↓
merge
  ↓
close
```

A Pull Request can automatically close an Issue when merged if it uses a supported closing keyword, for example:

```text
Closes #1
```

## Live Case Study — Issue #1

This repository's Issue #1 demonstrates:

- clear objective;
- scoped work;
- acceptance criteria;
- assignee;
- label;
- issue-linked branch;
- planned Pull Request closure.

The lesson itself was developed under that Issue rather than edited directly on `main`.

## KISSS Issue Rule

Create an Issue for **substantive work**, not for every keystroke.

Use an existing suitable Issue for tiny related corrections. The point is traceability, not administrative overhead.

## Hands-on Exercise

Complete `exercises/first-issue-workflow.md`.

The learner must create a real Issue, give it enough context for an AI agent to understand, classify it, and take it through the repository workflow.

## Checkpoint

Explain without notes:

1. Issue vs Pull Request.
2. Assignee vs label.
3. Milestone vs Project.
4. Why acceptance criteria matter for AI agents.
5. How `Closes #123` changes the lifecycle.
6. When to use sub-issues rather than one giant Issue.

## Evidence for Mastery

Module 02 is complete only when the learner can:

- create a useful Issue unaided;
- provide objective, scope and acceptance criteria;
- apply sensible metadata;
- connect the Issue to implementation work;
- close it with linked evidence.

## Official References

- About Issues: https://docs.github.com/en/issues/tracking-your-work-with-issues/learning-about-issues/about-issues
- Creating an Issue: https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/creating-an-issue
- Sub-issues: https://docs.github.com/en/issues/tracking-your-work-with-issues/using-issues/adding-sub-issues
- Closing Issues: https://docs.github.com/en/issues/tracking-your-work-with-issues/administering-issues/closing-an-issue
