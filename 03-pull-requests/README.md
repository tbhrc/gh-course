# 03 — Pull Requests: The Control Gate

## Objective

Use Pull Requests as the **proposal, review, evidence and acceptance layer** between isolated work and the default branch.

A Pull Request is not `git pull`.

```text
Pull Request
= proposal to merge one line of work into another
+ diff
+ discussion
+ checks
+ review
+ approval / rejection decision
```

## Why This Matters to an Operator

Without a PR, a change can move directly from implementation to `main` with very little structured evidence.

With a PR, the repository gains a durable gate where a human or agent can answer:

- What is being proposed?
- Which Issue explains why?
- Which commits are included?
- Which files changed?
- What does the diff actually do?
- Did tests/checks pass?
- Who reviewed it?
- What concerns remain unresolved?
- Is it safe and appropriate to merge?

For AI-assisted work, this gate is even more important because **agent output is a proposal, not authority**.

## The Core Flow

```text
Issue
→ issue-linked branch
→ one or more logical commits
→ Pull Request
→ inspect diff
→ automated checks
→ review / comments
→ corrections if needed
→ approval / merge decision
→ merge
→ post-merge verification
→ Issue closes when acceptance criteria are actually complete
```

## PR Anatomy

A useful PR normally contains:

### Title

State the outcome, not the activity.

Good:

`Add Jules to executor benchmark leaderboard`

Weak:

`Update files`

### Body

Explain:

1. what changed;
2. why it changed;
3. governing Issue;
4. important verification/evidence;
5. risks or limitations;
6. whether merging should close the Issue.

### Base and head

```text
head = branch containing proposed work
base = branch receiving the work
```

For this course:

```text
issue-71-course-integrity-rebuild
→ main
```

### Commits

The PR groups the commits that exist on the head branch but not the base branch.

### Files changed / diff

This is the implementation evidence surface. Review the actual changes rather than trusting the summary.

### Checks

Checks may include tests, linting, security scanning, deployment previews, workflow validation or other automated evidence.

A green check is useful evidence, not proof that the change is conceptually correct.

### Conversation and review threads

Use comments for substantive questions, factual corrections and decisions. Resolve threads when the underlying concern is actually addressed.

## Draft vs Ready for Review

Use a **draft PR** when:

- the agent/user is still implementing;
- the change is not yet intended for acceptance;
- early visibility is useful;
- checks should start before the work is final.

Use **ready for review** when the author believes the change is complete enough for the acceptance gate.

For agent benchmarks, an open/draft PR is often the deliberate stop condition because the test is proving execution without granting merge authority.

## Linking Issues Correctly

Use normal references when the PR should not automatically close the Issue:

```text
Refs #63
```

Use closing keywords only when merge genuinely completes the Issue:

```text
Closes #71
Fixes #123
Resolves #456
```

### Course incident: unsafe closing keyword

The clean Jules benchmark PR initially used `Fixes #63` even though the benchmark explicitly required **stop before merge/close**.

The benchmark still proved agent execution, but the PR metadata was corrected to `Refs #63` before merge risk existed.

Reusable rule:

> **Closing keywords are workflow commands, not decorative links.**

## Review AI-Agent Work Professionally

When an AI agent opens a PR, inspect at least:

1. **scope** — did it change only what was requested?
2. **provenance** — which actor authored/committed the work?
3. **factual accuracy** — does the explanation match repository evidence?
4. **diff quality** — is the implementation minimal and coherent?
5. **security** — secrets, permissions, unsafe workflows, destructive changes;
6. **governance** — correct Issue, branch, PR and close semantics;
7. **checks** — what ran and what did not?
8. **unverified claims** — did the agent claim tests/reviews/models/capabilities without durable evidence?

The course’s Jules benchmark is a useful example: Jules completed autonomously, but its first review-ready evidence contained several factual/provenance errors that review caught.

## Merge Methods

Common merge strategies:

### Merge commit

Preserves the branch’s commit history and creates a merge commit.

Useful when branch history is meaningful and the repository wants explicit merge topology.

### Squash merge

Combines the PR into one commit on the base branch.

Useful when branch commits contain noisy implementation steps but the accepted change should appear as one logical unit.

### Rebase merge

Replays commits onto the base branch without a merge commit.

Useful when a linear history is preferred and commits are already clean.

There is no universally correct choice. The repository should choose deliberately and consistently.

## Mergeability Is Not Approval

GitHub may report a PR as technically mergeable while the change is still not acceptable.

```text
mergeable = Git can combine the branches
approved/safe = governance + quality judgement
```

Do not collapse those concepts.

## Checks vs Review

Use automated checks for repeatable mechanical evidence.

Use review for judgement.

```text
checks
→ syntax / tests / build / policy / automation evidence

review
→ correctness / scope / architecture / risk / intent
```

The strongest PRs use both.

## Conflict Handling

A merge conflict means Git cannot automatically reconcile overlapping changes.

Professional response:

1. understand both intended changes;
2. update the branch from the current base where appropriate;
3. resolve the conflict deliberately;
4. rerun checks;
5. inspect the resulting diff again;
6. do not mechanically choose “ours” or “theirs” without understanding impact.

## Pull Requests as a Learning Surface

A PR provides unusually rich training evidence:

- branch name;
- commit history;
- exact diff;
- AI/human identity;
- comments;
- automated checks;
- review feedback;
- merge result.

For this course, PRs should be treated as a first-class teaching interface, not merely a merge button.

## Hands-On Exercise

Use a real, bounded course improvement.

1. Start from a governing Issue.
2. Create an issue-linked branch.
3. Make one logical change.
4. Commit it meaningfully.
5. Open a PR to `main`.
6. Read the PR body as if you were not the author.
7. Inspect every changed file.
8. Inspect checks/statuses.
9. Leave at least one review comment or record why none is required.
10. Decide whether the PR should use `Refs`, `Closes`, `Fixes` or `Resolves`.
11. Merge only when acceptance criteria are met.
12. Verify the post-merge state and Issue closure.

## Mastery Check

Explain without prompts:

1. Why is a PR not the same as `git pull`?
2. What are head and base branches?
3. Why can a technically mergeable PR still be unsafe?
4. What is the difference between automated checks and human/AI review?
5. When should a PR remain draft?
6. Why can `Fixes #123` be dangerous if the Issue should remain open?
7. What evidence would you inspect before merging an AI-authored PR?
8. When might squash, merge commit or rebase merge be appropriate?

## Evidence Required for Mastery

At least one learner-operated flow showing:

```text
Issue
→ branch
→ meaningful commit
→ PR
→ diff inspection
→ check/review judgement
→ merge
→ post-merge verification
```

The coach performing the workflow does not count as unaided student mastery.

## Course Evidence

Useful live examples include:

- PR #51 — GitHub Copilot cloud-agent benchmark;
- PR #52 — OpenAI Codex partner-agent benchmark;
- PR #58 — Anthropic Claude partner-agent benchmark;
- PR #66 — Google Jules benchmark and post-PR factual review;
- PR #67 — executor leaderboard update;
- PR #70 — public benchmark source-of-truth correction.

## References

- `AGENTS.md`
- `sops/repository-change-workflow.md`
- `knowledge-base/executor-benchmark-framework.md`
- `09-ai-agents-github/README.md`
- GitHub Docs — About pull requests
- GitHub Docs — Reviewing proposed changes in a pull request
- GitHub Docs — About pull request merges
