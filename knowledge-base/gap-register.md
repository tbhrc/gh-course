# GitHub Knowledge Gap Register

**Purpose:** track areas where the course, Skill or AI coach needs current verified knowledge before teaching or making an operating decision.

**Last audited:** 1 September 2026

This is **not** David's personal learning gap list. Student-specific understanding, assisted performance, unaided mastery and remaining learner gaps live under `students/<student-id>/`. A repository feature being live or an agent completing work does not by itself prove student mastery.

## Status Key

- **Verified** — current authoritative/live evidence has been checked and durable course/knowledge evidence exists.
- **Mapped** — covered strategically by the `github-power-user` Skill (central canon or local frozen snapshot) or course material, but current reusable knowledge is not yet fully verified into the knowledge base.
- **Pending** — material reusable knowledge gap still needs research/verification.
- **Course proof pending** — platform knowledge is sufficiently understood, but this repository has not yet operationally proved the capability it would rely on.

## Current Register

| Area | Knowledge status | Current course / platform evidence | Remaining reusable evidence |
| --- | --- | --- | --- |
| GitHub Wiki vs repo Markdown | Verified | Module 07 plus `wiki-vs-repository-markdown.md` and the governed Wiki publishing model are live. | Reverify if the publication/source-of-truth model changes. |
| Issues / sub-issues / dependencies | Mapped | Module 02 and Issue-first operation are live throughout the repository. | Verify current sub-issue/dependency behaviour when the course needs those features as an operating dependency. |
| Labels / milestones / assignees | Mapped | Module 02 covers the model and repository Issues use normal GitHub metadata. | Add current verified nuance only when a real classification/release use case requires it. |
| Projects | Verified | Module 04, `github-projects-operating-model.md` and the live **GitHub Course — Execution & Mastery** Project prove the control-plane model and deterministic lifecycle. | Reliability hardening for Project pagination is tracked separately in #130; learner mastery remains under `students/`. |
| Pull Requests / review gate | Mapped | Module 03 and the repository's mandatory Issue → branch → PR workflow have extensive live delivery evidence. | Add/refresh reusable current review-policy knowledge only when a volatile GitHub behaviour materially affects operation. |
| Actions | Verified | Module 05 plus live publishing, dispatch, Project-control, release and benchmark workflows provide operational evidence; supporting knowledge notes cover permissions and deterministic-vs-agentic boundaries. | Reverify security/permission syntax when a workflow or GitHub behaviour changes materially. |
| Rulesets / branch protection | Mapped | Module 08 covers the model; live `main` is currently **not protected**. | #122 owns enforcement and proof of the repository's mandatory PR rule. |
| CODEOWNERS | Mapped | Module 08 covers the capability conceptually. | Add a practical ownership boundary only when a real path/team ownership need exists. |
| Releases / tags / SemVer | Verified | Module 06 is substantive and live Releases `v0.2.0` and `v0.3.0` exist; release automation is present. | #126 owns fail-closed VERSION / CHANGELOG / tag / Release preflight hardening. Student release mastery remains separate. |
| Copilot custom instructions | Verified | Module 09 and the repository's `.github/copilot-instructions.md` provide live repository evidence. | Reverify surface-specific instruction behaviour when it becomes material; do not generalise one surface to every agent. |
| AGENTS.md support across agent surfaces | Verified | Module 09 plus the multi-agent benchmark programme provide bounded cross-surface evidence, while root `AGENTS.md` remains the repository contract. | Continue recording surface-specific limitations; do not infer universal automatic loading. |
| Custom agents | Mapped | Module 09 covers the architecture and specialist-agent use case. | Verify the current support matrix/file format before creating a real dependency or bounded custom agent. |
| Prompt files | Mapped | Module 09 covers reusable prompt-file architecture. | Verify current availability/support before adopting one as a course dependency. |
| MCP with GitHub agents | Mapped | Module 09 covers MCP as an external-tool/permission boundary. | Verify the current supported configuration and run a safe bounded lab before depending on it. |
| Codespaces / devcontainers | Mapped | Later/deep-dive capability only; no current course dependency. | Develop only if a repeatable cloud-development environment solves a demonstrated course need. |
| GitHub Packages | Mapped | Later/deep-dive capability only; no package-distribution use case currently requires it. | Teach/verify when the repository actually produces a package/container that benefits from Packages. |
| GitHub Pages | Verified | Pages is enabled and live as the public course front door; Module 07 and multiple knowledge notes document the publishing/user-journey model. | #123 owns removal of generated-state direct pushes to `main`; reverify deploy + real user journey when Pages changes. |
| Organisation-wide Projects/rules/workflows | Mapped | Organisation-level leverage is part of the later GitHub-first architecture work, but repository-level operation is the proven baseline. | Evaluate only when an organisation-wide rule/use case and permissions justify it. |
| Discussions | Verified | Live repository state has Discussions enabled (`has_discussions: true`). | Add a course exercise/workflow only if a real Q&A/idea/community conversation use case warrants it. |

## Audit Evidence — 1 September 2026

The reconciliation above used current repository and live GitHub evidence rather than learner inference:

- repository feature state reports `has_projects: true`, `has_wiki: true`, `has_pages: true` and `has_discussions: true`;
- the public Pages front door and governed Wiki are already part of the repository architecture;
- `knowledge-base/github-projects-operating-model.md` records the live **GitHub Course — Execution & Mastery** Project and deterministic Project lifecycle evidence;
- GitHub Releases include published `v0.2.0` and `v0.3.0` records;
- current `main` is not branch-protected, so ruleset enforcement correctly remains an unresolved governance item under #122;
- separate hardening Issues #123, #126 and #130 remain open and are not treated as completed merely because the underlying capability is live.

Student-specific gaps remain authoritative under `students/`. In particular, course/agent execution of Projects, Actions or Releases must not be credited as David's unaided operator mastery.

## Operating Rule

When a material gap is discovered:

```text
discover gap
→ decide whether it is reusable platform/course knowledge or student-specific evidence
→ record reusable gaps here
→ verify primary/live source
→ create/update knowledge note when warranted
→ update relevant Skill/module only if useful
→ keep learner mastery under students/<student-id>/
→ mark status accurately
```

Do not mark `Verified` merely because an AI model already knows the concept, and do not mark learner mastery merely because the repository or an agent demonstrated the capability.
