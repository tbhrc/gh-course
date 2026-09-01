# Audit: GitHub Multi-Agent Orchestration Architecture (Issue #153)

**Status:** independent architecture review, not an implementation change.
**Governing issue:** [tbhrc/github-course#153](https://github.com/tbhrc/github-course/issues/153) — closed by this note's PR, per the Issue's own closing reference. Reconciliation and posting the verdict as the Issue comment remains with ChatGPT Web, as instructed by #153.
**Scope boundary respected:** no writes to `tbhrc/skills`, no changes to draft PR `tbhrc/skills#34`, no duplicate review of `tbhrc/github-course#152`.

## Access note (read before trusting section detail)

This session's GitHub credentials are scoped to `tbhrc/github-course` only. `tbhrc/skills` (issue #33, PR #34, PR #35), `tbhrc/ai-ops#7`, and `tbhrc/folderdesk-os` (both legacy `SKILL.md` files) all returned `403` on every read attempt. Findings below on those items are therefore built from the **verbatim secondhand descriptions already quoted inside `tbhrc/github-course#134`'s comments and `#153`'s own body** (which describe the Skill extraction, its stated legacy-rejection list, and the reviewer-routing rule intended for the Skill contract), plus this repository's `AGENTS.md` governance model and the full text of `#151`/PR `#152`. Anyone with `tbhrc/skills`/`tbhrc/ai-ops`/`tbhrc/folderdesk-os` access should verify sections **A, B, D and the deeper half of G** against the actual Skill body before finalising `skills#33`.

---

## Verdict: **PASS WITH CHANGES**

The direction is correct — GitHub-native orchestration replacing FolderDesk's custom allocator — but the contract needs explicit collision-safety and reviewer-routing wording before it can be trusted as a durable Skill, not just a description of current good behaviour.

---

## A. Ownership boundaries

The four-way split (`github-agent-workflow` = HOW, `github-power-user` = WHAT capability, `github-skill-builder` = Skill lifecycle, `github-multi-agent-orchestrator` = WHO/WHERE + reconciliation) is coherent **in principle**, but from the material available:

- **Missing responsibility:** none of the described Skills appear to own the *reconciliation evidence trail* — i.e., where the record lives that says "worker X finished, reviewer Y approved, dependency Z was satisfied, return path taken." `#134`'s own native-language mapping table assigns "evidence" to run/check/commit/PR/artefact, which is correct, but the orchestrator Skill must explicitly say it **reads** that evidence rather than maintaining a parallel status store. If `github-multi-agent-orchestrator`'s contract doesn't state "the only orchestration state is GitHub's own Issue/PR/Project/Actions state," a duplicate-dashboard risk (exactly what `#134` says FolderDesk's dashboard problem was) reappears one layer up.
- **Duplicate risk:** `github-agent-workflow` (HOW) and the orchestrator (WHO/WHERE) both plausibly touch "which agent should do this step." The boundary should be: `github-agent-workflow` teaches the mechanics of assigning/dispatching *one* agent to *one* unit of work; the orchestrator Skill owns *routing decisions across multiple* units of work and reconciling their outcomes. If both Skills separately describe assignment logic, that's duplication — the orchestrator should reference `github-agent-workflow` for the assignment mechanics rather than restate them.
- **Recommendation for the Skill contract:** add one explicit sentence: *"This Skill has no state of its own. It reads Issue/PR/Project/Actions state and writes routing decisions back into that same state (labels, assignees, comments) — it does not introduce a second dashboard, task store, or ontology."* This directly operationalises the principle already stated in `#134`'s comment 2.

## B. Parallelisation and collision safety

One-writer-per-scope + READY/IN FLIGHT/BLOCKED is a reasonable minimum, but as described it is a **status vocabulary**, not a **collision-prevention mechanism**. Edge cases that remain open:

1. **Race between "read READY" and "claim IN FLIGHT."** Two dispatchers (e.g. a human founder and an automated Project-status workflow) can both read a Ready item as unclaimed before either writes IN FLIGHT. GitHub gives an atomic primitive for exactly this: **assignee/label mutation is not transactional across two independent callers**, so the contract should mandate a single, deterministic claim step (e.g., "the dispatcher that successfully adds the agent's own label/assignee first owns the item; any other dispatcher must re-check state before acting, not before dispatching"). This repo's own workflows already separate `PROJECT_MANAGEMENT_TOKEN` from `AGENT_DISPATCH_TOKEN` (per stored repository memory), which is a good foundation for "only the dispatch workflow may flip READY→IN FLIGHT," but the Skill should say so explicitly.
2. **Stale branch overwrite across repos.** A cross-repo dependency (e.g. F.2 below) where Repo A's worker branch is rebased/force-pushed after Repo B already read A's commit SHA as a dependency reference is not covered by one-writer-per-scope, because the collision is *between* two repos' scopes, not within one. The contract needs a rule like: *"cross-repository dependencies are satisfied by referencing an immutable commit SHA or a merged/tagged state, never an in-flight branch tip."*
3. **BLOCKED with no expiry/owner.** If an item sits BLOCKED (e.g. waiting on `ai-ops#7`), nothing in the three-state model says who re-checks it or when. Recommend a fourth lightweight rule: BLOCKED items must carry the blocking reference (Issue/PR number) and are re-evaluated only when that reference's state changes — not on a timer, to avoid noisy polling.
4. **Two Issues with legitimately overlapping scope.** One-writer-per-scope assumes scopes are cleanly partitioned; in practice (this very Issue and #134 both touch orchestration) two Issues can describe overlapping ground. The contract should say scope conflicts are resolved by **Issue hierarchy** (Master/Stage linkage, per `AGENTS.md`'s existing model), not by the orchestrator inventing a tie-break rule of its own.

## C. Reviewer routing

The founder rule as stated is sound and is already operating correctly in practice — `#134`'s comment 3 and PR `#152`'s own description both confirm Codex auto-review fired on the sensitive secret-bridge PR and no duplicate reviewer was dispatched. The smallest reliable rule, distinguishing the four review types explicitly requested:

```text
PR opened/updated
→ check for automatic reviewer activity (e.g. Codex auto-review) on this PR
  → IN FLIGHT or already COMPLETED → do nothing further; automatic review is sufficient
  → NOT PRESENT, FAILED, or QUOTA-EXHAUSTED → dispatch exactly one deliberate reviewer
  → mismatched task (e.g. reviewer's competency doesn't fit the change, per D below) → dispatch exactly one deliberate reviewer, chosen for fit
→ regardless of the above, deterministic checks (CI/Actions/lint/test) always run — they are not "a reviewer" and never gate on the automatic/deliberate choice
→ executor self-review (the same agent re-checking its own diff before marking work done) always happens and never substitutes for either automatic or deliberate review
```

Key clarification the Skill contract should state explicitly: **"automatic reviewer activity" is detected by observing the PR's actual review/comment state, not assumed from configuration.** `AGENTS.md`'s own "Integration and Permission Evidence" section already establishes this exact discipline generally ("installed ≠ permission granted ≠ operation demonstrated") — the orchestrator should cite the same standard for reviewer routing specifically: don't skip dispatching a human/second reviewer because Codex is *configured*, only because Codex is *observed* to be actively or already reviewing.

## D. Provider/capacity routing

Nothing in the material reviewed hard-codes capacity as policy — `#134` explicitly frames current allocations (Claude available, Jules bounded to `skills#35`, Codex auto-reviewing `#152`) as founder-direction-driven runtime facts, consistent with the request. Missing factors worth adding to the routing inputs, based on evidence already present elsewhere in this repository:

- **Demonstrated capability, not installed capability** — directly reusable from `AGENTS.md`'s "Integration and Permission Evidence" rules; the orchestrator should not route to an agent merely because it's configured for a repo, only because it has demonstrated the specific operation needed (this repo has a live counter-example: the Claude workflow route in `#134` stopped safely because `AGENT_DISPATCH_TOKEN` wasn't configured — installed intent, unproven capability).
- **Permission/least-privilege fit** — which token/secret scope a worker needs (`PROJECT_MANAGEMENT_TOKEN` vs `AGENT_DISPATCH_TOKEN` are already kept separate per repository convention); routing to an agent that would require broadening a token's scope should be a negative signal, not incidental.
- **Trust tier for the specific PR sensitivity** — `#152` (secret-bridge PR) got Codex auto-review specifically because it's sensitive; the routing model should let PR sensitivity (e.g. touches secrets/workflows/permissions vs touches docs/tests) raise the bar for which reviewer/executor is acceptable, independent of who merely has spare capacity.
- **Cost** is explicitly out of scope for this audit's evidence base (no cost data was available in any accessible source) — flag as an open input, not a confirmed one.

## E. Repository secret/control-plane boundary

`#151`/PR `#152` (fully reviewed) is a well-scoped **temporary** measure: repo-level replication of `AGENT_DISPATCH_TOKEN`/`PROJECT_MANAGEMENT_TOKEN` into active repos, explicitly framed as a bridge until `tbhrc/ai-ops#7` delivers organisation-level secret management. Its stated security rules (never print/persist secret values, fail closed if source secret missing, least privilege, don't overwrite unrelated secrets, explicit durable trigger only) are the right shape for a stopgap.

- **Confirmed:** organisation-level secret management belongs in `ai-ops#7`. The orchestrator Skill should not absorb secret-distribution logic; `#151` itself already states this boundary ("pending org-level secrets via `ai-ops#7`").
- **What the orchestrator *does* need to know, without becoming a secrets Skill:** a single boundary fact — *"a worker/reviewer with a missing or expired credential is a BLOCKED/failed-dispatch condition to detect and report, not a condition to route around by broadening scope or minting new secrets."* This is exactly the failure mode `#134` comment 2 already recorded (Claude route stopped safely on missing `AGENT_DISPATCH_TOKEN`) — the orchestrator should treat that as the *correct* behaviour to preserve, and the Skill contract should say so, rather than silently document a workaround.
- **Recommended contract line:** *"This Skill never creates, reads, or replicates secrets. It observes dispatch/permission failures as a routing signal (retry elsewhere, mark BLOCKED, or escalate) and defers all secret lifecycle to the organisation's control plane (`ai-ops`)."*

## F. Cross-repository ecosystem — 3 realistic examples

1. **Reciprocal Skill-graph update touches two repos.**
   Owning repo: `tbhrc/skills` (canonical Skill content). Worker: Jules (already the bounded writer, per `skills#35`). Reviewer: automatic reviewer if configured for `tbhrc/skills`, else a deliberate second opinion (not Claude, to avoid the collision this Issue itself is designed to prevent). Dependency: none upstream; downstream, `github-course`'s own `skills/github-power-user/SKILL.md` (a course-adapted snapshot, currently `v1.8.0`, explicitly diverged from canonical) needs a follow-up sync Issue in `github-course` once the canonical Skill changes — that sync is a *separate*, later-dispatched item, not something the orchestrator should bundle into Jules' PR. Return path: `skills#35` merges → new Issue opened in `github-course` referencing the version delta → course maintainer/agent updates the local snapshot.

2. **Secret/control-plane migration off the temporary bridge.**
   Owning repo: `tbhrc/ai-ops` (per `#151`'s own stated intent). Worker: whichever agent has org-admin-scoped credentials (likely a human-supervised step given the sensitivity — this is a case where "capacity" routing in D should be overridden by "trust tier," per the sensitivity factor above). Reviewer: deliberate, not automatic — org-level secret changes are exactly the "mismatched task" case in C where default auto-review is insufficient and a deliberate second opinion is required. Dependency: `github-course#151`/PR `#152` must be the reference implementation the `ai-ops` migration replaces — the orchestrator's job is to open the `ai-ops` Issue with a link back to `#151` as prior art, not to re-derive the design. Return path: once `ai-ops#7` ships org-level secrets, a follow-up PR in `github-course` removes the repo-level bridge secrets and closes `#151`.

3. **Hiring-pipeline automation change spanning `now-hiring` and `tb`.**
   Owning repo: `tbhrc/now-hiring` (the automation itself, as evidenced by the live Jules-driven PR #64 cited in `#134` comment 2). Worker: whichever agent already has proven capability on that repo (Jules had live proof there per `#134`; Claude's dispatch there failed safely on a missing token — a concrete instance of the D factor above in action). Reviewer: automatic if `now-hiring` has one configured; otherwise deliberate. Dependency: if the change touches shared candidate/employer data model concepts that also live in `tbhrc/tb`, the orchestrator must NOT let the `now-hiring` worker edit `tb` directly — it opens a linked Issue in `tb` and treats it as a separate scope (one-writer-per-scope, per B). Return path: `now-hiring` PR merges → linked `tb` Issue is dispatched independently, referencing the merged commit SHA (not a branch tip, per the B.2 stale-reference rule) as its dependency evidence.

## G. Legacy rejection test

Concepts that must **not** reappear in GitHub-native orchestration (synthesised from `#134` comment 2's explicit rejection list, which itself names the FolderDesk concepts to avoid, cross-checked against this repository's own `AGENTS.md` and `github-first-folderdesk-capability-ownership.md`):

- A custom task/work-item store or allocator that duplicates Issues/Projects as the record of what work exists and who owns it.
- `WebStream`/`LocalStream` (or any other bespoke execution-venue ontology) in place of GitHub's native control-plane vs runner/executor distinction.
- `W###`/`L###` task-handoff numbering as a parallel identifier scheme — Issue/PR numbers and Project item IDs are already the durable identifiers.
- A second orchestration dashboard (HTML or otherwise) that re-presents Issue/Project/Actions state instead of linking to it.
- Repo-evidence "reconciliation" as a manual narrative log, rather than relying on commit/PR/check history as the evidence trail.
- Custom Git/version mechanics that duplicate what branches, PRs, tags and Releases already do.
- Connector/routing logic that hard-codes which "connector" handles a request, rather than treating provider/capacity as runtime input (per D).

Not independently verifiable from this session (flagged for someone with `tbhrc/folderdesk-os` access): the literal content of `larry-orchestrator/SKILL.md` and `specialist-dispatch-orchestration/SKILL.md`. Confirm neither introduces a "specialist dispatch" concept that's actually a duplicate of GitHub's own label/assignee/CODEOWNERS routing before treating this list as exhaustive.

---

## Exact recommended additions/removals to the Skill contract (`tbhrc/skills#33`)

**Add:**
1. A "no parallel state" clause (Section A) — orchestrator reads/writes only Issue/PR/Project/Actions state.
2. An atomic-claim rule for READY→IN FLIGHT (Section B.1) and an immutable-reference rule for cross-repo dependencies (Section B.2) — plain SHA/tag/merge references only, never branch tips.
3. A BLOCKED re-evaluation rule keyed to the blocking reference's state, not a timer (Section B.3).
4. The four-way reviewer-routing decision tree from Section C, with "automatic reviewer activity" defined as *observed*, not *configured*.
5. Demonstrated-capability and permission-scope-fit as explicit routing inputs alongside capacity (Section D).
6. The one-line secret-boundary clause from Section E (missing/expired credential = routing signal, never a reason to broaden scope).
7. A scope-conflict resolution rule that defers to Issue Master/Stage hierarchy rather than inventing a new tie-break (Section B.4).

**Remove/avoid:** nothing needs removing from the Skill as described — no evidence surfaced of a legacy concept already present in the draft. This is an "add missing guardrails" verdict, not a "roll back a mistake" verdict.

## Confirmation for the acceptance criteria

This note does not modify `tbhrc/skills`, does not touch PR `tbhrc/skills#34`, and does not add a duplicate reviewer to PR `#152`. It is intended as source text for the Issue-comment deliverable that `#153` requests; the reconciler (ChatGPT Web) should copy the verdict and findings above into a comment on `tbhrc/github-course#153`, since this session's credentials could not create that comment directly.
