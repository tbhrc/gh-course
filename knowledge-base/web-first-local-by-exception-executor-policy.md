# Web-First, Local-by-Exception Executor Policy

## Purpose

Prevent an orchestration failure mode where the Web agent stops doing work it can perform and becomes only a dispatcher after a local coding agent is connected.

The default operating rule is:

> **ChatGPT Web is the default executor, not merely the dispatcher. Delegate only for capability or demonstrated efficiency — never merely because another agent is available.**

This policy is intentionally implementation-agnostic. It can later govern Codex, Claude Code, other local coding agents, GitHub-native agents, or future orchestration systems.

## Default Execution Model

```text
work request
→ create / resolve governing GitHub Issue
→ can Web execute safely and efficiently?

YES
→ Web owns execution
→ branch / changes / commits
→ Pull Request
→ checks / verification
→ merge / close

NO
→ record explicit handoff reason
→ route Issue to local executor
→ local agent claims Issue
→ branch / work / tests / PR
→ Web reviews and verifies
→ merge / close
```

The existence of a local agent does not change the default executor.

## Allowed Local-Handoff Reasons

A local handoff should normally require at least one concrete reason:

1. **Capability boundary** — Web lacks a required execution capability.
2. **Local runtime requirement** — the work needs filesystem access, package installation, compilation, Docker, terminal-only tooling, local services, hardware, or another local runtime dependency.
3. **Verification requirement** — reliable completion requires tests or execution that Web cannot run or inspect adequately.
4. **Demonstrated efficiency advantage** — benchmark evidence shows the local agent materially outperforms Web for this class of work.
5. **Sustained/high-volume execution** — the task requires long-running, repeated, or high-volume execution better suited to a persistent local worker.
6. **Canonical Provider Failover (Quota/Budget Exhaustion)** — primary provider encounters quota, rate limit (HTTP 429), or budget exhaustion, triggering an authorized failover routing event (`tbhrc/skills#13` / `github-agent-workflow v1.1.0`).

If none applies, Web should execute the work.

## Anti-Dispatcher Rule

Do not use this architecture:

```text
new Issue
→ local agent consumes everything
→ Web only creates Issues
```

That design creates executor atrophy at the control layer and unnecessarily pushes work downstream.

Use:

```text
new Issue
→ Web evaluates executor
→ Web executes by default
→ only exceptions receive local routing
```

## Issue-Level Routing

A local poller must **not** consume every open/new Issue.

Route deliberately with a stable signal such as:

```text
executor:local
```

A simple local polling query can then search only for work explicitly delegated to it.

Conceptually:

```text
is:issue
is:open
label:executor:local
```

Exact labels/query syntax may evolve; the policy requirement is deliberate routing rather than global Issue consumption.

## Local Claiming Rule

When a local agent accepts an Issue it should immediately create visible ownership evidence, for example:

```text
executor:local
status:in-progress
```

or an Issue comment identifying the executor/session.

This prevents duplicate workers from taking the same task and leaves an auditable claim event.

## KISSS First Implementation

A periodic local poller is acceptable as the first implementation.

Example:

```text
every few minutes
→ search explicitly delegated Issues
→ claim one
→ read repository instructions
→ create issue-linked branch
→ execute
→ test
→ commit
→ open PR
→ report evidence
```

Prefer this simple mechanism before introducing webhooks, queues, event buses, or custom orchestration infrastructure unless those become necessary.

## Web Responsibility After Delegation

Delegation does not end Web ownership of the outcome.

After local execution, Web should normally:

1. inspect the PR and changed files;
2. inspect test/check evidence;
3. verify the Issue acceptance criteria;
4. identify unexpected side effects or scope drift;
5. merge only when appropriate;
6. verify downstream Actions/deployments where relevant;
7. close the Issue only after completion evidence exists.

The local worker is an execution accelerator, not an uncontrolled replacement for the control surface.

## Future Executor Benchmark

Routing should eventually be informed by evidence rather than intuition.

Benchmark representative task classes across Web and local execution:

| Work type | Measure |
| --- | --- |
| GitHub administration | completion time, errors, rework |
| Documentation | speed, completeness, quality |
| Small code change | time, correctness, review fixes |
| Multi-file refactor | time, tests, regressions |
| Build / test / debug | completion rate, diagnostic quality |
| Repository research | speed, completeness, source accuracy |
| Actions / workflow work | speed, reliability, failure recovery |

The resulting routing policy may become task-specific, for example:

```text
GitHub admin/docs → Web default
runtime debugging → Local default
repo-wide refactor → choose benchmark winner
```

Do not encode such routing until evidence supports it.

## Decision Rule

Before delegation, the Web agent should be able to state the handoff reason in one sentence.

Examples:

```text
LOCAL HANDOFF REASON:
Requires local test execution unavailable to Web.
```

```text
LOCAL HANDOFF REASON:
Benchmark evidence shows local execution is materially faster for this task class.
```

If no concrete reason can be stated, do not delegate.

## Governing Principle

> **Delegate for capability or demonstrated efficiency — not merely because another agent is available.**

## Future Promotion

This document is the policy baseline. After enough benchmark evidence exists, it may be promoted into:

- a reusable GitHub/agent routing Skill;
- repository `AGENTS.md` execution policy;
- orchestration labels and automation;
- local-agent polling/claiming SOP;
- evidence-based executor routing rules.

Until then, keep the implementation simple and preserve the Web-first default.
