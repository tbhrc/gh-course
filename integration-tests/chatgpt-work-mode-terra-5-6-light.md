# ChatGPT Work Mode — GPT-5.6 Terra (light surface) benchmark

**Governing Issue:** #74  
**Parent benchmark:** #23  
**Framework:** `knowledge-base/executor-benchmark-framework.md`  
**Benchmark class:** GitHub administration / documentation — bounded one-file evidence task  
**Repository version inspected:** `0.2.0`

## Identity and launch path

| Field | Observed value |
|---|---|
| Executor | ChatGPT Work Mode |
| Model | GPT-5.6 Terra |
| Surface | light Work Mode surface |
| Execution mode | Direct connected GitHub operations |
| Launch object (T0) | Issue #74, created `2026-08-27T17:10:21Z` |
| Issue access | Read/write demonstrated |
| Repository access | Read/write demonstrated through the connected GitHub surface |
| AGENTS.md | Read before execution |
| Branch | `issue-74-chatgpt-work-mode-terra-benchmark` |
| Default branch mutation | Not used |

## Required capability evidence

| Capability | Result | Evidence |
|---|---|---|
| Read repository instructions | ✅ | Root `AGENTS.md` read |
| Inspect current version | ✅ | `VERSION` read as `0.2.0` |
| Create governing Issue | ✅ | #74 |
| Create issue-linked branch | ✅ | `issue-74-chatgpt-work-mode-terra-benchmark` |
| Create evidence file | ✅ | This file |
| Commit | ✅ | GitHub commit containing this file |
| Open PR | Pending at this commit | Recorded in the linked PR after creation |
| View/update canonical matrix | In progress | `knowledge-base/executor-benchmark-framework.md` |
| Self-merge / close Issue | Not attempted | Explicit stop condition |

## Timing and observations

| Marker | Evidence |
|---|---|
| T0 | Issue #74 created `2026-08-27T17:10:21Z` |
| T1 | Branch creation demonstrated; this connector does not expose a durable branch-creation timestamp |
| T3 | This commit is the first substantive output; its GitHub commit timestamp is authoritative |
| T2 | Pending PR creation |
| T4 | Pending final matrix update/review-ready PR snapshot |

## Errors, retries and limitations

- No execution error or retry observed before this first evidence commit.
- This benchmark proves connected GitHub operations on this Work Mode surface only. It does not prove local-runtime, Actions, cloud coding-agent, deployment, or external service authority.
- “Terra” and “light surface” are recorded as the user-specified runtime identity; GitHub itself does not independently attest model identity.

## Provenance

GitHub will expose the Issue, branch, commits and PR. The connector identifies the authenticated GitHub actor, not a separate model principal; therefore distinct model provenance is partial rather than independently cryptographically verifiable.
