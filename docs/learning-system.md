# Learning System Architecture

## Purpose

This repository is both:

1. a live GitHub Professional Operator course; and
2. a reusable AI-agent coaching system that can support multiple students.

David is Student #1 and the first public case study. The architecture must work for him now without hard-coding the entire course around one learner.

## Core Loop

```text
student profile
→ baseline diagnostic
→ personalised course path
→ lesson
→ hands-on operation
→ assessment
→ evidence
→ progress update
→ next lesson
→ final comparison against baseline
```

## Source-of-Truth Layers

```text
AGENTS.md
    ↓ coaching and repository operating contract
students/<id>/profile.md
    ↓ who the learner is and how to coach them
students/<id>/baseline-*.md
    ↓ immutable starting evidence
students/<id>/progress.md
    ↓ current learning state
module README / lesson files
    ↓ curriculum
exercises/
    ↓ practical operating work
question-bank/
    ↓ reusable diagnostics and tests
certification/
    ↓ competency standard and final evidence
```

## Multi-Agent Principle

Any capable AI agent should be able to attach this repository, read the governing files, identify the active student and continue coaching without depending on hidden chat history.

The agent must distinguish:

- **course truth** — what the curriculum teaches;
- **student truth** — what a specific learner has actually demonstrated;
- **assessment evidence** — answers and completed operations;
- **coach judgement** — interpretation of the evidence.

Do not merge these into one file.

## Student State

Each student must have:

- `profile.md` — identity, goals, learning preferences and context;
- `baseline-YYYY-MM-DD.md` — starting assessment that is never rewritten;
- `progress.md` — current course state;
- `assessments/` — diagnostic, module and final assessments.

## Course Content Standard

Each substantial topic should eventually provide:

1. concept;
2. operator value;
3. practical example;
4. hands-on task in GitHub;
5. checkpoint questions;
6. answer/evaluation guidance where appropriate;
7. evidence required for mastery;
8. links to relevant GitHub documentation.

## Reusability Standard

Material should be written so that:

- David can use it immediately;
- another founder can fork or clone the repository and create their own student profile;
- an AI coach can adapt the sequence based on the learner's baseline;
- assessments can compare before and after knowledge;
- course improvements benefit all students without rewriting historical student evidence.

## KISSS

Keep the system simple. Add a file or layer only when it has a distinct durable purpose. Avoid building a learning-management platform inside Markdown when GitHub already provides the required capability.