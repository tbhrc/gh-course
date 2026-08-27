# Progress — David

## Current Status

**Course stage:** Stage 2 — Crash Course / live operation  
**Current learning focus:** **Module 04 — GitHub Projects**  
**Next hands-on objective:** create and operate the real **GitHub Course — Execution & Mastery** Project using existing Issues/PRs.  
**Baseline:** `baseline-2026-08-27.md` — immutable historical starting point.

## Current Assessment Summary

David has moved materially beyond his starting model of GitHub as mainly remote repository storage.

He now understands GitHub as a professional operating/control platform combining:

```text
Issues
→ branches
→ commits
→ Pull Requests
→ checks/review
→ merge
→ Releases/deployment
→ durable history
```

with additional layers for:

```text
Projects      → portfolio/control views
Actions       → deterministic automation
Wiki          → documentation handbook/CMS
Pages         → public static website/front door
Integrations  → AI/service connections
Agents        → bounded downstream execution
```

His strongest demonstrated progress is in **architectural judgement, source-of-truth thinking, failure-layer diagnosis and AI-first GitHub operating design**.

He still requires personal hands-on evidence for several operator tasks, especially Projects, full PR operation, deeper Actions authoring, security/rulesets and final GitHub × FolderDesk boundary decisions.

## Baseline vs Current Direction

| Area | Baseline | Current evidence |
| --- | --- | --- |
| Git fundamentals | Intermediate | Stable working foundation |
| Issues | Beginner | Strong conceptual/governance understanding; full unaided lifecycle still to prove |
| Pull Requests | Beginner/misconception | Understands PR as proposal/review gate; hands-on operator mastery still pending |
| Projects | New | Concept/material introduced; real live Project operation now current exercise |
| Actions | New | Strong conceptual/live diagnostic exposure; deeper authoring mastery pending |
| Wiki | New | Hands-on use + major documentation-platform insight demonstrated |
| Pages | New | Independently enabled and user-journey failure diagnosed |
| Releases/SemVer | Beginner | SemVer concept materially improved; full unaided release workflow still pending |
| Security/governance | Basic–New | Permission/evidence/secret distinctions improved; formal ruleset design pending |
| AI-agent GitHub workflows | New | Major architectural understanding + extensive live benchmark evidence |
| GitHub as operating platform | New | Major demonstrated shift in mental model |

## Major Demonstrated Learning

### 1. Git and GitHub mental model

David’s baseline model was useful but incomplete. Corrections now learned include:

- Git is the version-control system, not “the local repository” itself;
- commit records history; push sends commits to a remote;
- a Pull Request is not `git pull`;
- `.gitignore` is not a security remediation mechanism;
- one commit should represent one logical change, not necessarily one whole feature.

### 2. Issue-first governance

David independently challenged ad-hoc repository editing and required a durable workflow:

```text
Issue
→ branch
→ commits
→ Pull Request
→ review/checks
→ merge
→ Issue closes
```

This became a repository-wide rule in `AGENTS.md`.

**Evidence level:** strong conceptual judgement. Full unaided end-to-end personal execution is still required for mastery credit.

### 3. Semantic Versioning

David moved from an intuitive decimal-counter model toward:

```text
MAJOR.MINOR.PATCH
```

He understands that version components communicate release meaning and that `1.10.0` can validly follow `1.9.0`.

Detailed evidence: `assessments/learning-note-2026-08-27-semver.md`.

### 4. Knowledge authority and freshness

David explicitly rejected relying on model memory as the course’s knowledge authority and required a reusable verified knowledge layer.

Resulting hierarchy:

```text
current official/live evidence
→ knowledge-base/
→ github-power-user Skill
→ modules
→ model memory / old chat
```

This became a major course architecture principle.

### 5. GitHub Wiki breakthrough

David began with a database/memory-oriented Wiki model, then independently recognised through hands-on use that:

> **GitHub Wiki is a Git-backed documentation website / lightweight documentation CMS.**

He immediately connected this to SOP libraries, handbooks and agent-maintained documentation.

The course then implemented governed Wiki source under `wiki/` with automated publication to `.wiki.git`.

