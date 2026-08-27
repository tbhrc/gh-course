# SOP — Repository Change Workflow

## Purpose

Ensure every substantive repository change has durable context, isolated implementation, review evidence, reader-surface integrity and traceable closure.

## Governing Rule

> **No substantive repository change without a governing GitHub Issue first.**

## Standard Flow

```text
Issue
→ branch
→ commits
→ Pull Request
→ review/checks
→ documentation-integrity check
→ merge
→ publication/deployment verification where relevant
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
- include `Closes #<issue>` only when merge will fully satisfy the Issue;
- identify any remaining risks or incomplete work.

Closing keywords are workflow commands. Use `Refs #<issue>` when the Issue must remain open after merge.

### 5. Verify implementation

Before merge confirm:

- acceptance criteria are satisfied;
- changed files are expected;
- diff is understood;
- checks have passed where checks exist;
- no credentials or sensitive information were introduced;
- agent/human provenance is understood where relevant.

### 6. Run the documentation-integrity gate

If the change materially affects any of these:

- module/curriculum state;
- student current progress;
- benchmark/integration capability status;
- knowledge authority;
- Wiki/Pages navigation;
- a major learning breakthrough;
- a substantial new course surface;

review the minimum affected downstream surfaces in the **same PR**.

Use:

[`course-documentation-integrity.md`](course-documentation-integrity.md)

Typical checks:

```text
canonical module/knowledge/student state
→ Wiki Home / Handbook / Manual / Modules / Student Dashboard as relevant
→ public Pages routing if relevant
```

Do not update every page mechanically. Update only reader surfaces whose meaning changed.

### 7. Merge

Merge the approved PR into the target branch only after implementation and integrity checks are satisfied.

### 8. Verify downstream publication

When relevant:

- `wiki/*.md` changed → verify **Publish Wiki** succeeded;
- `index.html` / Pages source changed → verify **Pages build and deployment** succeeded;
- `VERSION`/release flow changed → verify tag/Release alignment;
- workflow changes → inspect the relevant Actions run/checks.

### 9. Verify closure

Confirm:

- change is on the target branch;
- PR is merged;
- governing Issue is closed only when acceptance criteria are actually complete;
- reader-facing surfaces are current where affected;
- Issue and PR provide enough history for another human or AI agent to understand why the change happened.

## KISSS Exception

Tiny typo-only or formatting corrections may be included in an already-open relevant Issue. Do not create process for process's sake.

If no relevant Issue exists and the change is substantive enough to matter later, create one.

## AI Agent Rule

An AI agent entering this repository must inspect the governing Issue before implementation. Chat context alone is not sufficient durable authority for repository work.

For substantial course changes it must also inspect whether the change affects canonical student/course state and downstream Wiki/Pages reader surfaces.

## First Live Example

Issue #1 established the original workflow.

Issue #71 later added the documentation-integrity gate after the public course exposed a mismatch between comprehensive backend evidence and stale/shallow reader-facing documentation.
