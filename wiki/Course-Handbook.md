# Course Handbook

The **GitHub Professional Operator — AI-First Founder Crash Course** is a learn-by-operating programme for founders and AI-assisted operators who need to use GitHub as a professional operating platform, not merely as cloud storage for Git repositories.

This Handbook explains **how the course works, where truth lives, how progress is proven, and how the GitHub capabilities fit together**.

> **Core principle:** Every meaningful change should have context, history and evidence.

---

## 1. What You Are Learning

The target is not feature memorisation.

A professional GitHub operator should be able to answer:

- What work exists and why?
- Who or which agent is responsible?
- Where is the proposed change isolated?
- What changed?
- What evidence proves it is safe?
- What is blocked, under review or complete?
- What version contains the accepted change?
- What automation or AI executor actually ran?
- What should GitHub own and what should integrate with another system?

The course therefore teaches GitHub as an **operating system for governed change**.

```text
Issue
→ branch
→ commits
→ Pull Request
→ checks / review
→ merge
→ release / deployment when appropriate
→ durable history
```

Portfolio planning adds:

```text
Issues + Pull Requests
→ GitHub Project
→ Table / Board / Roadmap / filtered views
```

AI-assisted execution adds:

```text
human / ChatGPT Web
→ governed Issue
→ direct agent assignment or deterministic dispatch
→ specialist executor
→ branch / commit / PR
→ checks / review
→ merge
```

---

## 2. The Course Is Also the Lab

This repository is not a fake training sandbox containing only examples.

The course itself is operated through GitHub:

- course changes start from Issues;
- work happens on branches;
- PRs are the acceptance gate;
- Actions publish Wiki/Pages/releases and run agent workflows;
- Projects is being introduced using the real course backlog;
- AI agents are benchmarked using real branches/commits/PRs;
- student learning evidence is stored in the repository;
- the Wiki is published from governed `wiki/` source;
- GitHub Pages is the public front door.

This means the learner sees the exact infrastructure being taught.

---

## 3. The Course Backbone

### Issue — why the work exists

Use an Issue for actionable work, a bug, request, investigation or implementation contract.

A useful Issue normally contains:

1. objective/problem;
2. context/evidence;
3. scope;
4. acceptance criteria;
5. routing/ownership where useful.

The Issue remains the durable reason the change happened.

### Branch — where work is isolated

Do not perform substantive course work directly on `main`.

A branch provides an isolated line of work so changes can be reviewed before acceptance.

### Commit — logical history

A commit is a logical checkpoint in Git history.

```text
commit
≠
push
```

Commit locally/within the Git operation; push makes the commit available on the remote.

### Pull Request — proposal and control gate

A PR proposes merging the head branch into the base branch and provides:

- diff;
- changed files;
- commits;
- checks;
- comments/review;
- approval/merge decision;
- Issue linkage.

AI agent output is a proposal, not authority. Review still matters.

### Checks — automated evidence

Checks can prove repeatable mechanical conditions such as tests/build/lint/policy.

```text
green checks
≠
conceptually correct change
```

Use review for judgement.

### Merge — accepted change

Merge means the proposed work enters the target branch.

Mergeability only means Git can combine branches; it does not prove governance/quality approval.

### Release — named/versioned delivery point

Commits and release versions are different layers.

```text
commits = detailed history
SemVer  = release meaning
tag     = exact snapshot
Release = published version record
```

---

## 4. Choose the Right GitHub Object

| Need | Use |
| --- | --- |
| Actionable work | **Issue** |
| Parent/child decomposition | **Sub-issues** |
| Blocking relationship | **Issue dependency** |
| Proposed repository change | **Pull Request** |
| Portfolio planning | **Project** |
| Open-ended conversation before commitment | **Discussion** |
| Event/scheduled automation | **Actions** |
| Versioned delivery | **Tag + Release** |
| Governed verified knowledge | **Repository Markdown** |
| Browsable documentation handbook | **Wiki** |
| Static public website | **Pages** |
| Repository policy | **Rulesets / branch protection** |
| Path ownership/review | **CODEOWNERS** |
| External AI/service connection | **GitHub App / Integration** |
| Repository AI worker | **Coding/custom agent** |

The course’s first power-user rule is:

> **Search GitHub-native capability before building duplicate infrastructure.**

---

## 5. GitHub Projects — The Planning Layer

An Issue or PR is the underlying work object.

A Project is the planning/control surface over those objects.

```text
Issue / PR = actual work + evidence
Project    = portfolio/control view
Field      = structured planning metadata
View       = saved lens over the same items
```

One Issue can appear in multiple Project views without being duplicated.

