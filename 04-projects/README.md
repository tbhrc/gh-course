# 04 — GitHub Projects

## Objective

Use GitHub Projects as the planning and control layer over real Issues and Pull Requests without replacing the repository's durable governance model.

## The mental model

```text
Issue / Pull Request
= the actual work, discussion, implementation and evidence

Project
= a planning collection containing those work items

Field
= structured metadata such as Status, Priority or Workstream

View
= a saved lens over the same Project items
```

A Project does **not** create a second copy of an Issue. The same Issue can appear in a table, board, roadmap and filtered view while remaining one GitHub Issue.

## Current GitHub Projects model

A Project can contain:

- Issues;
- Pull Requests;
- draft ideas.

The same Project can expose multiple views:

- **Table** — dense planning and metadata editing;
- **Board** — Kanban-style flow, usually grouped by Status;
- **Roadmap** — timeline using dates or iterations.

Projects also support custom fields, filtering, sorting, grouping, charts/insights, status updates, templates and automation.

## KISSS field design

Do not create metadata merely because GitHub allows it.

For this course the starting fields are:

| Field | Options / purpose |
|---|---|
| Status | Backlog / Ready / In progress / Blocked / Review / Done |
| Workstream | Course / Learning / AI Integration / Knowledge Base / Publishing / Release |
| Priority | P0 / P1 / P2 / P3 |
| Type | Lesson / Exercise / Benchmark / Documentation / Infrastructure / Release |
| Target date | Only where a real date matters |

Add another field only when it changes an actual planning decision.

### Status semantics

For the live course Project:

- **Backlog** — deliberately parked, deferred, pending a decision/dependency, or otherwise not available to start;
- **Ready** — valid actionable work available to start; every newly opened repository Issue enters here automatically;
- **In progress** — a human or agent has actually started execution;
- **Blocked** — execution cannot proceed;
- **Review** — work is ready for checks, validation and acceptance;
- **Done** — work is accepted and the underlying Issue is closed.

`Backlog` is not automatic intake. Moving work from `Ready` to `Backlog` is an explicit planning decision.

### Why the gate is called Review, not Testing

`Review` is the broader acceptance stage for this mixed-work Project.

It can include:

- automated tests/checks;
- factual validation;
- documentation review;
- security/permission review;
- human acceptance;
- final merge judgement.

`Testing` would be too narrow because many course changes are documentation, governance, research or learning work rather than executable software.

## Views for the live course Project

Project name:

**GitHub Course — Execution & Mastery**

### 1. Operating Board

Board grouped by `Status`.

Use it for the daily question:

> What is waiting, ready, moving, blocked or ready for review?

### 2. Master Table

Table showing Title, Status, Priority, Workstream, Type, Assignee and Target date.

Use it for bulk triage and planning.

### 3. Roadmap

Roadmap using Target date only for genuinely time-bound work.

Do not manufacture dates merely to make the roadmap look populated.

### 4. AI Benchmarks

Filtered view for the parent AI benchmark and executor/integration tests.

### 5. David Learning

Filtered view for hands-on mastery tasks such as Wiki, Projects and future personal exercises.

## Important distinction: Issue state vs Project Status

An Issue has native GitHub state such as `Open` or `Closed`.

A Project can carry richer workflow state while the Issue remains open:

```text
Issue state = Open
Project Status = Blocked
```

or:

```text
Issue state = Open
Project Status = Review
```

Close the Issue when its acceptance criteria are actually complete. Do not use Project `Done` as a substitute for closing completed work correctly.

## Projects vs labels

Use labels for repository-native classification that should travel with the Issue.

Use Project fields for planning metadata that primarily helps portfolio management, prioritisation and views.

Avoid mirroring every Project field as a label.

## Projects vs milestones

A milestone groups Issues/PRs around a deliverable or target, usually with completion progress.

A Project is a broader planning surface with multiple views and arbitrary structured metadata.

They can coexist.

## Automation

GitHub supports built-in Project automations and API/Actions-based automation.

Professional rule:

> Automate repeated mechanical movement; keep judgement visible until the rule is proven.

Examples:

- automatically add every new repository Issue to the Project as `Ready`;
- archive completed items later;
- use deterministic Actions for fixed rules;
- use agentic workflows only where classification requires reasoning.

