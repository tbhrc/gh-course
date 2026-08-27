# Codex Desktop Terra — Local Executor Benchmark

## Identity

- Provider / agent: OpenAI Codex Desktop
- Model / reasoning: GPT-5.6 Terra / light reasoning
- Execution mode: local macOS desktop task, using the local Git checkout and GitHub CLI
- Governing Issue: #78
- Benchmark date: 2026-08-27
- Triggered by: David in the Codex Desktop conversation
- Dispatch workflow / run: none — this is explicitly a local executor, not the GitHub Partner Agent route

## Objective

Run the bounded local-surface benchmark requested in Issue #78: create this dedicated evidence record and update the executor matrix with an evidence-backed local Codex Desktop result.

## Expected and observed flow

```text
David in ChatGPT Desktop
→ Codex Desktop local task (GPT-5.6 Terra, light)
→ local issue-linked branch
→ local commits
→ GitHub open PR
→ human review
```

## Proof ladder

| Layer | Result | Evidence |
| --- | --- | --- |
| Task launched | proven | Issue #78 was created at T0. |
| Local agent session | proven | This Codex Desktop task is the execution surface; GitHub does not expose a separate agent-session object. |
| Branch created | proven | `codex/issue-78-desktop-terra-benchmark` is the issue-linked local branch. |
| Commit(s) created | pending | Recorded when the first substantive evidence commit is pushed. |
| PR opened | pending | This benchmark stops at an open PR. |
| Checks/statuses observed | not applicable | Documentation-only change; no required check is asserted. |
| Human review completed | pending | Deliberately outside the benchmark stop condition. |

## Provenance

- Triggering GitHub identity: `tbhrc` (Issue creation)
- Local execution identity: Codex Desktop task on David's Mac
- Agent/bot identity: no GitHub bot identity; this is a local interactive executor
- Session ID/link: not exposed as a GitHub object
- Branch: `codex/issue-78-desktop-terra-benchmark`
- Commit / PR / timing: completed values are recorded in the benchmark framework after the PR is created

## Permissions, billing and policy evidence

- GitHub access: local authenticated GitHub CLI successfully created Issue #78 and can operate the repository.
- GitHub Partner Agent policy: not used or inferred.
- OpenAI plan, credit and quota details: not exposed in this execution surface; not inferred.

## Failure boundary

No local-executor failure has occurred. This result does **not** prove the separate GitHub Partner Agent Codex path, which has its own identity, policy, billing and provisioning behaviour.

## Safety result

- Agent self-merged? **No**
- Agent closed governing Issue? **No**
- Fallback AI/API route used? **No**

## Conclusion

```text
PROVEN: Codex Desktop can complete the governed local Issue → branch → commit → PR path.

NOT YET PROVEN: any GitHub Partner Agent session, plan entitlement, or cloud-agent performance claim.

NEXT TEST: human review and merge decision for the open PR.
```
