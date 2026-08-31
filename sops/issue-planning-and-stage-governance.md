# Issue Planning and Stage Governance

## Purpose

Make GitHub Issues the live execution control plane for substantive human/AI work.

The governing rule is:

> **Checklist first. Execution second.**

A substantive Issue is not a placeholder or short summary. It must contain enough context, sequencing and acceptance detail that a fresh authorised agent can continue the work without depending on chat history.

## Standard substantive Issue

Before substantive implementation begins, the controlling Issue should contain:

1. **Objective** — the outcome to achieve.
2. **Why / context** — founder intent, problem, constraints and material decisions.
3. **Scope** — included and explicitly excluded work.
4. **Implementation checklist** — bounded work items to perform.
5. **Verification checklist** — how material outputs will be checked.
6. **Dependencies / sequence** — prerequisites and ordering where relevant.
7. **Final outcome / acceptance criteria** — everything that must be true before closure.

Use `.github/ISSUE_TEMPLATE/substantive-work.md` as the reusable starting structure.

## Live checklist rule

```text
Founder instruction
→ create or repair the controlling Issue
→ create the implementation checklist
→ execute one bounded item
→ verify the item
→ check it off
→ continue
→ complete final verification
→ close only when acceptance passes
```

Rules:

1. **Plan before changing files.** Do not begin substantive implementation while the controlling Issue is vague.
2. **Check off actual work.** Do not bulk-check unfinished items at the end.
3. **Keep the Issue current.** Update scope, design and sequencing before continuing when they materially change.
4. **Record material discoveries.** Future agents must not depend on chat memory.
5. **Checklist completion alone is insufficient.** Verification and acceptance criteria still have to pass.
6. **Do not close with hidden work remaining.** Remove it from scope explicitly or move it into a linked Stage Issue.
7. Preserve GitHub as the canonical work/status object instead of copying live task state into another tracker.

## Master Issue + linked Stage Issues

Use one Master Issue plus linked Stage Issues for large programmes or architecture changes.

Create a Stage Issue when a stage:

- has its own meaningful checklist and acceptance criteria;
- is likely to need its own PR or verification cycle;
- changes a separate subsystem, architecture layer or major document set;
- depends on another stage;
- would make the Master difficult to operate if kept inline;
- can be completed and verified as a bounded outcome.

Use `.github/ISSUE_TEMPLATE/master-programme.md` for the Master.

### Naming and linking

Example:

```text
Master GitHub Issue: #134
Stage 1 actual GitHub Issue: #135
Stage identifier: [134.1]
Stage title: [134.1] Adopt checklist-first Issue governance
```

`[134.1]` is only a programme/stage identifier. The actual GitHub Issue number remains the canonical Issue identity.

Each Stage begins with:

```text
Master issue: #134
Stage: 1 of N
```

The Master maintains a forward tracker:

```text
- [ ] [134.1] #135 — Stage title
- [ ] [134.2] #136 — Stage title
```

This creates two-way linking:

```text
Master #134 → Stage #135
Stage #135 → Master #134
```

### Master / Stage rules

1. The **Master owns** founder intent, programme objective, architecture, sequence, dependencies and final acceptance.
2. Each **Stage owns** one bounded implementation/verification outcome.
3. Every Stage links back to the Master; the Master links to every Stage.
4. Do not duplicate detailed Stage checklists in the Master.
5. Check off a Master stage only after its Stage closes and is verified.
6. The Master cannot close until all linked stages and end-to-end acceptance pass.
7. New material stages require the Master to be updated first, then the new linked Issue.
8. Native GitHub sub-issues may be used when helpful, but the operating model must not depend on them being available on every surface.
9. Keep the hierarchy fully operable from ChatGPT Web and standard GitHub interfaces.

## Size rule

- **Small/reversible:** one Issue with a short explicit checklist; avoid unnecessary ceremony.
- **Standard:** one Issue with implementation and verification checklists.
- **Large programme/architecture:** one Master plus linked Stage Issues.

The purpose is to prevent scope loss, drift and incomplete handoffs—not to manufacture process.

## Repository change workflow

Issue planning does not replace repository governance. Substantive repository changes still follow:

```text
Issue
→ issue-linked branch
→ focused changes / commits
→ Pull Request
→ review / checks
→ merge
→ Issue closes when acceptance passes
```

Tiny typo-only corrections may use an existing suitable Issue where repository governance permits it.

## Verification standard

Before closing a substantive Issue:

- verify the changed repository state or output directly;
- confirm acceptance criteria rather than assuming a green checklist is enough;
- keep failure evidence visible where it explains the final design;
- ensure no credential, secret or sensitive business data was introduced;
- record material learning in the appropriate durable repository location when it is reusable.

## Governing principle

> **A good Issue should let the next capable agent continue the work without asking what the previous chat meant.**
