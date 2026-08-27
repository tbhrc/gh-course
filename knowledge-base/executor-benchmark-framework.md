# Executor Benchmark Framework

**Governing Issue:** #53  
**Parent AI benchmark:** #23  
**Last verified:** 2026-08-27

## Purpose

Measure when ChatGPT Web, cloud coding agents, partner agents, Agentic Workflow engines, or local coding agents provide a real execution advantage.

The benchmark exists to support one routing rule:

> Delegate for capability or demonstrated efficiency — not merely because another agent is available.

## Standard benchmark task

Use a bounded GitHub task with materially equivalent requirements:

1. Read root `AGENTS.md`.
2. Inspect enough repository context to identify the course and current version.
3. Create exactly one executor evidence file under `integration-tests/`.
4. Record identity, launch path, Issue/repository access, branch/commit/PR capability, comments/check visibility, limitations, and provenance.
5. Work on a non-main branch.
6. Commit the evidence.
7. Open a draft/open PR to `main`.
8. Stop before merge.

Executor evidence files:

- ChatGPT Web: `integration-tests/chatgpt-web.md`
- GitHub Copilot: `integration-tests/github-copilot.md`
- OpenAI Codex: `integration-tests/codex.md`
- Claude: `integration-tests/claude.md`
- Claude Code (Claude Desktop / Code surface): `integration-tests/claude-code-desktop.md`
- Google Jules: `integration-tests/jules.md`
- Gemini CLI/API: `integration-tests/gemini.md`
- Local agents: `integration-tests/<agent>-local.md`

## Clock model

Use durable GitHub/email timestamps, never conversational estimates.

| Marker | Definition |
|---|---|
| T0 | Executor benchmark launch: Issue creation for direct Web execution, or fresh operational dispatch/workflow start for an agent |
| T1 | Session/agent branch becomes observable where available |
| T2 | PR created |
| T3 | First substantive work commit |
| T4 | Review requested or final review-ready output |

### Primary speed metric

`End-to-end time = T4 - T0`

Cloud-agent provisioning and startup latency count because they affect real operator productivity.

### Secondary metrics

- `T2 - T0` — time to visible PR/session
- `T3 - T0` — time to first substantive output
- `T4 - T3` — finishing/review overhead
- failed operations/retries
- human interventions after launch
- files changed
- commits produced
- setup/configuration events before an operational run

## 100-point scoring matrix

| Dimension | Weight | Scoring rule |
|---|---:|---|
| End-to-end speed | 30 | `30 × fastest operational time / executor time`, capped at 30 |
| Task fidelity | 20 | Exact requested scope, file, branch, PR and stop conditions |
| Output quality | 15 | Required evidence completeness, factual accuracy and clarity |
| Reliability | 10 | Operational-run errors/retries/recovery |
| Autonomy | 10 | Human steering required after launch |
| Governance compliance | 5 | Issue → branch → commit → PR; no direct-main/self-merge |
| Provenance/observability | 5 | Exact actor/session/branch/commit/PR evidence visible |
| Efficiency/overhead | 5 | Avoided unnecessary steps, files, duplicated work and preventable calls |

## Detailed scoring rules

### Task fidelity — 20

- 5: correct requested evidence file/scope
- 3: Issue/task specification read and followed
- 3: non-main branch used
- 3: meaningful commit produced
- 3: PR opened to correct base
- 3: stop condition respected; no self-merge/unauthorised close

### Output quality — 15

- 8: all required benchmark fields answered
- 4: factual claims match observable evidence
- 3: concise, clear and usable evidence

Score the **first review-ready snapshot**. Later corrections prompted by human review do not retroactively improve the original quality score or execution time.

### Reliability — 10

- 10: no operational-run errors or retries
- 8: one recoverable error/retry
- 6: two recoverable errors/retries
- 3: repeated intervention required
- 0: failed to produce review-ready output

Entitlement/setup failures before the first operational run are tracked as **setup friction**, not execution reliability.

### Autonomy — 10

- 10: no human steering after launch
- 7: one human correction/intervention before review-ready output
- 4: multiple interventions before review-ready output
- 0: human had to complete the task

Post-T4 code review and requested corrections are normal review activity and do not change the original autonomy score.

### Governance — 5

