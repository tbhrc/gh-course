# ChatGPT Web Executor Benchmark Evidence

**Benchmark Issue:** #53  
**Executor:** ChatGPT Web using the connected GitHub integration  
**Course:** GitHub Professional Operator — AI-First Founder Crash Course  
**Repository version observed:** `0.2.0`

## Launch path

The benchmark was started directly from ChatGPT Web after the user requested a comparable executor-speed benchmark. ChatGPT Web created Issue #53 first, read the repository contract, created an issue-linked branch, wrote this evidence file, and opened a draft Pull Request for review.

## Repository and Issue access

- Read root `AGENTS.md`: **yes**.
- Read Issue #53 task specification: **yes**, created and executed in the same governed Web session.
- Read `VERSION`: **yes**, value `0.2.0`.
- Read `knowledge-base/README.md`: **yes**, as required for substantial knowledge work.
- Repository context was accessed through the connected GitHub integration rather than a local clone.

## Capability evidence

| Capability | Result | Evidence |
|---|---|---|
| Create/read Issue | Proven | Issue #53 created before edits. |
| Read repository files | Proven | `AGENTS.md`, `VERSION`, and knowledge-base authority index read. |
| Create branch | Proven | `issue-53-chatgpt-web-benchmark`. |
| Write repository file | Proven | This file created on the issue-linked branch. |
| Commit | Proven | GitHub contents write produced a commit for this file. |
| Open PR | Proven | Draft PR opened to `main` after the substantive commit. |
| Request review | Proven | Human review requested after PR creation. |
| Inspect checks/Actions | Available | Connected GitHub tools expose workflow/check inspection; not required to generate this evidence file. |
| Issue/PR comments | Available | Connected GitHub tools support governed comments and review actions. |
| Local runtime/filesystem | Not used | This benchmark intentionally measures Web execution only. |

## Governance compliance

The run followed the repository contract:

```text
Issue #53
→ issue-53-chatgpt-web-benchmark
→ integration-tests/chatgpt-web.md
→ commit
→ draft Pull Request
→ human review
→ STOP before merge
```

No substantive change was made directly on `main`, and the benchmark PR is not self-merged.

## Provenance

The human-facing GitHub actor for repository writes is the authenticated `tbhrc` account operating through the connected ChatGPT GitHub integration. Exact commit and PR provenance should be read from the resulting GitHub objects rather than inferred from chat text.

## Timing method

Durable GitHub timestamps are the source of truth.

- **T0:** Issue #53 creation timestamp.
- **T1:** issue-linked branch creation event where observable.
- **T2:** draft PR creation timestamp.
- **T3:** substantive evidence commit timestamp.
- **T4:** review request / review-ready state timestamp.

The benchmark framework calculates elapsed time from those GitHub objects. Conversational estimates are not used as benchmark evidence.

## Reliability and overhead

- Entitlement/setup failure during timed execution: **none**.
- Failed GitHub write during timed execution: **none**.
- Retry required during timed execution: **none**.
- Extra agent session provisioning: **none**.
- Files changed for the comparable timed task: **exactly one**.

## Operational distinction

ChatGPT Web directly executed the governed GitHub operations in this benchmark; it did not merely dispatch the task to a downstream coding agent.

## Benchmark interpretation rule

Installed or connected capability is not sufficient proof. This run counts only operations physically demonstrated by Issue, branch, commit and Pull Request evidence.