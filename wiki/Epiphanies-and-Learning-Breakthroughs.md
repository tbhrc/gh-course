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

## 6. Don't Merely Have a Wiki — Operate Through It

### Trigger

After recognising Wiki as a publishing surface, David rejected the idea of leaving it as a standalone demonstration.

### Breakthrough

The Wiki should become the **actual human interface of the course**:

- Home dashboard;
- course handbook;
- practical manual;
- course materials;
- student progress;
- epiphany history;
- exercises;
- SOP library;
- glossary and reference;
- links into canonical repository evidence.

### Governance problem discovered

Direct Wiki editing is convenient, but the main repository has stronger Issue/branch/PR governance.

### Applied architecture

```text
canonical repo truth
        ↓
reader-facing wiki/*.md source
        ↓
Issue → branch → PR → merge
        ↓
GitHub Action
        ↓
.wiki.git
        ↓
live Wiki
```

This turns Wiki from an isolated feature into a governed publishing layer that agents can maintain as part of normal repository work.

### Why this matters

The principle generalises far beyond this course:

> **Do not merely discover a powerful GitHub feature. Integrate it into the operating model so the feature replaces manual work.**

[Verified publishing architecture →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/wiki-publishing-architecture.md)

---

## 7. GitHub Can Be the Integration Control Plane

### Trigger

While independently exploring repository Settings, David moved from Wiki into Actions, Pages and Integrations.

He reported:

- enabling **Allow all actions and reusable workflows**;
- identifying the first-time-contributor workflow approval setting;
- enabling GitHub Pages and publishing the course publicly;
- discovering the repository Integrations area;
- enabling/updating permissions for ChatGPT/Codex, Claude, Gemini and Vercel.

### Spontaneous breakthrough

The important realisation was not simply that GitHub supports plugins/apps.

It was:

> **GitHub can become the common integration/control plane connecting AI agents, repository governance, automation and deployment.**

```text
GitHub
├── source truth
├── Issues / PRs
├── Actions
├── Wiki
├── Pages
└── Integrations
    ├── Codex / ChatGPT
    ├── Claude
    ├── Gemini
    └── deployment services such as Vercel
```

### Professional refinement

Visibility in Integrations is not proof of operational capability.

```text
installed / authorised
≠
permission for every operation
≠
operation proven successfully
```

Likewise:

```text
Allow all actions/reusable workflows
≠
unlimited GITHUB_TOKEN permissions
```

The next professional step is to test each important integration through a bounded real workflow and record what actually succeeds.

### Pages breakthrough

GitHub Pages also changed from an abstract feature into a personally operated capability: David independently enabled the public course site at:

`https://tbhrc.github.io/github-course/`

This reinforces the larger mental model that GitHub contains both operating infrastructure and publishing infrastructure.

[Canonical Pages / Integrations learning note →](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-pages-integrations.md)

[Verified control-plane note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/pages-actions-integrations-control-plane.md)

---

## Teaching Rule

Future learners should not always be given these conclusions first.

When possible, let the interface produce the discovery:

```text
operate
→ notice
→ articulate
→ correct/refine
→ apply architecturally
→ preserve evidence
```

That is often more powerful than passive explanation.

## Navigation

[Student Dashboard — David](Student-Dashboard-David) · [Course Handbook](Course-Handbook) · [Home](Home)