Do not build automation merely to avoid one useful manual learning exercise.

### Agent execution command

`Ready` means the Issue is available to start. It is not itself an AI execution command.

To start a configured coding agent, assign the agent to the underlying Issue or use a governed deterministic dispatcher that performs that assignment.

The live course lifecycle is:

```text
Issue opened
→ deterministic Action adds it to Project as Ready
→ work starts through issue-linked branch or supported agent assignment
→ deterministic Action sets In progress
→ linked non-draft PR reaches Review
→ Issue closes
→ deterministic Action sets Done
```

`Backlog` is a deliberate parking state for work that is not currently available to start. `Blocked` is also deliberate unless a deterministic blocker signal exists.

### Live ChatGPT Web control proof — Issue #107

The course proved that ChatGPT Web can control the user-owned Project even though the GitHub connector itself does not expose a direct Projects mutation action.

Observed sequence:

```text
Issue #107 not on Project
→ ChatGPT-controlled dispatcher adds it
→ unset → Ready
→ ChatGPT-controlled dispatcher: Ready → Backlog
→ Copilot assignment accepted
→ deterministic lifecycle Action: Backlog → In progress
→ Copilot creates PR #108
```

This proves two separate control layers:

```text
ChatGPT Web request
→ deterministic Project dispatcher
→ PROJECT_MANAGEMENT_TOKEN mutates Project Status

ChatGPT Web request
→ deterministic agent dispatcher
→ AGENT_DISPATCH_TOKEN assigns coding agent
→ agent performs implementation work
```

Do not collapse those layers into “the agent changed the board”.

## Live exercise — Issue #60

We are using this repository itself as the exercise. The **GitHub Course — Execution & Mastery** Project already exists; do not recreate it, its fields or its saved views.

1. Open the existing **GitHub Course — Execution & Mastery** Project.
2. Inspect and operate real existing Issues rather than dummy cards.
3. Use the existing Status, Workstream, Priority and Type fields deliberately.
4. Use the Operating Board and Master Table intentionally.
5. Inspect the AI Benchmarks and David Learning filtered views where relevant.
6. Use Roadmap only when useful Target dates genuinely exist.
7. Move active work through the real Status field as evidence changes.
8. Review the board and identify what is genuinely blocked vs merely waiting.

See `live-example-github-course-execution-mastery.md` for the seed backlog and live control proof. Current learner assignment/mastery state belongs in the generated `Student-Dashboard-David`, not in this module.

## Authentication/API lesson discovered during this exercise

The current ChatGPT GitHub connector can manage repository Issues, branches, commits and PRs but does not expose direct user-owned GitHub Project mutations.

GitHub documents that repository `GITHUB_TOKEN` cannot access Projects. User Project automation therefore requires a separately authorised Project credential.

For this course:

```text
PROJECT_MANAGEMENT_TOKEN
= Project read/write credential

AGENT_DISPATCH_TOKEN
= user-authorised coding-agent assignment credential
```

The Project control workflow uses GraphQL with `PROJECT_MANAGEMENT_TOKEN` to mutate the Status field. The agent dispatcher uses `AGENT_DISPATCH_TOKEN` to assign the worker.

This is another example of:

```text
GitHub capability exists
≠
current integration is authorised to operate it
```

## Mastery check

You should be able to answer without prompts:

1. What is the difference between an Issue and a Project item?
2. What is a Project field?
3. What is a Project view?
4. Why can one Issue appear on several views without duplication?
5. When would you use a label instead of a Project field?
6. What is the difference between `Backlog` and `Ready` in this Project?
7. Why can an open Issue legitimately have Project Status `Blocked` or `Review`?
8. Why is `Review` broader and more reusable than `Testing` for this Project?
9. What is the difference between `AGENT_DISPATCH_TOKEN` and `PROJECT_MANAGEMENT_TOKEN`?
10. Why should we not create dozens of fields on day one?

## Official references

- GitHub Docs — Planning and tracking with Projects
- GitHub Docs — About Projects
- GitHub Docs — Best practices for Projects
- GitHub Docs — Changing the layout of a view
- GitHub Docs — Using the API to manage Projects
- GitHub Docs — Automating Projects using Actions

Last verified: **28 August 2026**.