# Students

This directory holds learner-specific state for the GitHub Professional Operator course.

Each learner gets a stable folder so any compatible AI agent can understand who the learner is, where they started, what they have completed, and what should be taught next.

## Student Folder Standard

```text
students/<student-id>/
├── profile.md
├── baseline-YYYY-MM-DD.md
├── progress.md
└── assessments/
```

## Rules

- Baselines are historical evidence. Never overwrite an old baseline to make progress look better.
- Progress is additive and should cite completed exercises or assessment evidence where possible.
- Record what the student actually demonstrated; do not infer mastery from exposure alone.
- Keep private credentials, secrets and sensitive personal information out of this repository.
- A student may be a public case study when they explicitly agree.

## AI Coach Entry Point

Before coaching a learner, read:

1. `AGENTS.md`
2. `students/<student-id>/profile.md`
3. the latest baseline in that student folder
4. `students/<student-id>/progress.md`
5. the current course module

Then continue from the learner's demonstrated level rather than restarting the course.