### Course Project design

**GitHub Course — Execution & Mastery**

Initial fields:

- Status — Backlog / Ready / In progress / Blocked / Review / Done;
- Workstream — Course / Learning / AI Integration / Knowledge Base / Publishing / Release;
- Priority — P0 / P1 / P2 / P3;
- Type — Lesson / Exercise / Benchmark / Documentation / Infrastructure / Release;
- Target date — only when a genuine date matters.

Initial views:

- Operating Board;
- Master Table;
- AI Benchmarks;
- David Learning;
- Roadmap when real target dates exist.

Important distinction:

```text
Issue state = open
Project Status = Blocked
```

Those are different workflow layers.

[Open Module 04 — Projects →](https://github.com/tbhrc/github-course/tree/main/04-projects)

---

## 6. Actions — The Automation Layer

GitHub Actions turns repository events into repeatable automation.

```text
event
→ workflow
→ job
→ runner
→ steps
→ result
```

Examples in this course include:

- Wiki publishing;
- Pages deployment;
- release publishing;
- agent dispatch;
- Copilot CLI AI inference;
- Gemini benchmark execution.

### Critical distinction

```text
GitHub Action executed
≠
AI model executed
```

Actions can be deterministic shell/API automation with no model involved.

Use the four-layer model:

```text
control surface
→ deterministic trigger/automation
→ optional agentic execution
→ delivery/evidence
```

[Open Module 05 — Actions →](https://github.com/tbhrc/github-course/tree/main/05-actions-automation)

---

## 7. AI Agents — GitHub as a Control Plane

The course now has live evidence across several executor architectures.

```text
ChatGPT Web           → connected GitHub operations
GitHub Copilot        → native cloud coding agent
OpenAI Codex          → GitHub Partner Agent
Anthropic Claude      → GitHub Partner Agent
Google Jules          → Jules GitHub App/cloud task
Gemini CLI/API        → GitHub Actions + Gemini credential/API route
```

Do not collapse these into one generic “GitHub AI” capability.

### Proof rule

```text
installed / authorised
≠
permission available
≠
request accepted
≠
agent/model executed
≠
correct output
```

### Current canonical benchmark

Use the maintained benchmark rather than a static Issue body:

[**Open AI Executor Benchmark & Leaderboard →**](https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md)

The benchmark currently compares ChatGPT Web, Codex, Claude, Copilot and Jules, while Gemini CLI/API is pending governed completion after authenticated inference reached a quota boundary.

[Open AI Control Plane →](AI-Control-Plane)

---

## 8. Knowledge Architecture

The course does not treat AI model memory as the authority for material GitHub behaviour.

Authority order:

```text
1. current official GitHub documentation / live evidence
2. knowledge-base/ verified notes
3. github-power-user Skill
4. course modules/exercises
5. model memory / older chat
```

The verified knowledge base exists because GitHub changes quickly, especially around agents, Projects, Actions, security and plans.

[Open Knowledge Base →](Knowledge-Base)

---

## 9. Wiki vs Pages vs Repository Markdown

These surfaces have different jobs.

### Repository Markdown

Use for governed canonical knowledge, curriculum and evidence that should participate directly in Issue → branch → PR review.

### Wiki

Use for human-readable documentation, handbook navigation, progress dashboards, SOP/course reference and cross-links.

> Wiki = Git-backed documentation website / lightweight documentation CMS.

### Pages

Use for a static public website with more control over HTML/CSS/JavaScript and information architecture.

The course uses:

```text
main repository = canonical truth/evidence
Wiki            = reader handbook
Pages           = public front door
```

A major course failure lesson was:

```text
green Pages deployment
≠
correct entry page
≠
good user experience
```

---

## 10. Source of Truth and Documentation Integrity

A reader-facing course is only trustworthy if its summaries reflect the canonical backend.

The course now uses:

```text
canonical repository truth
→ Wiki summaries/navigation
→ Pages front door
```

Issues and PRs are evidence/history, not ideal live dashboards when a maintained canonical file exists.

A material course/student change now requires a documentation-integrity review in the same PR.

[Open Course Documentation Integrity SOP →](https://github.com/tbhrc/github-course/blob/main/sops/course-documentation-integrity.md)

---

## 11. Security and Governance

Professional operation requires deliberate control over:

- repository roles/permissions;
- rulesets/branch protection;
- PR/check/review requirements;
- Actions permissions;
- secrets;
- integration access;
- dependency/security scanning;
- merge/deployment authority;
- audit provenance.

### Secrets

A secret is a secure container for a real credential.

`.gitignore` does not remove a credential that was already committed.

### AI governance

```text
agent can write
≠
agent should merge
```

Use isolated branches, PR review and least privilege until a lower-risk automation has been repeatedly proven.

[Open Module 08 — Security & Governance →](https://github.com/tbhrc/github-course/tree/main/08-security-governance)

---

## 12. Student Evidence Model

This course preserves the actual learning path.

For meaningful progress, distinguish:

1. original understanding;
2. misconception/gap;
3. correction learned;
4. demonstrated understanding;
5. partial recall;
6. remaining mastery gap.

Exposure does not equal mastery.

A useful scale is:

```text
seen
→ understands concept
→ performs with help
→ performs unaided
→ diagnoses/improves professionally
```

### Immutable baseline

Never rewrite a baseline to make later progress look better.

### Mutable progress

Current learner state belongs in `students/<student>/progress.md`.

### Dated evidence

Significant learning moments belong under `students/<student>/assessments/`.

---

## 13. Student #1 — David

David started at approximately:

- Git fundamentals: **6/10**;
- GitHub platform operation: **2/10**.

He has since demonstrated major progress in:

- Issue-first governance;
- Semantic Versioning;
- knowledge authority/freshness;
- Wiki and Pages architecture;
- public user-journey validation;
- deterministic Actions vs agentic AI;
- secrets/credential modelling;
- AI integration/control-plane reasoning;
- multi-agent benchmark/provenance discipline;
- source-of-truth/documentation integrity.

His current hands-on focus is **GitHub Projects**.

[Open David’s current dashboard →](Student-Dashboard-David)

---

## 14. Course Modules

| Module | Topic | Material state |
| --- | --- | --- |
| 00 | Start Here | Substantive |
| 01 | GitHub Mental Model | Substantive |
| 02 | Issues — GitHub’s Work Engine | Substantive |
| 03 | Pull Requests — The Control Gate | Substantive |
| 04 | GitHub Projects | Substantive + live example |
| 05 | Actions & Automation | Substantive + live workflow evidence |
| 06 | Releases & Professional Versioning | Substantive |
| 07 | Knowledge Architecture | Substantive + live Wiki/Pages |
| 08 | Security & Governance | Substantive |
| 09 | AI Agents + GitHub | Substantive + live benchmarks |
| 10 | GitHub × FolderDesk Architecture | Substantive decision framework |

Material completion and learner mastery are intentionally tracked separately.

[Open Course Modules →](Course-Modules)

---

## 15. How to Use the Course as a Learner

1. Open [Student Dashboard — David](Student-Dashboard-David) or your own future learner dashboard.
2. Identify the current hands-on focus.
3. Read the relevant module.
4. Use the real repository where possible.
5. Preserve evidence in GitHub objects/files.
6. Answer the mastery questions without copying.
7. Update current progress only when evidence materially changes it.
8. Move to the next gap, not back to generic theory.

---

## 16. How an AI Coach Should Use the Course

Before coaching:

1. read root `AGENTS.md`;
2. read the student profile;
3. read the immutable baseline;
4. read current progress;
5. read the current module;
6. use verified knowledge when current facts matter;
7. continue from demonstrated knowledge;
8. use an Issue before substantive repository changes;
9. preserve student-specific evidence separately from reusable curriculum;
10. run the documentation-integrity gate when material state changes.

Fresh ChatGPT/GitHub-connector chats should be explicitly told:

```text
Use tbhrc/github-course. Before doing anything else,
read root AGENTS.md and follow its startup protocol
and repository workflow.
```

---

## 17. How Mastery Is Judged

A learner should ultimately demonstrate:

- Issue creation/classification/closure;
- branch/commit discipline;
- PR review/merge judgement;
- Project planning/control;
- Actions reading/creation/diagnosis;
- SemVer/tag/Release workflow;
- knowledge/Wiki/Pages architecture;
- security/governance judgement;
- AI-agent delegation/review/provenance;
- GitHub vs external-system architecture decisions.

Final certification should compare real evidence against the original baseline.

---

## Continue

- [Course Manual](Course-Manual) — practical field guide
- [Course Modules](Course-Modules) — full learning path
- [Course Materials](Course-Materials) — curated resources/evidence
- [Exercises & Assessments](Exercises-and-Assessments) — hands-on mastery work
- [Student Dashboard — David](Student-Dashboard-David) — current learner state
- [AI Control Plane](AI-Control-Plane) — AI-first execution architecture
- [Knowledge Base](Knowledge-Base) — verified knowledge index
- [SOP & Operating Library](SOP-and-Operating-Library) — repeatable procedures
- [Home](Home)
