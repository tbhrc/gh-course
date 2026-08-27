# Exercise — First Issue Workflow

## Goal

Take one real piece of repository work from idea to closed Issue using the professional course workflow.

## Scenario

Choose a small but meaningful improvement to this course repository.

Examples:

- clarify one lesson;
- add one useful reference;
- improve one exercise;
- document one GitHub concept that is currently missing.

## Required Workflow

```text
Issue
→ branch
→ change
→ commit
→ Pull Request
→ review/check
→ merge
→ Issue closes
```

## Step 1 — Create the Issue

The Issue must contain:

```markdown
## Objective
What outcome is required?

## Scope
What will be changed?

## Acceptance Criteria
How will we know the work is complete?
```

Then apply only useful metadata:

- an assignee;
- one or more relevant labels if available;
- milestone/project only if they genuinely help.

## Step 2 — Create an Issue-linked Branch

Use a name that makes the relationship obvious, for example:

```text
issue-12-improve-actions-lesson
```

## Step 3 — Make the Change

Keep commits logical and readable.

Example:

```text
docs: clarify workflow trigger explanation (#12)
```

## Step 4 — Open the Pull Request

The PR should explain what changed and include:

```text
Closes #12
```

when merging the PR will fully complete the Issue.

## Step 5 — Review the Evidence

Before merge, inspect:

- changed files;
- diff;
- commits;
- any checks;
- whether acceptance criteria are satisfied.

## Step 6 — Merge and Verify

After merge, verify:

- the change exists on `main`;
- the Issue is closed;
- the PR and Issue remain linked;
- the history makes sense to someone who was not present.

## Student Evidence

Record:

- Issue number;
- branch name;
- PR number;
- what was learned;
- one thing that would have been lost if the work happened only in chat.

## Pass Standard

Pass when the learner can complete the workflow without copying each instruction mechanically and can explain why every stage exists.
