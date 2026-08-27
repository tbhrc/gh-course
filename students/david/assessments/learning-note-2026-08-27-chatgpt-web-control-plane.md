# Learning Note — ChatGPT Web as the Front Door to GitHub Execution

**Student:** David  
**Date:** 27 August 2026  
**Governing benchmark:** #23

## Trigger

After enabling Pages and inspecting GitHub Integrations, David recognised an additional architecture layer that had not yet been stated clearly enough in the course.

## Student's Breakthrough

The founder does not necessarily need to begin work inside a coding agent or IDE.

The operating model can begin in **ChatGPT Web**:

```text
brainstorm
→ clarify
→ decide
→ create GitHub Issue
```

Then GitHub becomes the durable handoff and execution layer:

```text
Issue
→ agent / integration
→ branch
→ commits
→ Pull Request
→ checks / review
→ merge
→ Actions / deployment / publishing
```

David explicitly observed that the entire course repository up to this point—including Issues, branches, PRs, merges, Wiki publishing, Pages verification and release work—had been operated through ChatGPT Web's connected GitHub action surface without him separately opening Codex, Claude or another coding agent.

## Why This Changed the Mental Model

Before this insight, AI coding agents could be viewed as the primary place where development begins.

The new model is:

> **ChatGPT Web can be the conversational planning/control surface; GitHub is the durable operating contract; specialist coding agents can become downstream executors.**

This allows a founder to remain at the intent/decision level until an idea is mature enough to become a GitHub Issue.

## Professional Refinement

Two downstream mechanisms must not be conflated:

### Direct coding-agent assignment

GitHub currently supports OpenAI Codex and Anthropic Claude as third-party coding agents on supported paid Copilot plans.

```text
Issue → assign agent → agent session → PR
```

### GitHub Agentic Workflow

GitHub Agentic Workflows can run supported AI engines from Actions-governed event workflows, including Codex, Claude and Gemini.

```text
Issue/event → Agentic Workflow → AI engine → safe output / PR
```

This second path is the closer match to David's idea of an Issue automatically triggering AI execution.

## Product / Subscription Correction

The **architecture** may be two-layer, but the billing/product path can differ.

Do not assume that every GitHub-native agent route is included in one ChatGPT subscription. GitHub's third-party coding-agent assignment is currently documented as a paid Copilot capability, while OpenAI Codex also has its own GitHub-connected product path.

This needs to be taught explicitly so future founders understand both the workflow and the commercial boundary.

## Current Evidence State

### Demonstrated

- ChatGPT Web can operate the connected course repository through a broad GitHub action surface.
- David independently articulated the two-layer founder workflow.
- David recognised repository setup/governance as the prerequisite for making later conversations simple.

### Not yet demonstrated

- Codex end-to-end execution from Issue #24.
- Claude end-to-end execution from Issue #25.
- Gemini execution mode under Issue #26.
- Vercel deployment capability under Issue #27.
- fully automatic Issue → agent routing under Issue #28.

## Benchmark Programme

Parent Issue #23 now tracks the integration capability matrix.

The course will mark each capability only when physically demonstrated:

```text
installed / authorised
≠
permission available
≠
operation proven
```

## Reusable Teaching Insight

> **A well-configured GitHub repository lets the founder move the complexity out of every conversation and into durable repository rules, workflows and integrations.**

The result is a simpler front door:

```text
Talk → decide → Issue
```

while GitHub handles the professional execution trail behind it.
