# ChatGPT Web → Codex Dispatch

**Status:** implementation pending one-time user authentication  
**Last verified:** 27 August 2026

## The operating model

```text
ChatGPT Web
→ brainstorm / refine work
→ create or edit a GitHub Issue
→ `[codex]` Issue-title trigger
→ deterministic GitHub Action
→ native OpenAI Codex coding-agent assignment
→ Codex session
→ branch + commits + draft Pull Request
→ human review / checks
```

The key distinction is:

```text
trigger / automation
≠
AI reasoning
```

A GitHub Action can be completely deterministic. Its job can simply be to react to an event and hand work to another system. In this architecture the Action is the dispatcher; Codex is the reasoning/execution agent.

## Why ChatGPT Web cannot directly assign Codex today

The connected ChatGPT GitHub surface is a GitHub App and can create Issues, branches, commits and Pull Requests. A direct attempt to assign `openai-code-agent[bot]` from that connection returned `403 Forbidden`.

GitHub documents agent tasks and Copilot issue assignment as requiring user-context authentication. GitHub App installation tokens are not supported by the Agent Tasks API. This is an authentication boundary, not an Actions-policy problem.

## Native Codex vs Agentic Workflow

Two different paths exist.

### Native Codex coding-agent assignment — preferred here

```text
Issue
→ assign OpenAI Codex coding agent
→ GitHub-hosted agent session
→ draft PR
```

This uses GitHub's supported third-party coding-agent capability and GitHub AI credits / Actions usage according to the user's eligible Copilot plan.

### GitHub Agentic Workflow using `engine: codex`

```text
Issue event
→ Agentic Workflow
→ Codex engine
→ declared safe output
```

This is a different system. GitHub's current documentation requires an `OPENAI_API_KEY` for the Codex engine. Do not silently substitute this route when the goal is native GitHub Codex assignment, because authentication and billing are different.

## One-time setup

The repository workflow `.github/workflows/dispatch-codex.yml` expects one secret:

`AGENT_DISPATCH_TOKEN`

Use a **user-authorised GitHub token**, scoped as narrowly as possible to `tbhrc/github-course` and given only the repository permissions GitHub requires for coding-agent issue assignment. GitHub's current Copilot issue-assignment API guidance lists metadata read plus Actions, Contents, Issues and Pull Requests read/write for a fine-grained personal access token.

Also ensure the OpenAI Codex coding agent is enabled and available under the relevant GitHub Copilot policy. GitHub currently documents third-party coding agents, including Codex, as available on paid Copilot plans.

Do not commit the token. Store it only as a repository Actions secret named `AGENT_DISPATCH_TOKEN`.

## Per-Issue operation after setup

The operator should not need to open Codex manually.

1. Prepare the Issue completely.
2. Prefix its title with `[codex]`.
3. The deterministic dispatcher fires.
4. GitHub attempts native Codex assignment.
5. Codex should start an agent session and open a draft PR.
6. Review the PR and evidence before merge.

For a public repository, the dispatcher is restricted to events initiated as `tbhrc`, so outside visitors cannot spend AI credits simply by creating `[codex]` Issues.

## First benchmark

Issue #24 is the first controlled Codex test.

Do not mark Codex as operationally proven until repository evidence shows:

- an attached Codex agent session;
- Codex-specific identity/provenance;
- a non-main branch;
- commits;
- a draft/open Pull Request;
- permission/failure evidence;
- no self-merge.

## Governing lesson

```text
ChatGPT Web = control / trigger surface
GitHub Actions = deterministic event automation
Codex = agentic execution surface
GitHub = audit trail and governance plane
```

A well-configured repository moves complexity into reusable rules and workflows so the founder's recurring operation becomes as small as:

> decide the work → create the Issue → dispatch the agent
