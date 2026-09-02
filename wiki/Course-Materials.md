# Course Materials

This is the reader-facing hub for the reusable curriculum, live evidence, exercises, operating procedures and student learning material behind the course.

Use this page to **choose the right material for the task**, not merely browse folders.

---

## Fast Paths

| Goal | Start here |
| --- | --- |
| Understand how the whole course works | [Course Handbook](Course-Handbook) |
| Need a practical GitHub operating recipe | [Course Manual](Course-Manual) |
| See all modules and their current material state | [Course Modules](Course-Modules) |
| Learn GitHub Projects now | [Module 04 — Projects](https://github.com/tbhrc/github-course/tree/main/04-projects) |
| See current AI executor results | [Canonical Executor Benchmark](https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md) |
| Understand AI control-plane architecture | [AI Control Plane](AI-Control-Plane) |
| See David’s current learning state | [Student Dashboard — David](Student-Dashboard-David) |
| Do hands-on mastery work | [Exercises & Assessments](Exercises-and-Assessments) |
| Look up verified GitHub knowledge | [Knowledge Base](Knowledge-Base) |
| Use repeatable operating procedures | [SOP & Operating Library](SOP-and-Operating-Library) |
| Use the strategic feature map | [GitHub Power User](GitHub-Power-User) |

---

## Core Curriculum

### 00 — Start Here

[Open canonical module →](https://github.com/tbhrc/github-course/tree/main/00-start-here)

Covers:

- course architecture;
- authority/source-of-truth model;
- learning/evidence standard;
- current course state;
- how to navigate the complete learning path.

### 01 — GitHub Mental Model

[Open canonical module →](https://github.com/tbhrc/github-course/tree/main/01-github-mental-model)

Builds the foundation around:

- Git vs GitHub;
- repository;
- commit;
- branch;
- remote;
- clone/pull/push;
- diffs/history;
- GitHub as more than cloud storage.

### 02 — Issues: GitHub’s Work Engine

[Open canonical module →](https://github.com/tbhrc/github-course/tree/main/02-issues)

Covers Issues as the durable **why/work contract** behind repository changes and their relationship to assignees, labels, milestones, branches and PRs.

### 03 — Pull Requests: The Control Gate

[Open canonical module →](https://github.com/tbhrc/github-course/tree/main/03-pull-requests)

Covers:

- base/head;
- diff and changed files;
- checks vs review;
- draft PRs;
- merge methods;
- Issue linkage/closing keywords;
- AI-authored PR review;
- conflict and provenance judgement.

### 04 — GitHub Projects

[Open canonical module →](https://github.com/tbhrc/github-course/tree/main/04-projects)

Current hands-on focus for David.

Core model:

```text
Issue / PR = actual work + evidence
Project    = planning/control surface
Field      = structured metadata
View       = saved lens over the same items
```

Live course example:

[**GitHub Course — Execution & Mastery blueprint →**](https://github.com/tbhrc/github-course/blob/main/04-projects/live-example-github-course-execution-mastery.md)

### 05 — Actions & Automation

[Open canonical module →](https://github.com/tbhrc/github-course/tree/main/05-actions-automation)

Covers:

- triggers/workflows/jobs/steps/runners;
- permissions;
- secrets/credentials;
- deterministic automation vs AI;
- failure-layer diagnosis;
- Wiki/Pages/release/agent workflow examples.

### 06 — Releases & Professional Versioning

[Open canonical module →](https://github.com/tbhrc/github-course/tree/main/06-releases-versioning)

Covers:

```text
commits
≠
SemVer
≠
tag
≠
GitHub Release
```

and practical `MAJOR.MINOR.PATCH` discipline.

### 07 — GitHub Knowledge Architecture

[Open canonical module →](https://github.com/tbhrc/github-course/tree/main/07-knowledge-architecture)

Covers:

- verified knowledge authority;
- Wiki vs repository Markdown;
- Wiki publishing architecture;
- Pages vs Wiki;
- Pages source vs entry file vs information architecture;
- public user-journey validation.

### 08 — Security & Governance

[Open canonical module →](https://github.com/tbhrc/github-course/tree/main/08-security-governance)

Covers:

- permissions/identity;
- rulesets/branch protection;
- CODEOWNERS;
- Actions permissions;
- secrets;
- integration least privilege;
- dependency/security controls;
- AI-agent merge/write governance.

### 09 — AI Agents + GitHub

[Open canonical module →](https://github.com/tbhrc/github-course/tree/main/09-ai-agents-github)

Covers the live multi-executor control plane:

- ChatGPT Web;
- GitHub Copilot cloud agent;
- OpenAI Codex Partner Agent;
- Anthropic Claude Partner Agent;
- Google Jules;
- Gemini CLI/API;
- deterministic dispatch;
- provenance;
- benchmark scoring;
- review quality.

### 10 — GitHub × FolderDesk Architecture

[Open canonical module →](https://github.com/tbhrc/github-course/tree/main/10-github-folderdesk-architecture)

Architecture decision framework:

```text
GitHub owns
FolderDesk owns
Integrate
Retire / replace duplication
```

Focuses on native capability, one source of truth and avoiding dual-write.

---

## Current Live Course Evidence

The course is built from real GitHub work.

### AI Executor Benchmark

[Open canonical benchmark →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md)

Current bounded first-snapshot scores:

| Executor | Score /100 |
| --- | ---: |
| ChatGPT Web | **95.0** |
| OpenAI Codex | **90.6** |
| Anthropic Claude | **89.4** |
| GitHub Copilot | **87.3** |
| Google Jules | **77.9** |
| Gemini CLI/API | pending governed completion |

The benchmark also preserves setup friction, timing and provenance.

### Integration Evidence Files

[Open `integration-tests/` →](https://github.com/tbhrc/github-course/tree/main/integration-tests)

These files preserve executor-specific proof separately so one agent’s result is not attributed to another.

### Actions Workflows

[Open `.github/workflows/` →](https://github.com/tbhrc/github-course/tree/main/.github/workflows)

Important live examples include:

- Wiki publishing;
- release publishing;
- Copilot/Codex/Claude dispatch;
- Copilot CLI inference;
- Gemini benchmark execution.

### Public Publishing

- [GitHub Pages public course →](https://tbhrc.github.io/github-course/)
- [Live Course Wiki →](https://github.com/tbhrc/github-course/wiki)

---

## Verified Knowledge Base

[Open canonical knowledge index →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/README.md)

High-value notes include:

- source/freshness policy;
- Wiki vs repository Markdown;
- Wiki as documentation platform;
- Wiki publishing architecture;
- Pages/Actions/Integrations control plane;
- Pages entry-file README trap;
- ChatGPT Web/GitHub control plane;
- deterministic Actions vs agentic AI;
- Copilot Free AI in Actions;
- executor benchmark framework;
- Web-first/local-by-exception executor policy.

The Wiki [Knowledge Base](Knowledge-Base) page is the reader-friendly index.

---

## GitHub Power User Skill

[Open the course's frozen public Skill snapshot →](https://github.com/tbhrc/github-course/blob/main/skills/github-power-user/SKILL.md)

Use the Skill as the strategic feature map:

```text
need / problem
→ identify likely native GitHub capability
→ verify current facts in knowledge-base/ / official evidence
→ turn into module/exercise
```

The Skill is an accelerator, not the highest factual authority.

---

## Exercises

[Open canonical exercises →](https://github.com/tbhrc/github-course/tree/main/exercises)

Current exercise paths include:

1. full Issue workflow;
2. live Projects control surface;
3. PR review/control gate;
4. Actions workflow reading/diagnosis;
5. release/SemVer;
6. AI executor review;
7. security/governance design;
8. GitHub × FolderDesk ownership matrix.

[Open Exercises & Assessments Wiki page →](Exercises-and-Assessments)

---

## SOPs

[Open canonical SOP folder →](https://github.com/tbhrc/github-course/tree/main/sops)

Current core procedures:

- repository change workflow;
- course documentation integrity.

The documentation-integrity SOP was added after David discovered that a comprehensive backend could still produce a stale/shallow public course experience.

[Open SOP & Operating Library →](SOP-and-Operating-Library)

---

## Student #1 Materials — David

### Canonical learner truth

- [Profile](https://github.com/tbhrc/github-course/blob/main/students/david/profile.md)
- [Immutable baseline](https://github.com/tbhrc/github-course/blob/main/students/david/baseline-2026-08-27.md)
- [Current progress](https://github.com/tbhrc/github-course/blob/main/students/david/progress.md)
- [Assessment/evidence folder](https://github.com/tbhrc/github-course/tree/main/students/david/assessments)

### Reader-facing summary

[Student Dashboard — David](Student-Dashboard-David)

### Important learning notes

Current dated evidence covers:

- SemVer;
- Wiki/knowledge architecture;
- Pages/Actions/Integrations;
- Pages portal failure/fix;
- ChatGPT Web control plane;
- deterministic vs agentic automation;
- Copilot Free Actions inference;
- Projects;
- multi-agent benchmarks;
- documentation integrity/source-of-truth.

---

## Question Bank

[Open question bank →](https://github.com/tbhrc/github-course/tree/main/question-bank)

Use for reusable diagnostics and assessments. Student answers/evidence belong under the student folder, not in the shared question bank.

---

## Templates

[Open templates →](https://github.com/tbhrc/github-course/tree/main/templates)

Templates support repeatable Issue/course/student structures. They should not replace understanding of the underlying GitHub object.

---

## Certification

[Open certification material →](https://github.com/tbhrc/github-course/tree/main/certification)

Final certification should compare demonstrated current evidence against the immutable starting baseline, rather than relying on self-assessment.

---

## Current Priority for Student #1

**GitHub Projects.**

Use the Projects module and live backlog blueprint to create the first real course Project and prove hands-on control of fields/views/statuses.

After that, return to the remaining personal mastery gaps in PRs, Actions, releases, security/governance and GitHub × FolderDesk architecture.

---

## Navigation

[Home](Home) · [Course Handbook](Course-Handbook) · [Course Manual](Course-Manual) · [Course Modules](Course-Modules) · [Student Dashboard](Student-Dashboard-David) · [Exercises](Exercises-and-Assessments) · [Knowledge Base](Knowledge-Base)