Detailed evidence: `assessments/learning-note-2026-08-27-wiki.md`.

### 6. GitHub Pages and user-journey validation

David independently found and enabled GitHub Pages.

He then used the public site as a real user and identified a deeper failure:

```text
deployment succeeded
≠
correct entry page
≠
good user experience
```

The correct diagnosis was that `main / (root)` was already the right publishing source; the missing layer was a deliberate `index.html` front door.

Detailed evidence: `assessments/learning-note-2026-08-27-pages-portal-fix.md`.

### 7. Integrations as an AI control plane

David recognised repository Integrations as a major GitHub capability layer connecting:

- GitHub Copilot;
- Codex;
- Claude;
- Gemini/Jules routes;
- deployment/services;
- repository governance and automation.

Professional correction:

```text
installed / authorised
≠
permission for every operation
≠
operation proven end to end
```

### 8. Deterministic Actions vs agentic AI

David independently recognised from live evidence that GitHub Actions can be a deterministic event/automation layer and that **automatic work does not prove a model executed**.

He articulated the founder-facing architecture:

```text
ChatGPT Web
→ decide / create Issue
→ GitHub trigger
→ deterministic automation / assignment
→ downstream specialist agent
→ PR / evidence
```

Detailed evidence: `assessments/learning-note-2026-08-27-deterministic-vs-agentic.md`.

### 9. Secret and credential model

Live workflow setup corrected the assumption that a repository secret could simply contain an invented password.

David now understands:

```text
secret name
= lookup interface

secret value
= real credential generated by the authenticating service
```

He also correctly protected the durable secret interface:

```text
stored secret: AGENT_DISPATCH_TOKEN
runtime variable: COPILOT_GITHUB_TOKEN
```

### 10. Copilot execution-mode distinction

David challenged the conclusion that a blocked Copilot cloud-agent assignment meant Copilot Free could not demonstrate real AI automation.

The course then proved genuine Copilot CLI inference inside GitHub Actions on Issue #45.

Reusable lesson:

> **AI capability must be classified by execution mode, not a single yes/no product label.**

Detailed evidence: `assessments/learning-note-2026-08-27-copilot-free-actions.md`.

### 11. Cloud/partner-agent benchmark programme

The course subsequently moved beyond the original 403 setup boundaries.

Current bounded executor benchmark evidence records:

| Executor | End-to-end | Score | Proven outcome |
| --- | ---: | ---: | --- |
| ChatGPT Web | 152s | **95.0** | governed GitHub-native execution |
| OpenAI Codex | 202s | **90.6** | Partner Agent branch/commit/PR |
| Anthropic Claude | 195s | **89.4** | Partner Agent branch/commit/PR |
| GitHub Copilot | 225s | **87.3** | cloud-agent branch/commit/PR |
| Google Jules | 307s | **77.9** | Jules task/branch/commit/PR, with first-snapshot quality issues |
| Gemini CLI/API | pending | pending | authenticated inference reached; HTTP 429 free-tier quota boundary |

Canonical benchmark: `knowledge-base/executor-benchmark-framework.md`.

Important student-evidence rule: these runs are valuable architectural/diagnostic learning for David, but **agent execution does not automatically prove David can personally operate every underlying GitHub step unaided**.

Detailed checkpoint: `assessments/learning-note-2026-08-27-agent-benchmarks.md`.

### 12. Provenance discipline

The benchmark work materially strengthened David’s understanding that identities must be verified from durable GitHub evidence.

Examples can involve different:

- triggering user;
- GitHub App;
- workflow bot;
- agent session;
- commit author;
- committer;
- PR author.

Reusable lesson:

```text
performed through an App
≠
AI coding agent executed
```

### 13. Projects — current learning thread

David noticed that substantial real work had accumulated without a GitHub Project and selected Projects as the next hands-on learning area.

Key mental model introduced:

```text
Issue / PR = actual work + evidence
Project    = planning/control surface over work
Field      = structured planning metadata
View       = saved lens over the same items
```

Module 04 and the live example are now substantive.

Designed live Project:

