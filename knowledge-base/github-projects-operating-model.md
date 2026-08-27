# GitHub Projects — Operating Model

**Status:** verified current platform guidance  
**Last verified:** 27 August 2026

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
Issue state: open
Project Status: Blocked
```

or:

```text
Issue state: open
Project Status: Review
```

This is not duplication. GitHub Issue state is intentionally simple; Project Status adds workflow detail.

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

## Automation

GitHub supports built-in Project automations plus API/Actions automation.

Current GitHub documentation explicitly notes that repository `GITHUB_TOKEN` cannot access Projects. For user-owned Projects, GitHub recommends a personal access token for Actions-based automation; API examples use `read:project` for reads and `project` for mutations.

This creates an important authentication boundary:

```text
repository write access
≠
Project write access
```

## Deterministic vs agentic Project automation

Use deterministic automation when the rule is fixed:

```text
Issue closed
→ archive/move Project item
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

The first live Project for this repository is designed as:

**GitHub Course — Execution & Mastery**

with a small starting schema:

- Status;
- Workstream;
- Priority;
- Type;
- Target date.

See `../04-projects/live-example-github-course-execution-mastery.md`.

## Official sources

- https://docs.github.com/en/issues/planning-and-tracking-with-projects
- https://docs.github.com/en/issues/planning-and-tracking-with-projects/learning-about-projects/about-projects
- https://docs.github.com/en/issues/planning-and-tracking-with-projects/learning-about-projects/best-practices-for-projects
- https://docs.github.com/en/issues/planning-and-tracking-with-projects/customizing-views-in-your-project/changing-the-layout-of-a-view
- https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/using-the-api-to-manage-projects
- https://docs.github.com/en/issues/planning-and-tracking-with-projects/automating-your-project/automating-projects-using-actions
