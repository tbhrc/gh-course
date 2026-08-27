# Learning Note — Project Control Plane and Status Automation

**Student:** David  
**Date:** 28 August 2026  
**Area:** GitHub Projects / Actions / AI-agent control plane

## Original understanding / question

While watching the live Kanban board, David wanted to distinguish:

- the Issue's native state;
- the Project's Kanban workflow state;
- whether an AI agent itself was moving the card;
- whether ChatGPT Web could deliberately control that Project state.

He initially referred to the Kanban value as possibly the “Issue status”.

## Correction learned

The correct distinction is:

```text
Issue state
= Open / Closed

Project Status
= Backlog / Ready / In progress / Blocked / Review / Done
```

The Kanban columns are values of the Project **Status field**.

## Live assisted proof

Issue #107 was created as a clean control experiment.

Observed sequence:

```text
Issue #107 absent from Project
→ ChatGPT-controlled Project dispatcher adds it
→ unset → Ready
→ ChatGPT-controlled Project mutation: Ready → Backlog
→ Copilot assignment accepted
→ deterministic lifecycle Action: Backlog → In progress
→ Copilot creates PR #108
```

This proved that ChatGPT Web can request bounded Project mutations through GitHub-native automation even though the connected GitHub tool does not expose a direct user-Project mutation action.

## Deterministic vs agentic distinction

David's earlier benchmark principle was reinforced:

```text
AI agent work
≠
deterministic GitHub Actions work
```

For the Project lifecycle:

- ChatGPT Web made the control decision/request;
- GitHub Actions performed the mechanical Project mutation;
- `PROJECT_MANAGEMENT_TOKEN` authorised the Project write;
- `AGENT_DISPATCH_TOKEN` authorised the coding-agent assignment;
- Copilot performed the implementation work and created the PR.

The card moving to `In progress` therefore proves the lifecycle automation reacted to the assignment event. It does not mean Copilot directly edited the Project field.

## Review vs Testing judgement

Another operator/agent temporarily renamed the Project `Review` option to `Testing`.

David asked whether the course should keep that change or revert it.

The professional decision is to keep **Review** because the Project tracks mixed work:

- code;
- documentation;
- governance;
- research;
- learning;
- publishing.

`Review` can include testing/checks plus factual validation, security review and human acceptance. `Testing` is too narrow as a universal acceptance stage.

The live Status schema was reconciled from:

```text
Backlog / Ready / In progress / Blocked / Testing / Done
```

to:

```text
Backlog / Ready / In progress / Blocked / Review / Done
```

The GraphQL update preserved existing option IDs so existing item values were not cleared.

## Demonstrated understanding

David now has assisted practical evidence for:

- Issue state vs Project Status;
- Project Status as the Kanban workflow field;
- using a real Project as an execution/control view over Issues;
- separating planning state from agent execution;
- separating deterministic automation from AI-agent work;
- recognising credential boundaries between agent dispatch and Project mutation;
- judging `Review` as a broader mixed-work acceptance gate than `Testing`.

## Evidence level

```text
conceptual understanding: strong
assisted live operation: demonstrated
architecture judgement: strong
unaided Project operation: still pending
```

Do not mark Projects mastered yet. David still needs to personally operate the Project without the coach performing the key mutations, including backlog triage, field/view use and a full review/Done lifecycle decision.

## Durable evidence

- Issue #107 — live Project-control proof task.
- PR #108 — Copilot work created after the dispatch.
- Issue #109 — Review-vs-Testing standardisation and documentation reconciliation.
- Actions run `33113795152` — live `Testing → Review` Project option reconciliation with IDs preserved.
- `04-projects/README.md` — reusable lesson.
- `knowledge-base/github-projects-operating-model.md` — verified reusable operating model.
