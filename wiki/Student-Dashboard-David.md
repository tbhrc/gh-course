# Student Dashboard — David

This is the **reader-facing current progress dashboard** for Student #1.

> Canonical learner evidence lives under [`students/david/`](https://github.com/tbhrc/github-course/tree/main/students/david). This Wiki page summarises and links to that evidence; it does not replace it.

---

## Current Status

**Stage:** Stage 2 — Crash Course / live operation  
**Current hands-on focus:** **Module 04 — GitHub Projects**  
**Next objective:** create and operate **GitHub Course — Execution & Mastery** using real course Issues/PRs.  
**Baseline date:** 27 August 2026.

[Open canonical current progress →](https://github.com/tbhrc/github-course/blob/main/students/david/progress.md)

---

## Starting Position

David’s immutable baseline remains the comparison point.

| Area | Starting level |
| --- | --- |
| Git fundamentals | ~6/10 |
| GitHub platform operation | ~2/10 |
| Pull Requests | Beginner / misconception |
| Issues | Beginner |
| Projects | New |
| Actions | New |
| Wiki / knowledge architecture | New |
| Releases / versioning | Beginner |
| Security / governance | Basic–New |
| AI-agent GitHub workflows | New |
| GitHub as operating platform | New |

[Open immutable baseline →](https://github.com/tbhrc/github-course/blob/main/students/david/baseline-2026-08-27.md)

The baseline is historical evidence and is never rewritten to reflect later improvement.

---

## Current Mental Model

David has materially shifted from:

```text
GitHub ≈ remote/cloud repository storage
```

toward:

```text
GitHub
= governed change-management operating platform
+ work tracking
+ review/evidence
+ automation
+ portfolio planning
+ documentation/publishing
+ AI/service control plane
```

Core chain:

```text
Issue
→ branch
→ commits
→ Pull Request
→ checks/review
→ merge
→ release/deployment when relevant
→ durable history
```

---

## Major Demonstrated Progress

### Git / GitHub foundations

Corrections materially learned:

- Git is the version-control system, not the local repository itself;
- commit records history; push sends commits to a remote;
- Pull Request is a merge proposal/review surface, not `git pull`;
- `.gitignore` does not remove an already committed secret;
- one commit should represent a logical change rather than automatically one whole feature.

### Issue-first governance

David independently required the course to stop making substantive repository changes directly from chat without a governing Issue.

This became:

```text
Issue
→ branch
→ commits
→ PR
→ review/checks
→ merge
→ Issue closes
```

**Evidence level:** strong conceptual judgement; full learner-operated end-to-end mastery still to prove.

### Semantic Versioning

David moved from a decimal-counter intuition to the professional model:

```text
MAJOR.MINOR.PATCH
```

He understands that `1.10.0` can follow `1.9.0` and that version numbers communicate release meaning rather than counting commits.

[Open SemVer learning note →](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-semver.md)

### Knowledge authority

David explicitly rejected AI memory as the course’s final source of current GitHub truth.

Resulting hierarchy:

```text
current official/live evidence
→ knowledge-base/
→ github-power-user Skill
→ course modules
→ old chat/model memory
```

### GitHub Wiki breakthrough

David’s starting Wiki model was database/memory-oriented.

Hands-on use produced the independent insight:

> **GitHub Wiki is a Git-backed documentation website / lightweight documentation CMS.**

That insight was applied directly: the course Wiki became the reader-facing handbook/dashboard and is now published from governed `wiki/` source through GitHub Actions.

[Open Wiki learning note →](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-wiki.md)

### GitHub Pages and user-journey validation

David independently enabled Pages and later tested the public course from a real user perspective.

He exposed the difference between:

```text
green deployment
≠
correct entry page
≠
good user experience
```

The course learned to separate Pages source, entry file and information architecture.

[Open Pages portal learning note →](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-pages-portal-fix.md)

### Integrations as a control plane

David identified repository Integrations as a major AI-first GitHub layer and pushed the course to test actual capabilities rather than assume installed access equals operational access.

Professional model:

```text
installed / authorised
≠
permission granted for every operation
≠
operation proven end to end
```

### Deterministic Actions vs AI

David independently recognised that automatic work can be ordinary deterministic automation.

```text
GitHub event
→ deterministic Action
→ optional AI hand-off
```

He then required the founder-facing pattern to become:

```text
talk / decide in ChatGPT Web
→ create governed Issue
→ GitHub triggers/routes
→ specialist executor works
→ PR/evidence
```

[Open deterministic-vs-agentic learning note →](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-deterministic-vs-agentic.md)

### Secrets and credentials

David now understands that an Actions secret stores a real credential; it is not an invented password.

He also correctly defended the stable interface:

```text
stored secret: AGENT_DISPATCH_TOKEN
runtime variable: COPILOT_GITHUB_TOKEN
```

### Copilot execution modes

David challenged the idea that a blocked cloud-agent assignment meant all Copilot AI automation was unavailable.

The course then physically proved genuine Copilot CLI inference inside Actions.

Reusable lesson:

> **Classify AI capability by execution mode, not by one product name or plan label.**

[Open Copilot Free proof →](Copilot-Free-AI-Actions)

---

## Multi-Agent Benchmark Progress

The course later proved several downstream executor routes beyond the early setup/403 stage.

Canonical benchmark:

[**Open AI Executor Benchmark & Leaderboard →**](https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md)

Current bounded one-file benchmark:

| Executor | End-to-end | Score /100 | Current proof |
| --- | ---: | ---: | --- |
| ChatGPT Web | 152s | **95.0** | governed connected GitHub work |
| OpenAI Codex | 202s | **90.6** | Partner Agent branch/commit/PR |
| Anthropic Claude | 195s | **89.4** | Partner Agent branch/commit/PR |
| GitHub Copilot | 225s | **87.3** | cloud-agent branch/commit/PR |
| Google Jules | 307s | **77.9** | Jules task/branch/commit/PR; first snapshot required factual review |
| Gemini CLI/API | pending | pending | credential/inference route proven; quota prevents governed branch/PR completion |

### Important learning distinction

These runs prove the **course architecture and executors**.

They do not automatically prove David personally configured/operated every underlying step unaided.

[Open agent benchmark learning note →](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-agent-benchmarks.md)

---

## Jules / Gemini Separation Lesson

A separate agent accidentally triggered Jules from Gemini Issue #26.

That produced valid Jules activation evidence but mixed two executor lanes.

Correct model:

```text
#26 → Gemini CLI/API
#63 → Google Jules coding agent
```

The contaminated PR was preserved as history and not merged; the clean Jules benchmark used its own Issue/evidence lane.

This strengthened David’s provenance discipline.

---

## Current Hands-On Focus — GitHub Projects

David noticed that significant real work had accumulated without creating a Project and selected Projects as the next learning area.

Key model:

```text
Issue / PR = actual work + evidence
Project    = planning/control layer
Field      = structured metadata
View       = saved lens
```

### Course Project design

**GitHub Course — Execution & Mastery**

Initial fields:

- Status;
- Workstream;
- Priority;
- Type;
- Target date only where real.

Initial views:

- Operating Board;
- Master Table;
- AI Benchmarks;
- David Learning;
- Roadmap when genuine dates exist.

[Open Projects module →](https://github.com/tbhrc/github-course/tree/main/04-projects)

[Open live Project blueprint →](https://github.com/tbhrc/github-course/blob/main/04-projects/live-example-github-course-execution-mastery.md)

### Current evidence level

**Concept and course design introduced. Not yet mastered.**

David still needs to create/use the live Project and make real backlog decisions.

[Open Projects learning note →](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-projects.md)

---

## Documentation Integrity Breakthrough

David then used the public course and discovered that the backend had become far more sophisticated than several reader-facing pages.

He correctly identified this as a system failure rather than asking for one stale link to be patched.

New course lesson:

```text
current backend truth
+ stale reader summary
=
course integrity failure
```

Correct architecture:

```text
canonical repository truth
→ Wiki reader summaries/navigation
→ Pages public routing
```

[Open documentation-integrity learning note →](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-documentation-integrity.md)

[Open Course Documentation Integrity SOP →](https://github.com/tbhrc/github-course/blob/main/sops/course-documentation-integrity.md)

---

## Demonstrated Strengths

- Strong source-of-truth instinct.
- Prefers live operation to theory.
- Challenges claims that do not match observable evidence.
- Thinks in founder/operator architecture rather than narrow developer mechanics.
- Notices duplicated infrastructure and asks whether GitHub already provides the native capability.
- Strong preference for traceability/history.
- Uses the public/user surface to validate the system, not only backend status.
- Diagnoses failures by layer.
- Separates deterministic automation from agentic reasoning.
- Pushes for automation that simplifies the human front door instead of adding unnecessary orchestration.

---

## Still Requires Hands-On Mastery

1. **Projects** — create/use the live course Project and explain fields/views/status/labels.
2. **Pull Requests** — personally operate a full review/merge gate.
3. **Full Issue workflow** — personally complete Issue → branch → commit → PR → merge → closure.
4. **Actions authoring** — read/create a workflow and diagnose it unaided.
5. **Release workflow** — personally choose SemVer impact and publish/verify tag + Release.
6. **Security/governance** — design/inspect rulesets, least privilege and agent merge authority.
7. **AI-agent review** — personally review an AI-authored PR using provenance/diff/check evidence.
8. **GitHub × FolderDesk architecture** — produce the ownership/integration/retire matrix.
9. **Source-of-truth explanation** — explain repo canonical truth vs Wiki vs Pages vs Issues/PR evidence unaided.

---

## Evidence Index

[Open all David assessments →](https://github.com/tbhrc/github-course/tree/main/students/david/assessments)

Important checkpoints include:

- diagnostic baseline;
- SemVer;
- Wiki/knowledge architecture;
- Pages/Integrations;
- Pages portal diagnosis;
- ChatGPT Web control plane;
- deterministic vs agentic automation;
- Copilot Free Actions inference;
- Projects;
- multi-agent benchmark programme;
- documentation integrity.

---

## Evidence Rule

The course records separately:

```text
concept understood
performed with help
performed unaided
professional diagnosis / architecture judgement
```

Agent/coach execution is not silently credited as David’s personal mastery.

---

## Current Next Step

**Create and operate the real GitHub Project.**

Then use the Project to identify the next highest-value personal mastery task.

---

## Navigation

[Home](Home) · [Course Handbook](Course-Handbook) · [Course Manual](Course-Manual) · [Course Modules](Course-Modules) · [Course Materials](Course-Materials) · [AI Control Plane](AI-Control-Plane) · [Exercises](Exercises-and-Assessments) · [Epiphanies](Epiphanies-and-Learning-Breakthroughs)
