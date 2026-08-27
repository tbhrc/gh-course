# ChatGPT Web → Codex Dispatch

**Status:** deterministic command bus and user-authenticated API call verified; native Codex partner-agent assignment currently rejected with HTTP `403 Forbidden`  
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

A GitHub Action can be completely deterministic. Its job can simply be to react to an event and hand work to another system. In this architecture the Action is the dispatcher; Codex would be the reasoning/execution agent.

## Why a push command bus is used

The first implementation listened for an Issue edit where the title started with `[codex]`. ChatGPT Web successfully edited Issue #24, but no `issues` Actions run was created from that connector-generated event.

The Web GitHub surface is already proven to create branches and commits. A push is therefore the more reliable machine trigger from this surface.

The preferred Web-agent dispatch command is:

```text
dispatch/codex/<issue-number>
└── .dispatch/codex/<issue-number>.md
```

Creating the issue-linked dispatch branch from current `main` and committing the marker produces a normal push event. The workflow extracts the Issue number from the branch name and continues the dispatch.

## Authentication boundary proved

The connected ChatGPT GitHub surface is a GitHub App and can create Issues, branches, commits and Pull Requests. Direct partner-agent assignment from that app credential returned `403 Forbidden`.

The repository therefore uses a user-authorised fine-grained GitHub token stored as the Actions secret `AGENT_DISPATCH_TOKEN`.

Live run evidence now proves:

- the push-triggered workflow runs;
- `AGENT_DISPATCH_TOKEN` is visible to Actions as masked `***`;
- preflight passes;
- the workflow reaches the coding-agent assignment API using the user PAT.

This distinguishes:

```text
connector GitHub App credential
≠
user-authorised PAT used by Actions
```

## Secret lesson

An Actions secret is a secure container for a real credential. It is not an arbitrary password invented by the operator.

The live setup moved through two states:

```text
invented / absent value
→ workflow saw AGENT_DISPATCH_TOKEN as empty

real GitHub-generated fine-grained PAT
→ workflow saw AGENT_DISPATCH_TOKEN as ***
```

The repository also exposes a separate **Agents** secrets surface. That is not a replacement for the Actions secret used by this normal GitHub Actions workflow.

## Agent-assignment request shape

The dispatcher now sends both the partner-agent bot and an `agent_assignment` object:

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

PR #37 corrected the earlier dispatcher, which had only sent the bot assignee.

## Current live result

A fresh run after PR #37 used:

- the corrected workflow from current `main`;
- a fresh dispatch branch;
- the real masked PAT;
- the `agent_assignment` payload.

GitHub still returned:

```text
HTTP 403 Forbidden
```

Therefore the following layers are now proven:

```text
✅ ChatGPT Web control surface
✅ push command bus
✅ GitHub Actions trigger
✅ Issue resolution
✅ Actions secret visibility
✅ user-authenticated API request
✅ corrected assignment payload
❌ native Codex partner-agent assignment accepted
❌ Codex agent session / PR
```

The remaining blocker is downstream partner-agent permission, policy or plan eligibility. It is no longer accurate to diagnose this as an Actions-trigger or missing-secret problem.

## Native Codex eligibility

GitHub currently documents OpenAI Codex as a third-party coding agent available on **paid GitHub Copilot plans**. It must also be enabled in the applicable Copilot Cloud agent policy under **Partner agents → Allow Codex coding agent**.

This is distinct from installing or granting permissions to the **ChatGPT Codex Connector** under ordinary GitHub integrations.

```text
ChatGPT Codex Connector installed
≠
Codex partner agent enabled
≠
paid plan/policy eligible
≠
agent assignment accepted
```

## Native Codex vs GitHub Copilot cloud agent

These are separate benchmark subjects.

### Codex partner agent

```text
Issue #24
→ GitHub third-party partner-agent assignment
→ OpenAI Codex
→ agent session / PR
```

Current result: assignment rejected with HTTP 403.

### GitHub Copilot cloud agent

```text
Issue #38
→ GitHub Copilot cloud-agent assignment
→ Copilot agent session
→ branch / PR
```

Issue #38 exists specifically to test GitHub's own agent without mixing Codex partner-agent evidence into it.

## Native Codex vs Agentic Workflow

A GitHub Agentic Workflow using a Codex engine is a different architecture from native partner-agent assignment. Do not silently substitute it during this benchmark because authentication and billing differ.

## Per-Issue operation after eligibility is satisfied

The human operator should not need to open Codex manually.

1. Prepare the Issue completely.
2. ChatGPT Web creates the dispatch branch/marker.
3. Push fires the deterministic dispatcher.
4. The workflow authenticates with the user PAT.
5. GitHub accepts the partner-agent assignment.
6. Codex starts an agent session and opens a draft PR.
7. Review the PR and evidence before merge.

## First benchmark

Issue #24 remains the controlled Codex test.

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
Codex = downstream agentic execution surface
GitHub = audit trail and governance plane
```

And:

```text
automation running
≠ authentication proven
≠ agent entitlement proven
≠ agent execution proven
```

Read `deterministic-actions-vs-agentic-ai.md` for the reusable failure-layer model.
