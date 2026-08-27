# Live Project Example — GitHub Course — Execution & Mastery

## Purpose

Use one GitHub Project as the operating surface over the real course backlog.

This is not a replacement for Issues, Pull Requests or repository files. It is the planning layer above them.

## Starting views

1. **Operating Board** — Board grouped by Status.
2. **Master Table** — Table for triage and metadata.
3. **AI Benchmarks** — filtered to AI integration/executor work.
4. **David Learning** — filtered to hands-on mastery items.
5. **Roadmap** — add after useful dates exist.

## Starting fields

| Field | Values |
|---|---|
| Status | Backlog / Ready / In progress / Blocked / Review / Done |
| Workstream | Course / Learning / AI Integration / Knowledge Base / Publishing / Release |
| Priority | P0 / P1 / P2 / P3 |
| Type | Lesson / Exercise / Benchmark / Documentation / Infrastructure / Release |
| Target date | Date only when meaningful |

### Review means acceptance, not only software testing

Keep the Project gate named **Review**.

`Review` can include testing, checks, factual validation, documentation review, security review and human acceptance. `Testing` is too narrow for a Project that also tracks documentation, governance, research and learning work.

## Seed backlog

Use real work only.

| Issue | Suggested Project Status | Workstream | Priority | Type | Why |
|---|---|---|---|---|---|
| #60 Projects lesson + implementation | In progress | Learning | P0 | Lesson | Current hands-on lesson |
| #23 AI integration parent benchmark | In progress | AI Integration | P0 | Benchmark | Parent control item for agent tests |
| #24 Codex benchmark | Blocked | AI Integration | P0 | Benchmark | Dispatch/auth route reached but execution still blocked |
| #25 Claude benchmark | Review | AI Integration | P0 | Benchmark | Claude has produced an open WIP PR, so evidence needs review |
| #26 Gemini benchmark | Blocked | AI Integration | P1 | Benchmark | Workflow reached missing `GEMINI_API_KEY` boundary; no inference yet |
| #27 Vercel benchmark | Ready | Publishing | P2 | Benchmark | Defined but not the current focus |
| #28 Full Issue → agent → PR benchmark | Blocked | AI Integration | P1 | Benchmark | Depends on enough individual executor evidence first |
| #11 Wiki personal mastery | Ready | Learning | P1 | Exercise | Technical implementation exists, but personal mastery remains to be demonstrated |
| #53 Executor speed/quality benchmark | In progress | AI Integration | P1 | Benchmark | Comparative framework is being populated with real executor evidence |

These values are an initial planning judgement, not immutable truth. Change them as live evidence changes.

## First lesson from the board

The Project makes a distinction that the raw Issue list does not express clearly:

```text
Open Issue
can mean
Backlog / Ready / In progress / Blocked / Review
```

That is why Project Status is valuable.

## Recommended filters

### AI Benchmarks

Filter conceptually by:

- Workstream = `AI Integration`

### David Learning

Filter conceptually by:

- Workstream = `Learning`

### Active work

Exclude:

- Status = `Done`

### Blockers

Show only:

- Status = `Blocked`

### Review queue

Show only:

- Status = `Review`

## Proven control-plane flow — Issue #107

The live course Project now has direct operational evidence that ChatGPT Web can request Project changes through the repository control plane.

Observed sequence:

```text
Issue #107 absent from Project
→ added by Project control dispatcher
→ unset → Ready
→ ChatGPT-controlled change: Ready → Backlog
→ Copilot assignment accepted
→ deterministic lifecycle automation: Backlog → In progress
→ Copilot creates PR #108
```

The Project mutation and agent assignment use separate credentials:

```text
PROJECT_MANAGEMENT_TOKEN
→ Project read/write

AGENT_DISPATCH_TOKEN
→ coding-agent assignment
```

The deterministic workflow owns mechanical Status movement. The coding agent owns implementation work.

## Review-vs-Testing reconciliation

During the live exercise the `Review` option was temporarily renamed to `Testing` by another operator/agent.

The course deliberately standardised it back to `Review` because the Project tracks mixed work, not only executable code.

A bounded GraphQL reconciliation preserved the existing single-select option IDs while renaming:

```text
Backlog / Ready / In progress / Blocked / Testing / Done
→
Backlog / Ready / In progress / Blocked / Review / Done
```

Preserving option IDs prevents existing item values from being cleared during the field update.

## KISSS rule

Do not add fields such as Effort, Risk, Confidence, Owner, Sprint, Quarter, Cost, Dependency and Score until a real planning decision requires them.

One useful field beats ten decorative fields.

## Project-control boundary

The current ChatGPT GitHub connection does not expose direct user-owned Project mutations. GitHub also documents that repository `GITHUB_TOKEN` cannot access Projects.

Two clean routes exist:

### Route A — GitHub UI

Operate the Project manually in GitHub when human interaction is the simplest path.

### Route B — governed automation

Use an authorised token with Project write access / `project` scope and GitHub's Projects GraphQL API. In this course that credential is `PROJECT_MANAGEMENT_TOKEN`.

The repository's bounded control dispatcher allows ChatGPT Web to request specific Project Status changes without giving the GitHub connector direct Project authority.

## Definition of success

The example is successful when David can look at the Project and answer quickly:

- What are we working on now?
- What is blocked?
- What is ready next?
- Which work belongs to AI integration vs personal learning?
- Which item needs review?
- What work has actually finished?
- Which transitions are human planning decisions vs deterministic automation vs agentic execution?
