# Exercises & Assessments

This page turns course knowledge into **demonstrated GitHub ability**.

> **Evidence rule:** reading a lesson, watching an agent or seeing a workflow succeed does not automatically equal learner mastery.

Use:

```text
concept understood
→ performed with help
→ performed unaided
→ can diagnose / improve professionally
```

Current learner assignment, focus and mastery state belong in the generated [Student Dashboard — David](Student-Dashboard-David), backed by [`students/david/progress.md`](https://github.com/tbhrc/github-course/blob/main/students/david/progress.md). This page keeps the reusable exercise contracts.

---

## GitHub Projects Exercise

**Canonical module:** [04 — GitHub Projects](https://github.com/tbhrc/github-course/tree/main/04-projects)

The course material and live Project are already built. Operate the existing Project:

**GitHub Course — Execution & Mastery**

[Open live Project blueprint →](https://github.com/tbhrc/github-course/blob/main/04-projects/live-example-github-course-execution-mastery.md)

Do **not** create a second Project for the exercise. Repository/platform capability is already proven; this exercise tests operation and explanation of the real control surface.

### Required evidence

- open and inspect the existing Project;
- use real Issues/PRs rather than dummy cards;
- use the existing Status / Workstream / Priority / Type fields deliberately;
- use the Operating Board and Master Table intentionally;
- inspect the AI Benchmarks and David Learning views where relevant;
- classify or move at least five real work items where the decisions are justified;
- complete or validate a real Review → Done decision without the coach performing the key Project mutations;
- explain the design without copying instructions.

### Mastery questions

1. Issue vs Project item?
2. Field vs view?
3. Issue state vs Project Status?
4. Label vs Project field?
5. Board vs Table vs Roadmap?
6. Why keep the initial field model small?

---

## Core Exercise — Full Issue Workflow

[Open canonical exercise →](https://github.com/tbhrc/github-course/blob/main/exercises/first-issue-workflow.md)

Use the complete governed path:

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

Coach/agent execution is not silently credited as learner mastery.

---

## Pull Request Control-Gate Exercise

[Open Module 03 →](https://github.com/tbhrc/github-course/tree/main/03-pull-requests)

Choose one real PR and personally identify:

- governing Issue;
- base/head;
- changed files;
- diff meaning;
- checks/statuses;
- actor/provenance;
- unresolved risks;
- `Refs` vs closing keyword;
- merge recommendation.

The learner should be able to explain why:

```text
mergeable
≠
approved / safe
```

---

## Actions Read / Diagnose Exercise

[Open Module 05 →](https://github.com/tbhrc/github-course/tree/main/05-actions-automation)

Choose an existing workflow such as:

- Publish Wiki;
- Publish Release;
- Dispatch Codex;
- Dispatch Claude;
- Dispatch Copilot;
- Benchmark Gemini CLI Executor.

Explain:

```text
trigger
permissions
jobs
runner
steps
secrets/credentials
expected output
```

Then inspect a real run and identify the first relevant success/failure boundary.

Required diagnostic vocabulary includes:

- no run / trigger;
- skipped condition;
- missing secret;
- 401;
- 403;
- 429 quota;
- agent runtime;
- implementation/check failure.

---

## Release / SemVer Exercise

[Open Module 06 →](https://github.com/tbhrc/github-course/tree/main/06-releases-versioning)

Given a real change:

1. decide whether it is release-worthy;
2. classify PATCH / MINOR / MAJOR meaning;
3. explain current `0.y.z` status;
4. keep `VERSION`, changelog, tag and Release aligned;
5. verify the release object after publication.

David’s original decimal-counter model remains preserved in the historical learning note.

---

## AI Executor Review Exercise

[Open canonical benchmark →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md)

The repository has real AI-authored PR evidence from Copilot, Codex, Claude and Jules.

Pick one PR and record:

- governing Issue;
- executor task/session;
- branch;
- commit author/committer;
- PR author;
- task fidelity;
- unsupported factual claims;
- checks/reviews;
- governance/closing semantics;
- whether you would merge.

The Jules benchmark is particularly useful because it completed autonomously but review found several factual/provenance errors.

---

## Security / Governance Exercise

[Open Module 08 →](https://github.com/tbhrc/github-course/tree/main/08-security-governance)

Design a minimum-safe AI-assisted production repository policy covering:

- rulesets/default branch;
- PR requirement;
- required checks;
- review requirement;
- CODEOWNERS where justified;
- Actions permissions;
- secret handling;
- agent write/merge authority;
- integration least privilege;
- dependency/security scanning.

Do not merely list features. Explain the risk each control manages.

---

## GitHub × FolderDesk Architecture Exercise

[Open Module 10 →](https://github.com/tbhrc/github-course/tree/main/10-github-folderdesk-architecture)

Classify at least 15 current responsibilities:

```text
GitHub owns
FolderDesk owns
Integrate
Retire / replace duplication
```

For each one record the canonical system of record and why dual-write should or should not exist.

---

## Executor Benchmark Exercise Framework

When benchmarking a new executor, use the same contract rather than inventing a test each time.

[Open `executor-benchmark-framework.md` →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md)

The framework fixes:

- task scope;
- T0–T4 timing;
- 100-point scoring;
- first-review-ready quality rule;
- setup friction vs runtime;
- stop-before-merge condition;
- provenance requirements.

---

## Current learner state

Do not maintain a second hand-written assessment state here. Use the generated [Student Dashboard — David](Student-Dashboard-David) for the reader-facing current assignment and [`students/david/progress.md`](https://github.com/tbhrc/github-course/blob/main/students/david/progress.md) for canonical learner state.

---

## Student Evidence

[Open David’s assessments folder →](https://github.com/tbhrc/github-course/tree/main/students/david/assessments)

Important dated notes currently include:

- diagnostic;
- SemVer;
- Wiki/knowledge architecture;
- Pages/Integrations;
- Pages portal failure/fix;
- ChatGPT Web control plane;
- deterministic vs agentic automation;
- Copilot Free Actions inference;
- Projects;
- multi-agent benchmarks;
- documentation integrity.

---

## Assessment Integrity Rules

1. Do not rewrite the immutable baseline.
2. Preserve misconceptions/corrections.
3. Do not credit agent execution as learner execution.
4. Record partial recall honestly.
5. Prefer GitHub evidence over conversational claims.
6. Update current `progress.md` when evidence materially changes the learner state.
7. Let the generated reader-facing dashboard reflect current learning focus; do not hand-maintain duplicate current state here.

---

## Navigation

[Home](Home) · [Course Handbook](Course-Handbook) · [Course Manual](Course-Manual) · [Course Modules](Course-Modules) · [Student Dashboard — David](Student-Dashboard-David) · [Course Materials](Course-Materials)