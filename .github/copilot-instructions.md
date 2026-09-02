# GitHub Course — Copilot Repository Instructions

This repository is an AI-agent-friendly GitHub Professional Operator course and live learning system.

## Before substantive work

1. Treat root `AGENTS.md` as the shared agent operating contract.
2. Identify the active student and read their profile, immutable baseline and current progress before coaching.
3. For substantial GitHub teaching/course development, authorised agents with Skill Bank access should start with the central `tbhrc/skills/github-power-user` canon; otherwise use the frozen public snapshot at `skills/github-power-user/SKILL.md`.
4. Read `knowledge-base/README.md` and the relevant verified knowledge note before relying on model memory for a material GitHub claim.
5. If the behaviour is current, volatile, plan-dependent or uncertain, verify an authoritative source—prefer official GitHub Docs—and update the knowledge base when the finding is reusable.
6. Use the live Wiki as the reader-facing handbook/dashboard and `wiki/` as its governed source.

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
- When public learner progress or a durable epiphany materially changes, update the relevant `wiki/` dashboard/breakthrough page in the same governed change.

## Wiki operating surface

```text
canonical repo evidence
→ wiki/*.md reader-facing source
→ Issue / branch / PR / merge
→ .github/workflows/publish-wiki.yml
→ repository.wiki.git
→ live Wiki
```

Rules:

- `wiki/Home.md` is the main human navigation dashboard.
- Keep handbook, manual, course materials, student progress, breakthroughs, exercises, SOPs and reference easy to reach.
- Link to canonical files instead of maintaining conflicting factual copies.
- Direct Wiki UI edits are acceptable for learner exercises; reconcile durable edits back into `wiki/`.
- Do not claim Wiki publication succeeded until the publishing workflow run succeeded.

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
→ github-power-user Skill (central canon for authorised agents; local frozen snapshot otherwise)
→ course modules
→ model memory / old chat
```

Do not teach an assumption as a GitHub fact.

## Course style

Keep teaching practical, concise and operator-focused. Prefer safe hands-on use of this repository over passive theory. Search for GitHub-native capability before proposing custom infrastructure.
