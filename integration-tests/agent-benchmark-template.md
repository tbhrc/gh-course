# Agent Integration Benchmark — TEMPLATE

## Identity

- Provider / agent:
- Governing Issue:
- Benchmark date:
- GitHub plan / Copilot plan at test time:
- Triggered by:
- Dispatch workflow / run:

## Objective

State the single capability being tested.

## Expected flow

```text
ChatGPT Web / GitHub event
→ deterministic dispatch
→ agent assignment
→ agent/provider session
→ issue-linked branch
→ commits
→ PR
→ checks / review
→ merge/closure only when the governing benchmark requires full lifecycle
```

## Proof ladder

| Layer | Result | Evidence |
| --- | --- | --- |
| Trigger created | pending | |
| Workflow / request ran | pending | |
| Credential present | pending | |
| Assignment accepted | pending | |
| Agent session created | pending | |
| Branch created | pending | |
| Commit(s) created | pending | |
| PR opened | pending | |
| Checks/statuses observed | pending | |
| Review-ready state reached | pending | |
| Merge completed when required | n/a/pending | |
| Governing Issue closed when required | n/a/pending | |

## Timing evidence

Record durable timestamps only. Do **not** call total elapsed time “AI thinking time”.

| Marker | Timestamp / duration | Evidence source |
| --- | --- | --- |
| T0 operator launch | | |
| C1 runner/provider accepted | | |
| D1 deterministic assignment/handoff accepted | | |
| A0 AI/CLI process start, if observable | | |
| A1 first substantive agent/model output | | |
| T2 PR created | | |
| T4 review-ready | | |
| T5 merge, if required | | |
| T6 Issue close, if required | | |
| Post-merge automation/deployment | | |

### Timing classification

- Control / runner latency:
- Deterministic orchestration / handoff:
- Observable provider / agent interval:
- AI-process duration inside Actions, if directly timed:
- Deterministic delivery / post-processing:
- Pure model compute: **unknown unless provider telemetry proves it**
- Review-ready wall clock:
- Full-lifecycle wall clock, if applicable:

For cloud agents, provider queueing, provisioning, repository indexing, inference, tools and tests may be inseparable. Mark the combined interval accurately rather than estimating model-active time.

## Provenance

- Triggering GitHub identity:
- Assignment/API actor:
- Agent/bot identity:
- Session ID/link:
- Branch:
- Commit author(s):
- Committer(s):
- PR author:
- PR URL:
- Checks:
- Comments/reviews:

## Permissions / billing / policy evidence

Record only what is observable. Do not infer usage merely from plan availability.

- Plan/entitlement evidence:
- AI-credit evidence:
- Permission/policy evidence:
- Quota/rate-limit evidence:

## Failure boundary

If the benchmark stops, record the **first failed layer**, exact HTTP/status/error text where safe, and what remained unproven.

## Safety result

- Agent self-merged? **Must follow governing benchmark mode**
- Agent closed governing Issue? **Must follow governing benchmark mode**
- Fallback AI/API route used? **Must be no unless explicitly authorised**

## Conclusion

Use precise language:

```text
PROVEN:

NOT YET PROVEN:

NEXT TEST:
```
