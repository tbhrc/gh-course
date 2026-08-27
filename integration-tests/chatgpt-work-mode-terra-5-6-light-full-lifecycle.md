# ChatGPT Work Mode — GPT-5.6 Terra light: full-lifecycle benchmark

**Governing Issue:** #80  
**Parent benchmark:** #23  
**Superseded partial run:** #74 / PR #75 — excluded  
**Benchmark class:** GitHub administration / documentation  
**Repository version inspected:** `0.2.0`

## Executor identity

| Field | Observed value |
|---|---|
| Executor | ChatGPT Work Mode |
| Model | GPT-5.6 Terra |
| Surface | light Work Mode surface |
| Execution mode | Direct connected GitHub operations |
| Authenticated GitHub actor | `tbhrc` |
| Governing Issue (T0) | #80, created `2026-08-27T17:22:49Z` |
| Branch | `issue-80-chatgpt-work-mode-full-lifecycle` |

## Scope and stop condition

This run must complete the full governed path:

```
Issue → branch → commit → PR → review → merge → Issue closure
```

No repository file is changed on `main` directly. The PR must use `Closes #80`; GitHub merge/closure objects are the authority for final timing.

## Capability evidence at first commit

- Root `AGENTS.md`, `VERSION`, and the benchmark framework read.
- Issue and issue-linked branch created.
- This is the required single executor evidence file.
- Model identity is user-specified runtime context; GitHub independently verifies only the actor and durable objects.
- The prior 87-second #74 result is invalid because it stopped before merge/Issue closure.
