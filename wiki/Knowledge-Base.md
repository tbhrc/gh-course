# Knowledge Base

This page is the **reader-friendly index** to the course’s verified GitHub knowledge.

The authoritative notes live in the main repository under [`knowledge-base/`](https://github.com/tbhrc/github-course/tree/main/knowledge-base).

> **Rule:** use the Wiki to navigate verified knowledge; do not maintain a second independent copy of volatile GitHub facts here.

---

## Authority Order

```text
1. current official GitHub documentation / live GitHub evidence
2. knowledge-base/ verified notes
3. github-power-user Skill
4. course modules / exercises
5. model memory / older chat
```

When live evidence conflicts with a stored note, investigate the mismatch rather than teaching the old note blindly.

---

## Start With the Canonical Index

[**Open `knowledge-base/README.md` →**](https://github.com/tbhrc/github-course/blob/main/knowledge-base/README.md)

That file is the maintained index of verified notes and the source/freshness model.

---

## Evidence and Freshness

### Source / freshness policy

[Open note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/source-policy.md)

Use when deciding:

- whether a claim needs current verification;
- which source outranks another;
- how to preserve a verified result for later teaching.

### Knowledge gap register

[Open gap register →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/gap-register.md)

Use to distinguish known/verified knowledge from areas still needing current evidence.

---

## GitHub Projects

### Projects operating model

[Open note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/github-projects-operating-model.md)

Covers:

- Issue state vs Project Status;
- Board/Table/Roadmap and field design;
- `Backlog / Ready / In progress / Blocked / Review / Done`;
- why `Review` is the broad mixed-work acceptance gate rather than `Testing`;
- deterministic Project lifecycle automation;
- Project credential vs coding-agent dispatch credential;
- the proven ChatGPT Web → bounded dispatcher → Projects API control route;
- preserving populated single-select values during an option rename.

---

## Wiki / Documentation Architecture

### Wiki vs repository Markdown

[Open note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/wiki-vs-repository-markdown.md)

Core model:

```text
repository Markdown = governed canonical source/evidence
Wiki                = reader-focused documentation surface
```

### Wiki as a documentation platform

[Open note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/wiki-as-documentation-platform.md)

Preserves the lesson that Wiki is a Git-backed documentation website / lightweight documentation CMS, not merely “a knowledge page”.

### Governed Wiki publishing architecture

[Open note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/wiki-publishing-architecture.md)

Course model:

```text
wiki/*.md in main repo
→ Issue / branch / PR / merge
→ GitHub Action
→ .wiki.git
→ live Wiki
```

---

## Pages / Public Publishing

### Pages, Actions and Integrations control plane

[Open note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/pages-actions-integrations-control-plane.md)

Covers the relationship between:

- Pages;
- Actions policy;
- GitHub Apps/integrations;
- AI-first repository control.

### Pages entry-file README trap

[Open note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/pages-entry-file-readme-trap.md)

High-value failure pattern:

```text
green deployment
≠
correct entry page
≠
good user experience
```

The course’s Pages source was already correct. The fix was a deliberate root `index.html`, not changing the publishing branch/folder.

---

## ChatGPT Web / AI Control Plane

### ChatGPT Web + GitHub control plane

[Open note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/chatgpt-web-github-control-plane.md)

Core founder pattern:

```text
talk / decide in ChatGPT Web
→ governed GitHub Issue
→ GitHub execution/control plane
→ specialist executor
→ PR / review / merge
```

### Codex dispatch architecture

[Open note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/chatgpt-web-codex-dispatch.md)

Documents the deterministic dispatch/authentication architecture and the lessons learned from the setup/policy boundary.

### Deterministic Actions vs agentic AI

[Open note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/deterministic-actions-vs-agentic-ai.md)

Key distinction:

```text
automatic
≠
AI executed
```

Use the layer model:

```text
control surface
→ deterministic trigger/automation
→ optional agentic execution
→ delivery/evidence
```

### Copilot Free AI inside Actions

[Open note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/copilot-free-ai-in-actions.md)

Preserves the live proof that Copilot CLI inference inside Actions was available independently from the cloud coding-agent assignment mode.

This is an important **historical execution-mode lesson**; current cloud-agent benchmark results live in the executor framework below.

---

## Current Executor Benchmark — Canonical Live Matrix

[**Open Executor Benchmark Framework →**](https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md)

This is the maintained source of current comparative executor results.

Current bounded benchmark includes:

- ChatGPT Web;
- OpenAI Codex;
- Anthropic Claude;
- GitHub Copilot;
- Google Jules;
- Gemini CLI/API setup/runtime boundary;
- future local agents.

It records:

- fixed task contract;
- T0–T4 timing;
- 100-point scoring;
- setup friction separately from runtime;
- first-review-ready quality;
- provenance;
- current leaderboard.

**Do not use the static body of Issue #23 as the current capability matrix.** Issues/PRs are evidence/history; this maintained file is the current benchmark authority.

---

## Executor Routing

### Web-first / local-by-exception policy

[Open note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/web-first-local-by-exception-executor-policy.md)

Core rule:

> Delegate for capability or demonstrated efficiency — not merely because another agent is available.

The course benchmark currently shows that small GitHub-native work can be faster through ChatGPT Web than provisioning a cloud coding agent, while other task classes may favour specialised/local executors.

### Copilot Pro benchmark runbook

[Open note →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/copilot-pro-agent-benchmark-runbook.md)

Useful as preserved setup/runbook evidence for the paid-agent cutover. Current comparative results belong in the executor benchmark framework.

---

## Documentation Integrity — Operating Governance

The **course documentation integrity SOP** is an operating procedure rather than a GitHub product-fact note, so its canonical home is `sops/` rather than `knowledge-base/`.

[Open Documentation Integrity SOP →](https://github.com/tbhrc/github-course/blob/main/sops/course-documentation-integrity.md)

It prevents this failure:

```text
current canonical backend
+ stale Wiki/public summary
=
reader trust failure
```

---

## How New Knowledge Enters the Course

```text
question / gap
→ check Power User Skill
→ check existing verified note
→ verify current authoritative source when material
→ create governing Issue
→ branch
→ update/create knowledge-base note
→ Pull Request
→ review / merge
→ teach through module/exercise
→ update reader surfaces if material
```

---

## Important Distinctions

```text
Power User Skill
= strategic feature map / accelerator

knowledge-base/
= verified current authority layer

course module
= teaching transformation of verified knowledge

Wiki
= reader summary / navigation

Issue / PR
= work contract + implementation evidence/history
```

---

## Continue

- [Course Handbook](Course-Handbook)
- [GitHub Power User](GitHub-Power-User)
- [AI Control Plane](AI-Control-Plane)
- [Course Materials](Course-Materials)
- [Reference & Glossary](Reference-and-Glossary)
- [Home](Home)
