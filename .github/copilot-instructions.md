# GitHub Course — Copilot Repository Instructions

This repository is an AI-agent-friendly GitHub Professional Operator course and live learning system.

## Before substantive work

1. Treat root `AGENTS.md` as the shared agent operating contract.
2. Identify the active student and read their profile, immutable baseline and current progress before coaching.
3. For substantial GitHub teaching/course development, start with `skills/github-power-user/SKILL.md`.
4. Read `knowledge-base/README.md` and the relevant verified knowledge note before relying on model memory for a material GitHub claim.
5. If the behaviour is current, volatile, plan-dependent or uncertain, verify an authoritative source—prefer official GitHub Docs—and update the knowledge base when the finding is reusable.

## Repository change workflow

Do not make substantive repository changes ad hoc.

```text
Issue
→ issue-linked branch
→ focused commits
→ Pull Request
→ review/checks
→ merge
→ Issue closes
```

## Learning evidence

- Preserve the student's original understanding, mistakes, corrections, partial recall and remaining mastery gaps.
- Never rewrite historical baselines to make later knowledge appear earlier.
- Student evidence belongs under `students/<student-id>/`.
- Reusable teaching knowledge belongs in shared course folders.

## Versioning

This repository uses Semantic Versioning (`MAJOR.MINOR.PATCH`).

- commits are change history;
- `CHANGELOG.md` records notable changes;
- do not bump `VERSION` for every commit;
- releases should align `VERSION`, changelog, Git tag and GitHub Release.

## Knowledge authority

```text
current official/live evidence
→ knowledge-base/
→ github-power-user Skill
→ course modules
→ model memory / old chat
```

Do not teach an assumption as a GitHub fact.

## Course style

Keep teaching practical, concise and operator-focused. Prefer safe hands-on use of this repository over passive theory. Search for GitHub-native capability before proposing custom infrastructure.
