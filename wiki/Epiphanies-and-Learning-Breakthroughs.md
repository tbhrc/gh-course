# Epiphanies & Learning Breakthroughs

This page preserves the moments where the learner's mental model changed materially.

These are not polished hindsight summaries. The canonical student files preserve the original misunderstandings, corrections and evidence.

## 1. GitHub Is Not Just Cloud Storage

### Before

GitHub was largely understood as the cloud place where repositories are stored and synced.

### Breakthrough

> **GitHub is a change-management operating platform built around repositories.**

The repository is only the centre. Issues, Projects, Pull Requests, Actions, releases, governance, Wiki, agents and other systems surround it.

### Why this matters

It changes the question from:

> Where do I save this code?

into:

> How should this work be governed, executed, verified, documented and automated?

---

## 2. Work Should Start With an Issue

### Before

An AI agent could simply be told in chat to change the repository.

### Breakthrough

David independently stopped the process and required a durable control point first.

```text
Issue
→ branch
→ commits
→ Pull Request
→ checks/review
→ merge
→ Issue closes
```

### Why this matters

The Issue explains **why the work exists** before code or documentation changes begin.

---

## 3. Semantic Versioning Is Not Decimal Counting

### Before

The intuitive version model was approximately:

```text
0.1 → ... → 0.99 → 1.0 → ... → 1.99 → 2.0
```

### Correction

```text
MAJOR.MINOR.PATCH
```

Example:

```text
1.9.0 → 1.10.0
```

There is no `.99` gate.

### Partial recall evidence

David later remembered **MAJOR** and **MINOR** but temporarily forgot **PATCH**. That is preserved as learning evidence rather than rewritten away.

[Canonical SemVer learning note →](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-semver.md)

---

## 4. Don't Teach GitHub From Assumption

### Trigger

David challenged the idea of relying on an AI model's old training memory for GitHub behaviour.

### Breakthrough

The course now uses this authority order:

```text
current official/live evidence
→ knowledge-base/
→ github-power-user Skill
→ course modules
→ model memory / old chat
```

### Why this matters

GitHub changes quickly. Verified durable knowledge is more reliable than an assistant saying what it vaguely remembers.

---

## 5. Wiki Is a Documentation Website, Not Just a Knowledge Page

### Before

The initial mental model was Wiki as a possible database-like knowledge/memory layer.

### Hands-on discovery

While creating the Wiki Home page, David noticed:

- Preview;
- rendered content;
- links;
- images;
- revision history;
- custom sidebar;
- custom footer;
- a separate `.wiki.git` repository.

He then independently recognised:

> **This feels like building a website.**

### Professional model

```text
GitHub Wiki
= Git-backed documentation website / lightweight documentation CMS

Knowledge base
= one possible use case

GitHub Pages
= fuller static website publishing layer
```

### Immediate operational application

David identified that an AI agent could be instructed to build and maintain:

- an SOP library;
- an internal handbook;
- an onboarding portal;
- a documentation hub;

inside GitHub Wiki rather than rebuilding equivalent infrastructure manually.

[Canonical Wiki learning note →](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-wiki.md)

[Verified Wiki platform note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/wiki-as-documentation-platform.md)

---

## Teaching Rule

Future learners should not always be given these conclusions first.

When possible, let the interface produce the discovery:

```text
operate
→ notice
→ articulate
→ correct/refine
→ preserve evidence
```

That is often more powerful than passive explanation.

## Navigation

[Student Dashboard — David](Student-Dashboard-David) · [Course Handbook](Course-Handbook) · [Home](Home)
