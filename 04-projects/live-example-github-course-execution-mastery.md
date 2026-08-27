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
| Status | Backlog / Ready / In progress / Review / Done |
| Workstream | Course / Learning / AI Integration / Knowledge Base / Publishing / Release |
| Priority | P0 / P1 / P2 / P3 |
| Type | Lesson / Exercise / Benchmark / Documentation / Infrastructure / Release |
| Target date | Date only when meaningful |

## Seed backlog

Use real work only.

| Issue | Suggested Project Status | Workstream | Priority | Type | Why |
|---|---|---|---|---|---|
| #60 Projects lesson + implementation | In progress | Learning | P0 | Lesson | Current hands-on lesson |
| #23 AI integration parent benchmark | In progress | AI Integration | P0 | Benchmark | Parent control item for agent tests |
| #24 Codex benchmark | Backlog | AI Integration | P0 | Benchmark | Dispatch/auth route reached but execution did not yet complete |
| #25 Claude benchmark | Review | AI Integration | P0 | Benchmark | Claude has produced an open WIP PR, so evidence needs review |
| #26 Gemini benchmark | Backlog | AI Integration | P1 | Benchmark | Workflow reached missing `GEMINI_API_KEY` boundary; no inference yet |
| #27 Vercel benchmark | Ready | Publishing | P2 | Benchmark | Defined but not the current focus |
| #28 Full Issue → agent → PR benchmark | Backlog | AI Integration | P1 | Benchmark | Depends on enough individual executor evidence first |
| #11 Wiki personal mastery | Ready | Learning | P1 | Exercise | Technical implementation exists, but personal mastery remains to be demonstrated |
| #53 Executor speed/quality benchmark | In progress | AI Integration | P1 | Benchmark | Comparative framework is being populated with real executor evidence |

These values are an initial planning judgement, not immutable truth. Change them as live evidence changes.

## First lesson from the board

The Project makes a distinction that the raw Issue list does not express clearly:

```text
Open Issue
can mean
Backlog / Ready / In progress / Review
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

### Review queue

Show only:

- Status = `Review`

## KISSS rule

Do not add fields such as Effort, Risk, Confidence, Owner, Sprint, Quarter, Cost, Dependency and Score until a real planning decision requires them.

One useful field beats ten decorative fields.

## One-time creation boundary

The current ChatGPT GitHub connection does not expose direct user-owned Project mutations. GitHub also documents that repository `GITHUB_TOKEN` cannot access Projects.

Two clean creation routes therefore exist:

### Route A — first lesson, recommended

Create the Project once in the GitHub UI, then use the real Project hands-on.

### Route B — later automation

Use an authorised token with Project write access / `project` scope and GitHub's Projects API or `gh project` commands. In the live course control plane that write credential is `PROJECT_MANAGEMENT_TOKEN`, and the bounded dispatcher uses it for Project Status changes.

Do not automate Route B merely to avoid learning Route A once.

## Definition of success

The example is successful when David can look at the Project and answer quickly:

- What are we working on now?
- What is still waiting?
- What is ready next?
- Which work belongs to AI integration vs personal learning?
- Which item needs review?
- What work has actually finished?