**GitHub Course — Execution & Mastery**

Starting fields:

- Status;
- Workstream;
- Priority;
- Type;
- Target date only when real.

Starting views:

- Operating Board;
- Master Table;
- AI Benchmarks;
- David Learning;
- Roadmap only when useful dates exist.

**Evidence level:** concept introduced and course material implemented. David still needs to create/use the real Project personally before mastery is credited.

Detailed evidence: `assessments/learning-note-2026-08-27-projects.md`.

### 14. Public documentation/source-of-truth insight

David used the public course surface and discovered that reader-facing documentation had drifted behind the backend repository.

This exposed a system-level lesson:

```text
backend evidence updated
+ stale dashboard / handbook
=
course integrity failure
```

The course now treats public Pages/Wiki as downstream reader surfaces that must route to maintained canonical sources and must be reviewed whenever material student/course state changes.

Detailed evidence: `assessments/learning-note-2026-08-27-documentation-integrity.md`.

## Demonstrated Strengths

- Strong practical repository/diff intuition.
- Founder/operator focus rather than developer-theory focus.
- Repeatedly challenges abstractions that do not match live behaviour.
- Strong source-of-truth instinct.
- Strong preference for durable history and evidence.
- Identifies duplicated infrastructure and asks whether GitHub already solves it natively.
- Uses public/user-facing validation rather than accepting green infrastructure signals.
- Separates deterministic automation from agentic reasoning.
- Diagnoses failures by layer rather than treating systems as a black box.
- Notices naming/interface drift such as secret-name mappings.
- Pushes the course from passive explanation into real implementation.

## Current Priority Gaps

1. **Projects hands-on:** create and operate the real course Project; fields, views, status movement and backlog triage.
2. **Pull Requests hands-on:** personally operate a complete PR review/merge gate and explain head/base/diff/check/close semantics.
3. **Issue workflow mastery:** personally run a full Issue → branch → commit → PR → merge → closure cycle without coach execution doing the key steps.
4. **Actions authoring:** read and create a bounded workflow, justify permissions and diagnose a run unaided.
5. **Release workflow:** personally decide SemVer impact, tag/publish a Release and verify alignment.
6. **Security/governance:** design and inspect rulesets/branch protections/least-privilege integration policy.
7. **AI-agent operations:** personally compare executor routes and review an AI-authored PR using provenance, diff and check evidence.
8. **GitHub × FolderDesk architecture:** produce a clear ownership/integration/retire matrix rather than duplicating systems.
9. **Course/public integrity:** explain canonical repository truth vs Wiki vs Pages vs Issue/PR evidence and identify stale-copy risk.

## Current Next Step — Projects

Use Module 04 and `04-projects/live-example-github-course-execution-mastery.md` to create the first real Project.

The hands-on exercise should prove David can explain and operate:

```text
Issue vs Project item
field vs view
Issue state vs Project Status
label vs Project field
Table vs Board vs Roadmap
```

Do not mark Projects mastered until the live Project has been used for real backlog decisions.

## Evidence Index

Key detailed learning notes include:

- `assessments/diagnostic-001.md`
- `assessments/learning-note-2026-08-27-semver.md`
- `assessments/learning-note-2026-08-27-wiki.md`
- `assessments/learning-note-2026-08-27-pages-integrations.md`
- `assessments/learning-note-2026-08-27-pages-portal-fix.md`
- `assessments/learning-note-2026-08-27-chatgpt-web-control-plane.md`
- `assessments/learning-note-2026-08-27-deterministic-vs-agentic.md`
- `assessments/learning-note-2026-08-27-copilot-free-actions.md`
- `assessments/learning-note-2026-08-27-projects.md`
- `assessments/learning-note-2026-08-27-agent-benchmarks.md`
- `assessments/learning-note-2026-08-27-documentation-integrity.md`

## Evidence Rule

Do not mark a capability complete because David read a page or watched an agent perform it.

Record separately:

```text
conceptual understanding
hands-on assisted performance
unaided performance
professional diagnosis / architecture judgement
```

The course exists to prove improvement against the original baseline, not to make the progress record look complete.