- 5: complete governed path and stop condition
- 3: minor governance deviation with no main-branch risk
- 0: direct-main/self-merge or missing durable work contract

### Provenance — 5

- 5: distinct executor identity/session plus branch/commit/PR/timestamps visible
- 4: durable GitHub objects visible but executor and human identity partially collapse
- 2: partial provenance
- 0: unverifiable

### Efficiency/overhead — 5

- 5: minimal necessary operations
- 4: one minor avoidable action/correction
- 3: noticeable startup/process overhead
- 1: substantial unnecessary work
- 0: waste materially undermines usefulness

## Setup friction — tracked separately

Do not mix account/configuration setup with runtime performance. Record:

- plan/entitlement required
- policy toggles required
- app installation/authorisation
- token/secret setup
- failed pre-operational attempts
- human configuration steps
- wrong or stale agent identities/routes

This lets the benchmark answer two different questions:

1. **How hard is the executor to make operational?**
2. **Once operational, how efficiently does it complete work?**

### Setup-friction evidence observed so far

| Executor | Setup friction before operational run |
|---|---|
| ChatGPT Web | Connected GitHub integration already operational. |
| GitHub Copilot | Free-plan native cloud assignment returned 403; Copilot Pro upgrade unlocked assignment. |
| OpenAI Codex | Paid Copilot was not enough until **Allow Codex coding agent** Partner Agent policy was enabled. |
| Anthropic Claude | Partner policy was enabled, but first dispatcher used stale/older `claude[bot]` identity and returned 403; current Partner Agent identity `anthropic-code-agent[bot]` succeeded. |
| Google Jules | Account-wide Jules GitHub authorisation was required. The first operational Jules run was accidentally triggered from Gemini Issue #26 and produced PR #62; it is preserved as activation evidence but excluded from clean scoring. Clean Issue #63 then launched successfully through the `jules` label. |
| Google Gemini CLI | Repository secret `GEMINI_API_KEY` is now configured and authenticated successfully. Run `33092569081` installed Gemini CLI `0.57.0` and reached model `gemini-3.5-flash`, then failed with HTTP 429 / daily free-tier quota exhaustion before producing a branch/commit/PR. Runtime score remains pending. |
| Claude Code (Claude Desktop / Code surface) | No setup friction observed for this run: the session already held direct GitHub MCP access (git credentials + GitHub tools scoped to `tbhrc/github-course`) before the benchmark Issue was created — no plan upgrade, policy toggle, app install or token step occurred as part of it. This also means T1 (branch/session observable) predates T0 (Issue created); see the warm-session caveat below. |

## Baseline results — bounded one-file evidence task

### Durable timing evidence

| Executor | T0 | PR | First substantive output | Review-ready | End-to-end |
|---|---|---|---|---|---:|
| ChatGPT Web | Issue #53 created `14:24:06Z` | PR #54 `14:25:39Z` | commit `9453cb6` `14:25:23Z` | corrected final commit `5330f63` `14:26:38Z` | **2m32s / 152s** |
| Anthropic Claude | dispatch run `33083260139` `14:37:24Z` | PR #58 `14:37:37Z` | commit `79fdb89` notification `14:39:41Z` | review request `14:40:39Z` | **3m15s / 195s** |
| OpenAI Codex | dispatch run `33081457803` `14:17:57Z` | PR #52 `14:18:08Z` | commit `b19574f` notification `14:20:43Z` | review request `14:21:19Z` | **3m22s / 202s** |
| GitHub Copilot | dispatch run `33080345287` `14:05:45Z` | PR #51 `14:05:56Z` | commit `934590d` notification `14:08:32Z` | review request `14:09:30Z` | **3m45s / 225s** |
| Google Jules | `jules` label on #63 `16:40:39Z` | PR #66 `16:45:46Z` | commit `8d712e3` `16:45:41Z` | open non-draft PR #66 `16:45:46Z` | **5m07s / 307s** |
| Claude Code (Claude Desktop / Code surface) | Issue #72 created `17:08:48Z` | PR #73 `17:10:09Z` | commit `5b5f874` `17:09:48Z` | open non-draft PR #73 `17:10:19Z` | **1m31s / 91s** ⚠ warm session, see caveat |
| Gemini CLI/API | run `33092569081` reached authenticated inference path | — | — | — | pending quota/billing |
| Local coding agent | — | — | — | — | pending |

