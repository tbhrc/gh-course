# ChatGPT Web → Codex Dispatch

**Status:** dispatcher implemented; user token verified visible to Actions; native Codex assignment under final API/policy verification  
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

## Authentication boundary proved

The connected ChatGPT GitHub surface is a GitHub App and can create Issues, branches, commits and Pull Requests. A direct attempt to assign `openai-code-agent[bot]` from that connection returned `403 Forbidden`.

The repository therefore uses a user-authorised fine-grained GitHub token stored as the Actions secret `AGENT_DISPATCH_TOKEN`.

Live run evidence now proves:

- the push-triggered workflow runs;
- `AGENT_DISPATCH_TOKEN` is visible to Actions;
- preflight passes;
- the workflow reaches the native coding-agent assignment API.

## Agent-assignment request shape

GitHub's documented REST pattern for AI-agent assignment requires more than adding a bot login to `assignees`. The request must also include an `agent_assignment` object describing the target repository and base branch.

The dispatcher therefore sends:

```json
{
  "assignees": ["openai-code-agent[bot]"],
  "agent_assignment": {
    "target_repo": "tbhrc/github-course",
    "base_branch": "main",
    "custom_instructions": "Treat the assigned Issue as the task specification. Read AGENTS.md first. Do not self-merge the first benchmark PR.",
    "custom_agent": "",
    "model": ""
  }
}
```

The bot identity is `openai-code-agent[bot]`, the GitHub identity used by the Codex partner agent.

## Native Codex eligibility

GitHub currently documents OpenAI Codex as a third-party coding agent available on **paid GitHub Copilot plans**. It must also be enabled in the applicable Copilot Cloud agent policy under **Partner agents → Allow Codex coding agent**.

This is distinct from installing or granting permissions to the **ChatGPT Codex Connector** under ordinary GitHub integrations. Connector installation proves application access; it does not by itself prove native GitHub Codex coding-agent eligibility.

## Native Codex vs Agentic Workflow

### Native Codex coding-agent assignment — preferred here

```text
Issue
→ GitHub native partner-agent assignment
→ OpenAI Codex
→ GitHub-hosted agent session
→ draft PR
```

This route uses GitHub's third-party coding-agent system and its GitHub Actions/AI-credit model according to the eligible Copilot plan.

### GitHub Agentic Workflow using `engine: codex`

```text
Issue event
→ Agentic Workflow
→ Codex engine
→ declared safe output
```

This is a different system. GitHub's current documentation requires an OpenAI API credential for the Codex engine. Do not silently substitute this route when the goal is native GitHub Codex assignment because authentication and billing differ.

## One-time setup

1. Store a real user-authorised fine-grained GitHub token as repository **Actions** secret `AGENT_DISPATCH_TOKEN`.
2. Scope it only to `tbhrc/github-course` where possible.
3. Give the permissions GitHub requires for coding-agent issue assignment: metadata read and Actions, Contents, Issues and Pull Requests read/write.
4. Ensure the repository is enabled for Copilot Cloud agent.
5. Ensure **OpenAI Codex** is enabled under the relevant Copilot **Partner agents** policy.
6. Confirm the GitHub account/organization has an eligible paid Copilot plan for third-party coding agents.

Do not commit the token.

## Per-Issue operation after setup

The human operator should not need to open Codex manually.

1. Prepare the Issue completely.
2. ChatGPT Web creates `dispatch/codex/<issue-number>` from current `main`.
3. ChatGPT Web writes `.dispatch/codex/<issue-number>.md` with the Issue URL and dispatch intent.
4. The push event fires the deterministic dispatcher.
5. GitHub attempts native Codex assignment with the documented `agent_assignment` payload.
6. Codex should start an agent session and open a draft PR.
7. Review the PR and evidence before merge.

The dispatcher only runs when `github.actor == 'tbhrc'`, so outside visitors cannot spend AI credits by creating Issues or branches they cannot push.

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

And keep these distinctions explicit:

```text
integration installed
≠ native coding agent enabled
≠ plan eligible
≠ agent assignment operationally proven
```

A well-configured repository moves complexity into reusable rules and workflows so the founder's recurring operation becomes as small as:

> decide the work → create the Issue → dispatch the agent
