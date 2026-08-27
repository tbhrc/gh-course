# ChatGPT Web + GitHub as a Two-Layer AI Control Plane

**Last verified:** 27 August 2026

## Question

Can a founder use ChatGPT Web as the planning/front-door layer and GitHub as the durable execution/control layer for AI-assisted software work?

## Verified Course Evidence

Yes. In this course, ChatGPT Web has already been used to operate the GitHub repository directly through the connected GitHub action surface without David separately opening Codex, Claude or another coding agent.

The course has already demonstrated from ChatGPT Web:

- creating and updating Issues;
- creating branches;
- creating and updating repository files;
- opening Pull Requests;
- reviewing diffs and PR state;
- merging Pull Requests;
- inspecting GitHub Actions runs;
- verifying Wiki publication;
- verifying GitHub Pages deployment;
- preparing and publishing release automation;
- verifying a tag and GitHub Release.

This makes ChatGPT Web a practical **planning and control surface**, not merely a place to discuss code.

## Two-Layer Operating Model

```text
LAYER 1 — CONVERSATION / DECISION
ChatGPT Web
→ brainstorm
→ research
→ clarify requirements
→ decide scope
→ create governed GitHub Issue

LAYER 2 — DURABLE EXECUTION
GitHub
→ Issue
→ coding agent / integration / human
→ branch
→ commits
→ Pull Request
→ checks / review
→ merge
→ Actions
→ Wiki / Pages / deployment / release
→ permanent evidence
```

The practical advantage is that conversation can stay conversational while **work becomes durable the moment it is accepted as an Issue**.

## Repository Setup Is the Critical Enabler

This model becomes much more powerful after the repository has been configured as an operating environment.

Important setup surfaces include:

```text
AGENTS.md
.github/copilot-instructions.md
Issue workflow and templates
branch / Pull Request rules
Actions workflows
Wiki / Pages publishing
release workflow
permissions / rulesets
connected agents and integrations
knowledge-base/
student / project evidence
```

The operating principle is:

> **Set the repository contract once; then let conversations create governed work instead of repeatedly explaining the operating rules to each agent.**

## Two Different Agent Execution Paths

Do not confuse these.

### Path A — GitHub coding-agent assignment

Current GitHub documentation supports OpenAI Codex and Anthropic Claude as third-party coding agents on supported paid Copilot plans.

```text
Issue
→ assign coding agent
→ agent session
→ branch / changes
→ Pull Request
→ review
```

A custom Action is not required merely to start this supported coding-agent flow.

### Path B — GitHub Agentic Workflows

GitHub Agentic Workflows run AI agents inside an Actions-governed workflow and currently support engines including Copilot, Claude, Codex and Gemini.

```text
Issue / event
→ Agentic Workflow
→ selected AI engine
→ read-only/default guarded execution
→ declared safe outputs
→ Issue comment / PR / bounded action
```

This is the closer match to a fully automatic:

```text
ChatGPT Web creates Issue
→ event fires
→ AI agent executes
→ PR appears
```

It requires deliberate workflow/authentication setup and should not be added if direct agent assignment already solves the problem more simply.

## Product / Billing Boundary

The architecture and the subscription path are separate questions.

- The **ChatGPT Web control layer** demonstrated in this course is using the connected GitHub action surface available in the current ChatGPT environment.
- OpenAI Codex can be connected to GitHub through the OpenAI Codex product/environment flow.
- GitHub's native third-party Codex/Claude coding-agent assignment is currently documented as a paid GitHub Copilot capability and consumes GitHub Actions minutes / AI credits.
- GitHub Agentic Workflows may require agent-specific authentication/credentials depending on the selected engine.

Therefore:

> **Do not promise a “single subscription” architecture until the exact agent route and billing model have been verified for that user.**

The operational model can still remain two-layer even when billing spans more than one product.

## Why This Changes Founder/Vibe-Coder Workflows

A founder can stay at the intent level for much longer:

```text
idea
→ brainstorm in ChatGPT Web
→ decide
→ Issue
→ governed execution by specialist agent
→ review outcome
```

The founder does not have to begin every task by opening an IDE, cloning a repo, manually creating branches or copying the same brief across multiple tools.

The repository becomes the handoff contract.

## Benchmark Programme

The course is measuring this architecture under:

- #23 — master AI integration capability matrix;
- #24 — OpenAI Codex coding agent;
- #25 — Anthropic Claude coding agent;
- #26 — Google Gemini;
- #27 — Vercel deployment integration;
- #28 — fully automatic Issue → agent → PR path.

Each integration must be marked from **actual evidence**, using this rule:

```text
installed / authorised
≠
permission available
≠
operation proven
```

## Recommended Founder Setup Sequence

```text
1. Create repository
2. Define AGENTS.md / operating contract
3. Establish Issue → branch → PR → merge governance
4. Configure checks / Actions
5. Configure publishing / deployment
6. Configure versioning / releases
7. Add integrations with least privilege
8. Test one integration end to end
9. Record capability matrix
10. Only then automate routing further
```

## Governing Principle

> **Chat can remain flexible; accepted work should become a GitHub object with rules, execution evidence and history.**
