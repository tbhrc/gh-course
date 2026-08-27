# Learning Note — Multi-Agent GitHub Benchmark Programme

**Student:** David  
**Date:** 27 August 2026  
**Parent benchmark:** #23  
**Canonical comparison:** `knowledge-base/executor-benchmark-framework.md`

## Starting point

David began the AI-integration work with strong curiosity about whether GitHub could become a shared control plane for several AI agents, but the practical boundaries between:

- GitHub Actions;
- GitHub Copilot;
- partner coding agents;
- Google Gemini/Jules;
- connector actions;
- provider plans/policies;

were not yet clear.

Early benchmark attempts repeatedly demonstrated that **installed/authorised** was not enough to prove operational agent execution.

## Key mental models learned

### 1. One control plane can contain several execution architectures

```text
ChatGPT Web
→ direct connected GitHub operations

GitHub Copilot
→ native cloud coding agent

Codex / Claude
→ GitHub Partner Agents

Google Jules
→ Jules GitHub App + cloud task

Gemini CLI/API
→ GitHub Actions + Gemini credential/API route
```

The same GitHub Issue/PR governance model can wrap different downstream execution mechanisms.

### 2. Setup friction and runtime performance are different measurements

A failed entitlement, policy toggle, credential or bot identity should be recorded as **setup friction** when it happens before an operational run.

Once the executor is operational, benchmark runtime separately.

### 3. Exact provenance matters

The course learned to distinguish:

- user/trigger identity;
- GitHub App identity;
- workflow bot;
- coding-agent identity;
- commit author/committer;
- PR author.

A connector performing an API action is not proof that a coding agent executed.

### 4. First review-ready output is the fair quality snapshot

Later human corrections do not retroactively improve an agent’s original score or speed.

This became important with Jules: the agent completed autonomously but its first evidence file contained several factual/provenance errors.

## Current bounded benchmark results

| Executor | End-to-end | Score /100 |
| --- | ---: | ---: |
| ChatGPT Web | 152s | **95.0** |
| OpenAI Codex | 202s | **90.6** |
| Anthropic Claude | 195s | **89.4** |
| GitHub Copilot | 225s | **87.3** |
| Google Jules | 307s | **77.9** |
| Gemini CLI/API | pending | pending |

These results apply only to the small bounded evidence task used by the benchmark.

## Proven operational outcomes

### ChatGPT Web

Proven as a strong GitHub-native control/execution surface for small repository operations through the connected GitHub App.

### GitHub Copilot cloud agent

The initial Free-plan route hit 403. After the required entitlement became available, the clean benchmark produced its own branch, commit and PR.

### OpenAI Codex

Copilot entitlement alone was not enough. Enabling the **Allow Codex coding agent** Partner Agent policy removed the remaining boundary and produced a governed Codex branch/commit/PR.

### Anthropic Claude

The first dispatcher used a stale/older Claude bot identity and failed. The corrected current Partner Agent identity succeeded and produced a governed branch/commit/PR.

### Google Jules

The first Jules run was accidentally triggered from Gemini Issue #26. That proved Jules activation but contaminated benchmark provenance, so it was excluded from clean scoring.

A dedicated Issue #63 then produced a clean Jules task, branch, commit and PR #66.

### Gemini CLI/API

Repository secret `GEMINI_API_KEY` is correctly configured. The benchmark reached Gemini CLI/model inference and then stopped with HTTP 429 / daily free-tier quota exhaustion before a governed branch/commit/PR was produced.

## Important correction — Jules is not Gemini API evidence

The accidental reuse of Issue #26 created a strong course lesson:

```text
same provider family
≠
same executor
≠
same benchmark lane
```

Correct separation:

```text
#26 = Gemini CLI/API
#63 = Google Jules coding agent
```

## David’s demonstrated learning

David materially contributed to the architecture by:

- insisting on separate executor evidence rather than broad “AI integration works” claims;
- challenging blocked routes and asking whether another execution mode existed;
- recognising GitHub as a control plane that can route different specialised workers;
- focusing on automation that simplifies founder operation rather than adding orchestration for its own sake;
- noticing when the wrong Issue contaminated benchmark provenance;
- requiring the benchmark results to be maintained as a durable comparison rather than scattered chat claims.

## Evidence level

**Strong conceptual/architectural progress; partial operational mastery.**

David has followed and challenged live benchmark work, but the coding-agent branch/PR runs were largely executed by agents/coach infrastructure. This does not yet prove he can personally configure, diagnose and review every executor route unaided.

## Remaining mastery evidence

David should be able to:

1. explain direct assignment vs deterministic dispatch vs AI inference;
2. identify which identity actually performed an action from GitHub evidence;
3. diagnose 401 / 403 / 429 / runtime / PR-quality failures;
4. review an AI-authored PR and identify unsupported factual/provenance claims;
5. select an executor based on task capability and benchmark evidence rather than novelty;
6. explain why one benchmark score cannot be generalised to every task class.

## Reusable course insight

> **Fastest capable executor wins only when quality, governance and reliability remain acceptable.**