### Jules clean-run timing details

- T0: `16:40:39Z` — `jules` label applied to Issue #63.
- T1: `16:40:44Z` — `google-labs-jules[bot]` accepted the task and published Jules task ID `10893079083414901351`.
- T3: `16:45:41Z` — substantive commit `8d712e38facb5e88f86ca3a88b24688b853ef120`.
- T2/T4: `16:45:46Z` — PR #66 created open and non-draft, making the first review-ready snapshot visible.

## Initial scored leaderboard

Speed uses the fastest current operational result. This is now **Claude Code (Claude Desktop / Code surface) at 91 seconds**, which is flagged with a warm-session caveat below — see "Claude Code timing caveat" before treating this ranking as final. All other executors' Speed/Total scores are recalculated against this new fastest figure per the framework's own scoring rule (`30 × fastest / executor time`); their Fidelity/Quality/Reliability/Autonomy/Governance/Provenance/Efficiency sub-scores are unchanged from the original assessment.

| Executor | Speed /30 | Fidelity /20 | Quality /15 | Reliability /10 | Autonomy /10 | Governance /5 | Provenance /5 | Efficiency /5 | Total /100 |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| **Claude Code (Claude Desktop / Code surface)** | 30.0 | 20 | 14 | 10 | 10 | 5 | 4 | 5 | **98.0** ⚠ |
| **ChatGPT Web** | 18.0 | 20 | 14 | 8 | 10 | 5 | 4 | 4 | **83.0** |
| **OpenAI Codex** | 13.5 | 20 | 15 | 10 | 10 | 5 | 5 | 3 | **81.5** |
| **Anthropic Claude** | 14.0 | 20 | 13 | 10 | 10 | 5 | 5 | 3 | **80.0** |
| **GitHub Copilot** | 12.1 | 20 | 14 | 10 | 10 | 5 | 5 | 3 | **79.1** |
| **Google Jules** | 8.9 | 20 | 12 | 10 | 10 | 3 | 4 | 4 | **71.9** |
| Gemini CLI/API | pending | pending | pending | pending | pending | pending | pending | pending | pending |
| Local coding agent | pending | pending | pending | pending | pending | pending | pending | pending | pending |

### Claude Code scoring notes

- **Provenance scored 4/5, not 5/5.** This run's Issue/PR actor is the authenticated human account `tbhrc`, not a distinct bot identity — matching the rubric's "durable GitHub objects visible but executor and human identity partially collapse" tier. Commit author/committer (`Claude <noreply@anthropic.com>`) remains distinct.
- **Reliability 10/10, Autonomy 10/10, Efficiency 5/5**: no errors/retries, no human steering after launch, no wasted steps observed.
- **Quality scored 14/15**, docking one point for length/conciseness relative to the rubric's "concise, clear and usable" criterion — not for any factual error.

### ⚠ Claude Code timing caveat — read before using this ranking

Unlike every other row in this table, this run's **T1 (branch/session observable) predates T0 (Issue created)**: `17:03:53Z` vs `17:08:48Z`. The Claude Code session already had an open branch and authenticated GitHub access before the benchmark task began, because the same session had just finished an unrelated prior task in this repository.

Every other executor's T0 corresponds to a genuinely cold trigger (a fresh Issue that caused a dispatch, assignment, or first Web action). Claude Code's 91-second result therefore measures **warm-session task execution**, not cold-start time-to-first-productive-action, and is **not directly comparable** to the other rows without qualification. It should be read as "how fast can this surface execute a small, well-specified task once it is already open and authenticated," which is a real and useful number for an operator already working in a live Claude Code session — but it overstates Claude Code's advantage if generalised to "fastest executor to spin up and complete this task from nothing."

**Do not** use this single warm-session result alone to change routing policy in favour of Claude Code over the dispatch-based executors. A cold-start re-run (fresh session, no pre-existing branch) is required before this row can be treated as comparable to the others — see "Next agents / follow-ups."

### Claude quality note

