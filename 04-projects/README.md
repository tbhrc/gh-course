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

## Views for the live course Project

Project name:

**GitHub Course — Execution & Mastery**

### 1. Operating Board

Board grouped by `Status`.

Use it for the daily question:

> What is waiting, moving, blocked or ready for review?

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

## Important distinction: Issue status vs Project Status

An Issue has GitHub state such as `open` or `closed`.

A Project can carry richer workflow state while the Issue remains open:

```text
Issue = open
Project Status = Blocked
```

or:

```text
Issue = open
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

- automatically add relevant new Issues to the Project;
- archive completed items later;
- use deterministic Actions for fixed rules;
- use agentic workflows only where classification requires reasoning.

Do not build automation merely to avoid one useful manual learning exercise.

### Agent execution command

For the live course Project, moving an Issue card to `Ready` is a planning decision. It is not itself an AI command. To start a configured coding agent, use GitHub's **Assign agent to issue** control on the underlying Issue. The Project workflow then synchronises the native assignment, linked Pull Request and Issue closure into `In progress`, `Review` and `Done`.

## Live exercise — Issue #60

We are using this repository itself as the exercise.

1. Create **GitHub Course — Execution & Mastery**.
2. Add real existing Issues rather than dummy cards.
3. Create the five starting fields above.
4. Build Operating Board and Master Table first.
5. Add AI Benchmarks and David Learning filtered views.
6. Add Roadmap only after useful Target dates exist.
7. Move Issue #60 to `In progress` while this lesson is being implemented.
8. Review the board and identify what is genuinely blocked vs merely waiting.

See `live-example-github-course-execution-mastery.md` for the seed backlog.

## Authentication/API lesson discovered during this exercise

The current ChatGPT GitHub connector can manage repository Issues, branches, commits and PRs but does not expose user-owned GitHub Project mutations.

GitHub's current documentation states that repository `GITHUB_TOKEN` cannot access Projects. User Project automation requires separate Project-authorised credentials; the documented GraphQL route uses a token with `project` scope for mutations.

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
6. Why can an open Issue legitimately have Project Status `Blocked` or `Review`?
7. Why should we not create dozens of fields on day one?

## Official references

- GitHub Docs — Planning and tracking with Projects
- GitHub Docs — About Projects
- GitHub Docs — Best practices for Projects
- GitHub Docs — Changing the layout of a view
- GitHub Docs — Using the API to manage Projects
- GitHub Docs — Automating Projects using Actions

Last verified: **27 August 2026**.
