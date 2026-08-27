# SOP & Operating Library

This is the reader-facing index for repeatable operating procedures used by the course.

Canonical SOP source lives under [`sops/`](https://github.com/tbhrc/github-course/tree/main/sops).

The Wiki summarises and routes to those procedures; it is not a second independent SOP store.

---

## 1. Repository Change Workflow

[**Open canonical SOP →**](https://github.com/tbhrc/github-course/blob/main/sops/repository-change-workflow.md)

Current standard path:

```text
Issue
→ issue-linked branch
→ focused commits
→ Pull Request
→ review/checks
→ documentation-integrity check
→ merge
→ downstream publication/deployment verification where relevant
→ Issue closes
```

Key rules:

- substantive work begins with a governing Issue;
- work does not go directly to `main`;
- PRs link the Issue and use closing keywords only when merge should genuinely close it;
- acceptance criteria and diff/check evidence are reviewed before merge;
- student/course reader surfaces are checked when material state changes;
- Wiki/Pages/release/workflow publication is verified after merge where relevant.

---

## 2. Course Documentation Integrity

[**Open canonical SOP →**](https://github.com/tbhrc/github-course/blob/main/sops/course-documentation-integrity.md)

This procedure was added after the public course exposed a structural mismatch:

```text
backend repository = current and increasingly comprehensive
Wiki/public reader surfaces = stale/shallow
```

Core model:

```text
canonical repository truth
├── knowledge-base/
├── numbered modules
├── students/
├── exercises/sops
└── benchmark framework

        ↓ summarise / link

Wiki handbook/dashboard

        ↓ route

GitHub Pages public front door
```

### When to run the integrity check

Review downstream reader surfaces whenever a PR materially changes:

- module/curriculum state;
- student current progress;
- benchmark/integration capability status;
- knowledge authority;
- public/Wiki navigation;
- a major learning breakthrough;
- a substantial new course surface.

### KISSS rule

Do not update every page after every commit.

```text
material reader meaning changed?
  no  → no downstream edit needed
  yes → update the minimum affected surfaces in the same PR
```

---

## Wiki Publishing Procedure

The Wiki follows a governed publishing model:

```text
Issue
→ edit wiki/*.md on branch
→ Pull Request
→ merge to main
→ Publish Wiki Action
→ .wiki.git
→ live Wiki
```

After changing Wiki source, the work is not fully verified until the publishing workflow succeeds.

[Open publishing architecture →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/wiki-publishing-architecture.md)

---

## Pages Verification Pattern

The course preserves this reusable failure lesson:

```text
green deployment
≠
correct entry page
≠
good user experience
```

When changing the public site:

1. verify source/entry assumptions;
2. review `index.html`/reader routing;
3. merge through normal governance;
4. verify Pages deployment;
5. validate the reader journey, not only the green Action.

[Open Pages failure/fix note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/pages-entry-file-readme-trap.md)

---

## AI / Agent Operating Pattern

For new executor routes:

```text
dedicated Issue
→ read AGENTS.md
→ bounded task / stop condition
→ assignment or deterministic dispatch
→ agent/session evidence
→ branch / commit / PR
→ human/authorised review
→ merge only when acceptable
```

Use the canonical benchmark framework for comparative testing rather than inventing a new scoring method each time.

[Open executor benchmark →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md)

---

## Agentic SOP Maintenance

An AI agent updating this operating library should be told to:

1. read root `AGENTS.md`;
2. use a governing Issue;
3. keep canonical procedures under `sops/`;
4. update this Wiki index only when reader meaning changes;
5. link rather than duplicate detailed procedures;
6. publish through the normal Wiki workflow;
7. verify the downstream run.

---

## Future SOP Candidates

Create a new SOP only after a workflow is practised enough to be reusable.

Likely future candidates:

- Issue triage;
- Pull Request review;
- Project backlog triage;
- Actions diagnosis;
- release management;
- security/integration review;
- AI executor launch/review;
- knowledge freshness review.

Avoid writing speculative SOPs for workflows the course has not actually practised.

---

## Navigation

[Course Handbook](Course-Handbook) · [Course Manual](Course-Manual) · [Exercises & Assessments](Exercises-and-Assessments) · [Knowledge Base](Knowledge-Base) · [Home](Home)
