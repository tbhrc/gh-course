# Exercises

This folder contains practical work that turns course exposure into demonstrated GitHub operating ability.

## Evidence Rule

```text
read / watched
≠
performed
≠
performed unaided
≠
mastered professionally
```

Each exercise should produce durable evidence: an Issue, branch, commit, Pull Request, workflow run, Project state, release, review decision or assessment note.

## Current Core Exercises

### 1. First Issue Workflow

[`first-issue-workflow.md`](first-issue-workflow.md)

Prove the complete governed path:

```text
Issue
→ branch
→ change
→ meaningful commit
→ Pull Request
→ inspect diff/checks
→ merge
→ verify Issue closure
```

This remains important for David because the course has used this workflow extensively, but much of the execution was coach/agent-assisted.

### 2. GitHub Projects — Live Course Control Surface

Use:

- [`../04-projects/README.md`](../04-projects/README.md)
- [`../04-projects/live-example-github-course-execution-mastery.md`](../04-projects/live-example-github-course-execution-mastery.md)

Create and operate:

**GitHub Course — Execution & Mastery**

Use real Issues/PRs, not dummy cards.

Evidence required:

- Project exists;
- fields created intentionally;
- Operating Board and Master Table used;
- AI Benchmarks and David Learning views created;
- at least five real items classified/moved;
- David can explain Issue state vs Project Status, field vs view and label vs Project field.

### 3. Pull Request Control Gate

Use Module 03 to personally review a real PR.

Evidence required:

- identify base/head;
- inspect changed files/diff;
- inspect checks/statuses;
- identify Issue relationship;
- identify actor/provenance;
- decide `Refs` vs closing keyword;
- explain merge decision.

### 4. Actions Workflow Read/Diagnose

Use Module 05 and choose one existing workflow such as:

- `publish-wiki.yml`;
- `publish-release.yml`;
- `dispatch-codex.yml`;
- `dispatch-claude.yml`;
- `dispatch-copilot.yml`;
- `benchmark-gemini.yml`.

Explain trigger, permissions, runner, jobs, steps, secrets and expected output. Then inspect a real workflow run and identify the first relevant success/failure boundary.

### 5. Release and SemVer

Use Module 06.

Given a real change:

1. decide PATCH/MINOR/MAJOR impact;
2. update changelog/version only when appropriate;
3. verify tag and Release alignment;
4. explain why commits and release versions are different layers.

### 6. AI Executor Review

Use Module 09 and `knowledge-base/executor-benchmark-framework.md`.

Review one AI-authored PR and record:

- governing Issue;
- executor identity;
- branch;
- commit author/committer;
- PR author;
- scope fidelity;
- factual accuracy;
- checks/reviews;
- unsupported claims;
- merge recommendation.

### 7. Security & Governance Design

Use Module 08.

Produce a minimum-safe policy for an AI-assisted production repository covering:

- default-branch protection/rulesets;
- required PR/check/review policy;
- Actions permissions;
- secret handling;
- integration least privilege;
- agent merge authority;
- dependency/security scanning.

### 8. GitHub × FolderDesk Ownership Matrix

Use Module 10.

Classify at least 15 current responsibilities as:

- GitHub owns;
- FolderDesk owns;
- integrate;
- retire/replace duplication.

Explain the source-of-truth decision for each.

## AI Executor Benchmark Exercise Contract

For comparative executor testing, use the canonical fixed framework:

[`../knowledge-base/executor-benchmark-framework.md`](../knowledge-base/executor-benchmark-framework.md)

Do not invent a new scoring method per agent.

The existing benchmark currently records ChatGPT Web, Codex, Claude, Copilot and Jules, with Gemini CLI/API still pending governed completion after an authenticated quota boundary.

## Student-Specific Evidence

David’s assessment evidence lives at:

[`../students/david/assessments/`](../students/david/assessments/)

Do not put reusable exercise instructions inside the student folder. Do not put personal student judgements in shared exercises.

## Exercise Design Standard

A good exercise should state:

1. objective;
2. starting context;
3. permitted/forbidden actions;
4. real GitHub object to use;
5. success criteria;
6. evidence to preserve;
7. mastery questions;
8. clean-up/stop condition where relevant.

## Current Priority for David

**GitHub Projects.**

The next practical exercise is to build and use the real course Project before moving on to the next major hands-on module.
