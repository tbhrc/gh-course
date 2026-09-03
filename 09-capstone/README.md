# 09 — Capstone: Understand It, Then Reproduce ARC

The capstone has two parts. First prove you can operate one real GitHub improvement correctly. Then hand off to the **live public ARC package** and reproduce the architecture safely through Atlas.

This is not a classroom copy of ARC. The deployment handoff uses [`tbhrc/arc`](https://github.com/tbhrc/arc).

## Part A — Operate one real improvement

Required evidence:

1. Define the problem in an Issue.
2. Identify the correct owner/source of truth.
3. Identify the reusable Skill/method that applies.
4. Choose the smallest sufficient GitHub mechanism.
5. Work on an isolated branch when appropriate.
6. Open a focused PR.
7. Inspect the actual diff.
8. Run the relevant verification.
9. Merge only when acceptance is met.
10. Confirm the merged state.
11. Explain what was learned and whether any reusable learning belongs elsewhere.
12. Explain whether the problem exposed a broader Research/capability gap.

## Part B — Deploy your own ARC

Use a safe sandbox, test organisation/account, or another explicitly authorised target. Do not use a production client/business merely to complete the exercise.

### 1. Open ARC

Go to [`tbhrc/arc`](https://github.com/tbhrc/arc) and read its README plus Atlas front door.

### 2. Invoke Atlas

Where `/atlas` prompt-file invocation is supported:

```text
/atlas
```

Otherwise tell the capable agent:

```text
Use the Atlas Skill in the ARC repository.
Onboard me to ARC for this target business.
Start in plan mode. Do not mutate anything until the deployment plan is explicit.
```

### 3. Describe the target

Give Atlas the minimum real context it needs:

- business/organisation name;
- GitHub user or organisation that will own the estate;
- existing repositories/systems that must be reused;
- business/domain owners that need durable homes;
- private file store;
- specialist systems such as CRM, ATS or accounting where relevant;
- available AI/provider/runtime routes;
- authority constraints.

Do **not** paste secret values into repository configuration or course evidence.

### 4. Review the plan

Before mutation, you should be able to explain:

```text
which repositories/components will exist
→ which ones are new vs reused
→ which truth each owner holds
→ which Skills/research/runtime routes apply
→ which integrations remain manual/specialist-owned
→ what verification will prove success
```

A correct capstone does not approve a plan it cannot explain.

### 5. Apply only with explicit authority

If the target is authorised for mutation, follow ARC's current bootstrap contract. If the exercise is plan-only, stop before apply and document why.

The important lesson is the gate:

```text
plan
≠ permission to mutate
```

### 6. Verify the target

Use ARC's current verification path and inspect real resulting state. Do not treat a command exiting successfully as sufficient evidence if the required repositories/contracts are absent.

### 7. Prove one real workflow

A deployed architecture is not complete because repositories exist. Prove one bounded workflow:

```text
request / problem
→ Skill
→ correct owner truth
→ authorised agent execution
→ Research or trusted runtime only if genuinely required
→ verify real outcome
→ durable evidence
```

### 8. Record the learning

Explain:

- what ARC created or reused;
- what Atlas correctly inferred;
- what required human input;
- what the architecture intentionally left in specialist systems;
- what failed or was unclear;
- whether that lesson belongs in the Course, ARC, a Skill, Research or only the target business.

## Capstone acceptance

You have completed the capstone when you can prove both of these statements:

> **I can operate durable GitHub work inside ARC's ownership model.**

> **I can move from understanding the model to the live Atlas/ARC deployment path without confusing Course material with deployment canon.**

## Mastery test

You should be able to explain not just **what you clicked**, but:

- why that GitHub object was correct;
- why the Skill/owner split matters;
- what permission boundary applied;
- what evidence proved success;
- what would have been over-engineering;
- whether the problem should trigger broader Research;
- why normal execution was sufficient or why a trusted runtime was genuinely required;
- why Course teaches while ARC deploys;
- what you would need to reproduce the same architecture for a second business.

Programme reference: [`tbhrc/arc#5`](https://github.com/tbhrc/arc/issues/5).
