# Copilot Pro Agent Benchmark Cutover Runbook

## Purpose

Move from the already-proven Copilot Free inference path to paid **autonomous coding-agent** benchmarks without redesigning the repository.

This runbook activates only after the GitHub account shows **Copilot Pro** as active.

## What is already proven

Before Pro activation the course has already proven:

```text
ChatGPT Web
→ GitHub Issue / push
→ GitHub Actions
→ AGENT_DISPATCH_TOKEN available
→ authenticated GitHub API call
```

It has also proven genuine Copilot Free AI inference through Copilot CLI inside Actions.

The remaining paid-agent tests are different capabilities:

1. GitHub Copilot cloud coding agent — Issue #38.
2. OpenAI Codex partner coding agent — Issue #24.

Both previously stopped at GitHub agent assignment with HTTP 403 while the account was on Copilot Free.

## Non-negotiable operating policy

The presence of paid coding agents does **not** turn ChatGPT Web into a dispatcher-only surface.

Use the separate policy:

`knowledge-base/web-first-local-by-exception-executor-policy.md`

Core rule:

> ChatGPT Web remains the default executor. Delegate only for capability or demonstrated efficiency.

These benchmarks prove downstream capability; they do not grant downstream agents ownership of all Issues.

## Preconditions

Before firing a paid benchmark, verify:

- Copilot Pro is visibly active on the GitHub account;
- repository remains `tbhrc/github-course`;
- `AGENT_DISPATCH_TOKEN` remains configured as an Actions repository secret;
- the token still has the required repository permissions used by the dispatcher;
- GitHub Copilot cloud agent / partner-agent policy is enabled where required;
- Issue #38 and Issue #24 remain open;
- no agent is already actively working the target Issue;
- `main` contains the current dispatcher workflows.

Never paste the token into Issues, comments, logs or chat.

## Dispatcher files

Current deterministic dispatchers:

```text
.github/workflows/dispatch-copilot.yml
.github/workflows/dispatch-codex.yml
```

They already:

- fail closed when the credential is unavailable;
- use user-authorised `AGENT_DISPATCH_TOKEN`;
- send GitHub's agent-assignment payload;
- record the assignment HTTP status;
- comment success/failure on the Issue;
- forbid first-run self-merge in their instructions.

Do not create another dispatcher unless live evidence shows these are defective.

## Test order

Use this order because it gives the cleanest attribution:

```text
1. GitHub Copilot cloud agent — #38
2. OpenAI Codex coding agent — #24
```

Do not fire both simultaneously on the first post-Pro test.

## Fresh-dispatch rule

Every paid benchmark attempt should run from a branch created from the **current `main`**, even when an older dispatch branch exists.

Use a nested branch whose final path segment remains the Issue number:

```text
dispatch/copilot/pro-1/38
dispatch/codex/pro-1/24
```

Why:

- the workflow branch glob still matches `dispatch/<agent>/**`;
- `${REF_NAME##*/}` still resolves the correct Issue number;
- the branch starts with the latest workflow code from `main`;
- the attempt has an explicit provenance label (`pro-1`);
- old pre-Pro branch history cannot be mistaken for the new test.

For later retries increment the attempt marker:

```text
pro-2
pro-3
```

## Trigger marker

Create a bounded marker commit on the fresh dispatch branch.

Suggested paths:

```text
.dispatch/copilot/38.md
.dispatch/codex/24.md
```

The marker should record:

- governing Issue;
- attempt ID;
- requested by ChatGPT Web;
- plan state: Copilot Pro active;
- purpose of benchmark;
- explicit `do not self-merge` instruction.

## Benchmark 1 — GitHub Copilot cloud agent

Target: Issue #38.

Expected transition after Pro:

```text
fresh dispatch push
→ Dispatch GitHub Copilot from GitHub
→ AGENT_DISPATCH_TOKEN present
→ copilot-swe-agent[bot] assignment request
→ HTTP 201 accepted
→ agent session appears
→ issue-linked branch
→ agent work
→ open/draft PR
→ STOP
```

If assignment still returns 403 after Pro activation, inspect in this order:

1. Copilot cloud-agent policy/enablement;
2. repository eligibility;
3. PAT permission scope;
4. exact API response;
5. account/organisation policy.

Do not assume the plan upgrade failed solely from a 403.

## Benchmark 2 — OpenAI Codex coding agent

Target: Issue #24.

Only fire after the Copilot benchmark is understood.

Expected transition:

```text
fresh dispatch push
→ Dispatch Codex from GitHub
→ AGENT_DISPATCH_TOKEN present
→ openai-code-agent[bot] assignment request
→ assignment accepted
→ Codex session appears
→ issue-linked branch
→ integration-tests/codex.md
→ commit(s)
→ open/draft PR
→ STOP
```

The Issue body remains the task specification. Codex must read `AGENTS.md` first and must not merge or close the Issue.

## First-run stop condition

The first successful benchmark stops when an **open or draft Pull Request** exists and its evidence can be inspected.

Do not merge yet.

Inspect:

- exact assignee/agent identity;
- timeline/session evidence;
- branch name;
- changed files;
- commit author/committer;
- PR author;
- checks/statuses;
- comments/reviews;
- whether the agent followed `AGENTS.md`;
- whether it stayed within Issue scope;
- any visible AI-credit/plan evidence.

Then complete the relevant evidence file using:

`integration-tests/agent-benchmark-template.md`

## Success definition

A successful dispatcher run alone is insufficient.

Minimum proof for **autonomous coding-agent execution**:

```text
assignment accepted
+ agent session exists
+ agent-authored branch/commit exists
+ open/draft PR exists
```

Checks and review strengthen the proof but occur after the execution boundary is crossed.

## Failure classification

| Evidence | Interpretation |
| --- | --- |
| no run | trigger/workflow failure |
| secret empty | secret setup/scope failure |
| HTTP 401 | credential invalid/expired |
| HTTP 403 | authenticated but forbidden: permission/policy/eligibility/entitlement |
| HTTP 201, no session | assignment accepted; agent/session layer failure |
| session exists, no PR | execution/runtime/instruction layer |
| PR exists, checks fail | implementation/CI layer |

## After each benchmark

1. Capture evidence before changing anything else.
2. Update the agent-specific evidence file.
3. Comment the governing Issue with the exact result.
4. Update parent Issue #23 capability matrix.
5. Keep failed capabilities open until the unresolved boundary is genuinely closed.
6. Merge only after human/Web review.
7. Close the Issue only after its own acceptance criteria are physically verified.

## Future benchmark

Once both Web and downstream coding agents can execute comparable work, run a controlled **Web vs local/cloud coder speed-quality benchmark**. Use evidence to decide routing by task class rather than handing work off merely because another agent exists.

## Governing principle

> **Prove the worker, preserve the evidence, then optimise routing.**
