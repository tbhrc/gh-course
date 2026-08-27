# GitHub Professional Operator — Course Wiki

Welcome to the **reader-facing operating handbook** for the GitHub Professional Operator — AI-First Founder Crash Course.

This Wiki is designed to be used as a course interface, not as an independent source of changing operational truth.

> **Architecture rule:** canonical repository files hold truth; generated Wiki pages expose volatile live state; stable Wiki pages provide narrative, navigation and teaching.

---

## Start Here

| Need | Go to |
| --- | --- |
| Understand how the course works | [Course Handbook](Course-Handbook) |
| Use the practical operating field guide | [Course Manual](Course-Manual) |
| See the curriculum | [Course Modules](Course-Modules) |
| Browse learning resources | [Course Materials](Course-Materials) |
| See David's live learner state | [Student Dashboard — David](Student-Dashboard-David) |
| See live AI benchmark results | [AI Executor Benchmark & Leaderboard](AI-Executor-Benchmark) |
| Understand the AI-first control-plane model | [AI Control Plane](AI-Control-Plane) |
| Do hands-on work | [Exercises & Assessments](Exercises-and-Assessments) |
| Look up verified GitHub knowledge | [Knowledge Base](Knowledge-Base) |
| Use the strategic GitHub feature map | [GitHub Power User](GitHub-Power-User) |
| Use repeatable operating procedures | [SOP & Operating Library](SOP-and-Operating-Library) |
| Look up terminology | [Reference & Glossary](Reference-and-Glossary) |
| Understand the learning system | [About This Learning System](About-This-Learning-System) |
| Open the public site | [GitHub Pages Course Site](https://tbhrc.github.io/github-course/) |

---

## Live State Is Generated

Two high-change reader surfaces are deliberately **not maintained by hand**.

### Student state

```text
students/david/progress.md
= canonical learner state

        ↓ GitHub Action

Student Dashboard — David
= generated Wiki view
```

[Open live Student Dashboard →](Student-Dashboard-David)

### Executor benchmark

```text
knowledge-base/executor-benchmark-framework.md
= canonical benchmark truth

        ↓ GitHub Action

AI Executor Benchmark & Leaderboard
= generated Wiki view
```

[Open live benchmark →](AI-Executor-Benchmark)

This prevents the course from maintaining a current learner status or benchmark matrix in several independent places.

---

## Core Course Operating Model

```text
idea / request
→ GitHub Issue
→ issue-linked branch or authorised agent branch
→ focused commits
→ Pull Request
→ checks / review
→ merge
→ Actions / Wiki / Pages / deployment / Release when relevant
→ durable evidence
```

A professional operator should be able to answer:

- why the work exists;
- who or which agent performed it;
- what changed;
- what evidence passed or failed;
- whether it is safe to merge;
- what is currently deployed/published;
- where the canonical truth lives.

---

## Course Surfaces

### Main repository — canonical operating record

Use the repository for:

- verified knowledge;
- module content;
- learner evidence;
- workflows and configuration;
- Issues / branches / commits / PRs;
- benchmark evidence;
- release/version history.

### Wiki — reader handbook

Use the Wiki for:

- Handbook;
- Manual;
- curriculum navigation;
- generated live student/benchmark views;
- learning breakthroughs;
- exercises/SOP/reference navigation.

Stable Wiki narrative lives under `wiki/` in the main repository. Volatile pages are generated at publish time from canonical files.

### GitHub Pages — public front door

Use Pages as the external entry point into maintained course surfaces. Pages should avoid carrying its own copy of changing learner/benchmark truth.

---

## Core Learning Principles

### GitHub is an operating platform

GitHub is not merely cloud storage for Git repositories. It combines change control, work tracking, planning, automation, publishing, security and agent integration around repository history.

### Every meaningful change needs context, history and evidence

```text
Issue
→ branch
→ commits
→ PR
→ review/checks
→ merge
```

### Verify what matters

```text
current official/live evidence
→ knowledge-base/
→ github-power-user Skill
→ course modules
→ model memory / old chat
```

### Automatic does not mean AI

```text
GitHub event
→ deterministic Action
→ optional AI hand-off
```

### Installed does not mean proven

```text
installed / authorised
≠
permission granted
≠
operation proven
```

### Generated views should replace duplicated current facts

```text
canonical truth
→ deterministic projection
→ reader surface
```

Narrative synthesis still belongs in governed authored documents; volatile factual state should not depend on an agent remembering every frontend copy.

---

## Main Repository Links

- [Repository](https://github.com/tbhrc/github-course)
- [README](https://github.com/tbhrc/github-course/blob/main/README.md)
- [AGENTS.md](https://github.com/tbhrc/github-course/blob/main/AGENTS.md)
- [Verified Knowledge Base](https://github.com/tbhrc/github-course/tree/main/knowledge-base)
- [Canonical Executor Benchmark](https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md)
- [Canonical David Progress](https://github.com/tbhrc/github-course/blob/main/students/david/progress.md)
- [Projects Module](https://github.com/tbhrc/github-course/tree/main/04-projects)
- [Issues](https://github.com/tbhrc/github-course/issues)
- [Pull Requests](https://github.com/tbhrc/github-course/pulls)
- [Actions](https://github.com/tbhrc/github-course/actions)
- [Releases](https://github.com/tbhrc/github-course/releases)

---

**Navigation:** [Handbook](Course-Handbook) · [Manual](Course-Manual) · [Modules](Course-Modules) · [Materials](Course-Materials) · [Student Dashboard](Student-Dashboard-David) · [AI Benchmark](AI-Executor-Benchmark) · [AI Control Plane](AI-Control-Plane) · [Knowledge Base](Knowledge-Base) · [Exercises](Exercises-and-Assessments) · [SOPs](SOP-and-Operating-Library)
