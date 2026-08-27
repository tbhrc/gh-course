# GitHub Knowledge Base

## Purpose

This directory is the **authoritative, evidence-backed GitHub knowledge layer** for the course.

The course must not depend on an AI model's memory, a single chat, or assumed GitHub behaviour when the claim can be verified from a current authoritative source.

## Authority Order

```text
1. Current official GitHub documentation / live GitHub evidence
2. knowledge-base/ verified notes
3. skills/github-power-user/ strategic playbook
4. course modules and exercises
5. AI model memory / older chat
```

Model knowledge is useful for discovery and explanation, but it is not durable proof of a current GitHub capability.

## Relationship to the Power User Skill

`skills/github-power-user/` is the accelerator and strategic map.

Use it to answer:

- Which GitHub capability probably fits this need?
- What professional pattern should we investigate?
- Which area of GitHub should the learner study next?

Then use this knowledge base to answer:

- What is currently true?
- What does GitHub officially support now?
- What are the important limitations, safety rules and best practices?
- When was this knowledge last verified?

Do not duplicate the entire Skill here. Convert gaps, volatile facts and important professional standards into concise verified notes.

## Knowledge Intake Workflow

```text
question / knowledge gap
        ↓
check github-power-user Skill
        ↓
check existing knowledge-base note
        ↓
if material or current: verify authoritative source
        ↓
update/create knowledge note through Issue → branch → PR
        ↓
use it in lesson / exercise / coaching
```

## Current Index

- [`source-policy.md`](source-policy.md) — evidence, freshness and verification rules.
- [`wiki-vs-repository-markdown.md`](wiki-vs-repository-markdown.md) — when to use GitHub Wiki versus governed repository Markdown.
- [`wiki-as-documentation-platform.md`](wiki-as-documentation-platform.md) — Wiki as a Git-backed documentation website/CMS, agentic use cases, and the boundary with GitHub Pages.
- [`wiki-publishing-architecture.md`](wiki-publishing-architecture.md) — governed `wiki/` source in the main repository published to the separate Wiki Git repository with GitHub Actions.
- [`pages-actions-integrations-control-plane.md`](pages-actions-integrations-control-plane.md) — Pages, Actions permissions and GitHub Apps/integrations as a governed AI-first control plane.
- [`pages-entry-file-readme-trap.md`](pages-entry-file-readme-trap.md) — the verified Pages failure pattern where deployment succeeds but `README.md` becomes an unhelpful entry experience; covers entry-file diagnosis, portal fix and user-journey verification.
- [`chatgpt-web-github-control-plane.md`](chatgpt-web-github-control-plane.md) — ChatGPT Web as the conversational front door and GitHub as the durable execution/control plane, including direct coding-agent assignment vs Agentic Workflows.
- [`chatgpt-web-codex-dispatch.md`](chatgpt-web-codex-dispatch.md) — the deterministic ChatGPT Web → Issue trigger → native Codex assignment architecture, authentication boundary and one-time setup.
- [`deterministic-actions-vs-agentic-ai.md`](deterministic-actions-vs-agentic-ai.md) — verified distinction between deterministic GitHub Actions, agent dispatch, downstream AI reasoning and delivery evidence, including the live Issue #24 failure ladder.
- [`copilot-free-ai-in-actions.md`](copilot-free-ai-in-actions.md) — operational proof that Copilot Free can perform genuine AI inference inside GitHub Actions via Copilot CLI while the paid cloud-agent Issue assignee remains unavailable.
- [`web-first-local-by-exception-executor-policy.md`](web-first-local-by-exception-executor-policy.md) — executor-routing policy that keeps ChatGPT Web as the default executor and permits local-agent delegation only for explicit capability or demonstrated efficiency reasons.
- [`gap-register.md`](gap-register.md) — known knowledge gaps and verification status.

## Knowledge Note Standard

Each substantial note should normally contain:

1. **Question / capability**
2. **Verified answer**
3. **Why it matters to an operator**
4. **Do / don't guidance**
5. **Official sources**
6. **Last verified date**
7. **Known plan/edition limitations** where relevant

## Freshness

GitHub changes quickly, especially around Copilot, agents, Projects, Actions, security and organisation features.

A note is not permanently correct merely because it was correct when written. Re-check material current behaviour when:

- the learner asks for the latest behaviour;
- a feature is in preview or changing rapidly;
- an API/UI capability affects an operational decision;
- the stored note is old enough that a change would be plausible;
- live behaviour conflicts with the note.

## Governing Principle

> **Verify what matters. Preserve what was verified. Teach from evidence.**
