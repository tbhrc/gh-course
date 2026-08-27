# SOP — Repository Change Workflow

## Purpose

Ensure every substantive repository change has durable context, isolated implementation, review evidence and traceable closure.

## Governing Rule

> **No substantive repository change without a governing GitHub Issue first.**

## Standard Flow

```text
Issue
→ branch
→ commits
→ Pull Request
→ review/checks
→ merge
→ Issue closes
```

## Procedure

### 1. Create or identify the Issue

The Issue must include:

- objective;
- scope;
- acceptance criteria.

Add assignee, labels, milestone or Project only when useful.

### 2. Create the branch

Name it so the Issue relationship is obvious.

Example:

```text
issue-27-add-release-lesson
```

### 3. Make changes on the branch

Do not make substantive course changes directly on `main`.

Use meaningful commits representing logical changes.

### 4. Open the Pull Request

The PR must:

- summarise the implementation;
- link the governing Issue;
- include `Closes #<issue>` when merge will fully satisfy the Issue;
- identify any remaining risks or incomplete work.

### 5. Verify

Before merge confirm:

- acceptance criteria are satisfied;
- changed files are expected;
- diff is understood;
- checks have passed where checks exist;
- no credentials or sensitive information were introduced.

### 6. Merge

Merge the approved PR into the target branch.

### 7. Verify closure

Confirm:

- change is on the target branch;
- PR is merged;
- governing Issue is closed when complete;
- Issue and PR provide enough history for another human or AI agent to understand why the change happened.

## KISSS Exception

Tiny typo-only or formatting corrections may be included in an already-open relevant Issue. Do not create process for process's sake.

If no relevant Issue exists and the change is substantive enough to matter later, create one.

## AI Agent Rule

An AI agent entering this repository must inspect the governing Issue before implementation. Chat context alone is not sufficient durable authority for repository work.

## First Live Example

Issue #1 established this workflow and was used to develop Module 01, Module 02, this SOP and the first reusable Issue exercise.