Claude's first review-ready snapshot satisfied the requested one-file scope and governance path, but its evidence contained material factual/provenance errors: it incorrectly described the GitHub Partner Agent as unrelated to the Copilot plan/billing path and omitted the deterministic Actions assignment run that launched the operational session. A post-T4 review requested corrections. The benchmark score therefore uses 13/15 quality and preserves the original 195-second runtime.

### Jules quality and governance note

Jules completed the clean benchmark autonomously and produced the correct dedicated `integration-tests/jules.md` file on its own branch, but the first review-ready snapshot contained several factual/provenance errors:

- it called #23 the governing/dedicated Jules Issue instead of #63;
- it stated a visible Gemini-family model even though no specific model was observably exposed;
- it claimed the PR author was `google-labs-jules[bot]`, while GitHub records the commit author/committer as the Jules bot but PR author as `tbhrc`;
- it referenced a non-existent/stale `.github/workflows/dispatch-gemini.yml` path instead of `.github/workflows/benchmark-gemini.yml`;
- it claimed verification/pre-commit checks without durable proof;
- its first PR body used `Fixes #63` despite the benchmark's explicit stop-before-close requirement.

The PR remained open and unmerged, so there was no main-branch risk. The body was corrected after T4 to `Refs #63`, and a post-T4 review comment requested factual corrections. These later corrections do not improve the original 307-second runtime or first-snapshot quality score.

## Interpretation of the first result

For this small one-file GitHub evidence task, ChatGPT Web remains the fastest **cold-start** executor despite one recoverable self-review error and one evidence correction.

The cloud agents showed useful autonomous behaviour and stronger distinct-agent provenance, but their session provisioning/planning overhead made them slower for this task class. Among the measured cloud coding agents, Claude (Partner Agent) is currently fastest by end-to-end time; Codex scores highest overall among cloud agents because its first evidence snapshot was more accurate; Jules is currently the slowest measured cloud agent for this bounded task and lost additional points for first-snapshot factual/provenance errors and the unsafe closing keyword.

Claude Code (Claude Desktop / Code surface) produced the fastest raw end-to-end number of any executor measured so far (91s), but that run started from an already-open, already-authenticated session — see the warm-session caveat above. It is not yet a fair like-for-like comparison against the cold-start numbers and should be treated as a distinct, provisional data point pending a cold-start re-run.

This result must **not** be generalised to large coding, test, build, refactor or local-runtime tasks until those task classes are benchmarked separately.

## Execution-mode fairness

Not every executor reaches GitHub through the same product surface:

- ChatGPT Web: direct connected GitHub operations.
- GitHub Copilot: native GitHub cloud coding agent.
- Claude/Codex: GitHub Partner Agents powered through Copilot.
- Google Jules: Google Labs cloud coding agent triggered through a GitHub Issue + `jules` label and Jules GitHub App.
- Gemini CLI/API: Gemini CLI inside GitHub Actions / Agentic Workflow class, authenticated by `GEMINI_API_KEY` and subject to Gemini API quota/billing.
- Local agents: local runtime with GitHub as durable control/evidence plane.

The benchmark compares operator-visible end-to-end productivity while preserving execution mode as a separate field. Do not imply identical architecture merely because two executors receive the same task.

## Future benchmark classes

Run the same executor matrix across at least these classes:

1. GitHub administration / documentation
2. Small code change
3. Multi-file refactor
4. Build/test/debug task
5. Repository-wide research
6. Actions/workflow change
7. Local-runtime/filesystem task

A routing policy should be changed only when repeated evidence shows a meaningful advantage by task class.

## Next agents / follow-ups

- Jules: clean benchmark #63 produced PR #66 in 307 seconds. Correct factual/provenance issues before merge; keep the first snapshot score unchanged.
- Gemini CLI/API: Issue #26 has valid `GEMINI_API_KEY` authentication and reached `gemini-3.5-flash`; retry after free quota reset or enable paid Gemini API billing, then score only when a governed branch/commit/PR is produced.
- Local agents: benchmark later with the same T0–T4 clock and identical evidence requirements.
- Claude Code (Claude Desktop / Code surface): re-run the benchmark from a cold-start session (no pre-existing branch, no prior task in the same session) so T1 follows T0 like every other row, and record that figure alongside the existing warm-session 91s result rather than replacing it.

## Governing principle

> Fastest capable executor wins only when quality, governance and reliability remain acceptable.
