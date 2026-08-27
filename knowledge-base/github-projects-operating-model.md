# GitHub Projects — Operating Model

**Status:** verified current platform guidance  
**Last verified:** 28 August 2026

## Question

What is the professional role of GitHub Projects, and how should an Issue-first repository use it without creating a second competing task system?

## Verified answer

GitHub Projects is an adaptable planning and tracking layer that can contain Issues, Pull Requests and draft ideas. A single Project can expose multiple saved views using table, board or roadmap layouts. Projects support custom fields, filtering, sorting, grouping, charts, status updates, templates and automation.

The important architecture is:

```text
Issue / PR
= durable work object

Project
= planning collection over work objects

Field
= typed planning metadata

View
= saved visual/query lens over the collection
```

The Project does not duplicate an Issue. The Issue remains the canonical work/discussion object while the Project adds planning context.

## Why this matters to an operator

A repository Issue list answers mainly:

- what Issues exist;
- whether they are open or closed;
- labels, assignees, milestone and other repository metadata.

Projects can answer richer portfolio questions:

- Which open work is blocked?
- What is ready next?
- What is under review?
- Which workstream is overloaded?
- What is planned across time?
- Which items share a priority or iteration?

This is especially useful when many Issues are validly open at the same time but are at different operating stages.

## Project Status is not Issue state

Example:

```text
Issue state: Open
Project Status: Blocked
```

or:

```text
Issue state: Open
Project Status: Review
```

This is not duplication. GitHub Issue state is intentionally simple; Project Status adds workflow detail.

## Recommended mixed-work Status model

For the GitHub Course Project the current operating model is:

```text
Backlog / Ready / In progress / Blocked / Review / Done
```

### Why Review instead of Testing

`Review` is the broader acceptance gate.

It can contain:

- automated testing/checks;
- factual validation;
- documentation review;
- security/permission review;
- human acceptance;
- merge judgement.

A status named `Testing` is appropriate only when every item genuinely passes through a testing-specific stage. It is too narrow for a mixed Project containing code, documentation, research, governance and learning work.

## Views

Current GitHub Projects supports three view layouts.

### Table

Best for dense planning, metadata editing, sorting, grouping and triage.

### Board

Best for visual flow. A board can use Status or another single-select/iteration field as columns; moving an item between columns changes the underlying field value.

### Roadmap

Best for time-based planning using date or iteration fields. Do not invent dates solely to make a roadmap visually full.

## Fields

Projects support custom metadata including text, number, date, single-select and iteration fields. Current GitHub also supports issue fields at organization level where applicable.

Professional guidance:

> Start with the smallest set of fields that change a real decision.

A useful minimum is often:

- Status;
- Priority;
- Workstream/type;
- Target date only when required.

## Labels vs Project fields

### Prefer labels when

The classification should belong natively to the Issue across repository contexts.

Examples:

- bug;
- documentation;
- security;
- external contribution classification.

### Prefer Project fields when

The metadata mainly serves portfolio planning and Project views.

Examples:

- planning Status;
- Priority;
- Workstream;
- iteration;
- target date.

Do not mirror every field as a label.

## Project vs milestone

A milestone groups Issues and PRs around a deliverable or target and exposes completion progress.

A Project is broader: flexible metadata, multiple layouts, cross-repository items and richer planning views.

They can be used together.

## Automation and permission boundary

GitHub supports built-in Project automations plus API/Actions automation.

GitHub documentation explicitly notes that repository `GITHUB_TOKEN` cannot access Projects. For user-owned Projects, Actions-based Project mutation therefore requires a separately authorised credential; API examples use Project scopes for Project access.

This creates an important authentication boundary:

```text
repository write access
≠
Project write access
```

For the GitHub Course control plane:

```text
PROJECT_MANAGEMENT_TOKEN
= Project read/write credential

AGENT_DISPATCH_TOKEN
= user-authorised coding-agent assignment credential
```

