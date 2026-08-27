# ChatGPT Web → Codex Dispatch

**Status:** dispatcher implemented; native Codex assignment pending one-time user authentication  
**Last verified:** 27 August 2026

## The operating model

```text
ChatGPT Web
→ brainstorm / refine work
→ create governed GitHub Issue
→ create issue-linked dispatch branch + marker
→ push event
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

## Why a push command bus is used

The first implementation listened for an Issue edit where the title started with `[codex]`. ChatGPT Web successfully edited Issue #24, but no `issues` Actions run was created from that connector-generated event.

The Web GitHub surface is already proven to create branches and commits. A push is therefore the more reliable machine trigger from this surface.

The preferred Web-agent dispatch command is:

```text
dispatch/codex/<issue-number>
└── .dispatch/codex/<issue-number>.md
```

Creating the issue-linked dispatch branch from current `main` and committing the marker produces a normal push event. The workflow extracts the Issue number from the branch name and continues the dispatch.

The workflow also retains an Issue-title trigger and a manual `workflow_dispatch` input for other GitHub surfaces, but the push command bus is the reliable ChatGPT Web route.

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

The human operator should not need to open Codex manually.

1. Prepare the Issue completely.
2. ChatGPT Web creates `dispatch/codex/<issue-number>` from current `main`.
3. ChatGPT Web writes `.dispatch/codex/<issue-number>.md` with the Issue URL and dispatch intent.
4. The push event fires the deterministic dispatcher.
5. GitHub attempts native Codex assignment.
6. Codex should start an agent session and open a draft PR.
7. Review the PR and evidence before merge.

The dispatcher only runs when `github.actor == 'tbhrc'`, so outside visitors cannot spend AI credits by creating Issues or branches they cannot push.

If the one-time credential is missing, the Action comments on the target Issue and fails closed. Once the secret is added, ChatGPT Web can rerun the failed job through the connected Actions surface; no new manual Codex session is required.

## First benchmark

Issue #24 is the first controlled Codex test.

Do not mark Codex as operationally proven until repository evidence shows:

- an attached Codex agent session;
- Codex-specific identity/provenance;
- a non-main work branch;
- commits;
- a draft/open Pull Request;
- permission/failure evidence;
- no self-merge.

## Governing lesson

```text
ChatGPT Web = control / trigger surface
GitHub push + Actions = deterministic command bus
Codex = agentic execution surface
GitHub = audit trail and governance plane
```

A well-configured repository moves complexity into reusable rules and workflows so the founder's recurring operation becomes as small as:

> decide the work → create the Issue → dispatch the agent