Do not merge those responsibilities merely because both operations happen inside GitHub Actions.

## Proven deterministic lifecycle

The live course workflow uses fixed deterministic transitions:

```text
Backlog / Ready
→ supported coding agent assigned
→ In progress

linked non-draft Pull Request
→ Review

Issue closed
→ Done

Issue reopened
→ Ready
```

`Blocked` is intentionally not inferred automatically without a deterministic blocker signal.

## ChatGPT Web Project-control proof

Issue #107 proved a bounded conversational control route over a user-owned Project:

```text
ChatGPT Web
→ repository-native Project dispatcher
→ PROJECT_MANAGEMENT_TOKEN
→ GitHub Projects GraphQL API
→ Project Status mutation
```

Observed live sequence:

```text
Issue #107 absent from Project
→ added to Project
→ unset → Ready
→ ChatGPT-controlled Ready → Backlog
→ Copilot assignment accepted
→ deterministic lifecycle Backlog → In progress
→ Copilot creates PR #108
```

This proves that a chat surface does not need direct Projects connector mutation support if a deliberately bounded GitHub-native control route exists.

## Preserving single-select values during option rename

GitHub's GraphQL `updateProjectV2Field` mutation can update single-select options. Current GitHub schema guidance states that existing option IDs should be supplied when updating options to preserve their identity and prevent item field values from being cleared.

The live Project temporarily had:

```text
Backlog / Ready / In progress / Blocked / Testing / Done
```

A bounded reconciliation preserved all existing option IDs and renamed only `Testing` to `Review`, producing:

```text
Backlog / Ready / In progress / Blocked / Review / Done
```

This is preferable to deleting one option and creating another when existing cards already use that option.

## Deterministic vs agentic Project automation

Use deterministic automation when the rule is fixed:

```text
Issue closed
→ Project Status Done
```

Use agentic reasoning only when classification itself requires judgement, for example:

```text
new Issue
→ inspect context
→ recommend Workstream / Priority
```

Do not use AI for a rule that can be expressed safely and predictably as ordinary automation.

## Recommended pattern for an Issue-first operating system

```text
conversation / decision
→ GitHub Issue
→ add Issue to Project
→ Project fields/views expose priority and flow
→ branch / commits / PR / checks
→ Project moves through workflow
→ merge / acceptance verification
→ close Issue
→ Project Status Done / archive when appropriate
```

Project planning enriches the Issue-first model; it does not replace it.

## Course example

The first live Project for this repository is:

**GitHub Course — Execution & Mastery**

with a small schema:

- Status;
- Workstream;
- Priority;
- Type;
- Target date.

See `../04-projects/live-example-github-course-execution-mastery.md`.

## Do / don't

### Do

- keep Issue state and Project Status conceptually separate;
- use `Review` as the general acceptance gate for mixed work;
- automate only deterministic transitions first;
- preserve option IDs when renaming a populated single-select option;
- keep Project mutation credentials separate from agent-dispatch credentials;
- record the actor/workflow evidence for automated changes.

### Don't

- treat a Kanban card drag as proof that an AI agent started;
- call the Project Status field the Issue status;
- use `Testing` as a universal acceptance stage when non-code work also flows through the Project;
- assume repository `GITHUB_TOKEN` can mutate a user-owned Project;
- delete/recreate populated status options when a safe identity-preserving rename is available.

## Official sources

- https://docs.github.com/en/issues/planning-and-tracking-with-projects
- https://docs.github.com/en/issues/planning-and-tracking-with-projects/learning-about-projects/about-projects
- https://docs.github.com/en/issues/planning-and-tracking-with-projects/learning-about-projects/best-practices-for-projects
- https://docs.github.com/en/issues/planning-and-tracking-with-projects/customizing-views-in-your-project/changing-the-layout-of-a-view
- https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/using-the-api-to-manage-projects
- https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/automating-projects-using-actions
- https://docs.github.com/en/graphql/reference/projects
