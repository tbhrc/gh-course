# Student Dashboard — David

This is the **reader-facing progress dashboard** for Student #1.

> Canonical learner evidence lives under [`students/david/`](https://github.com/tbhrc/github-course/tree/main/students/david). This Wiki page is a navigable summary, not a replacement for the evidence files.

## Current Status

**Stage:** Stage 2 — Crash Course  
**Current focus:** AI Agents + GitHub — from deterministic dispatch to proven Free-plan AI inference  
**Baseline date:** 27 August 2026

## Starting Position

| Area | Starting level |
| --- | --- |
| Git fundamentals | ~6/10 |
| GitHub platform operation | ~2/10 |
| Pull Requests | Beginner |
| Issues | Beginner |
| Projects | New |
| Actions | New |
| Wiki / knowledge architecture | New |
| Releases / versioning | Beginner |
| AI-agent GitHub workflows | New |

[Open immutable baseline →](https://github.com/tbhrc/github-course/blob/main/students/david/baseline-2026-08-27.md)

## Progress So Far

### Demonstrated / materially improved

- Git vs repository vs GitHub mental model.
- Commit vs push distinction.
- Branching and diffs.
- Issue-first governance recognised independently.
- Semantic Versioning model learned: `MAJOR.MINOR.PATCH`.
- Durable knowledge-base requirement recognised independently.
- GitHub Wiki operated hands-on and recognised as a Git-backed documentation publishing surface.
- GitHub Pages found and enabled independently.
- Actions permissions, workflow approval settings and Integrations explored independently.
- Public Pages site tested as a real user; the README-style entry failure was identified and fixed with a deliberate root `index.html` portal.
- Deterministic GitHub Actions vs agentic AI recognised independently from live workflow behaviour.
- Real fine-grained GitHub PAT created after correcting the mistaken idea that an Actions secret value could be an invented password.
- ChatGPT Web → GitHub trigger → deterministic Action command bus physically proven.
- Codex partner-agent assignment benchmark reached the authenticated API and returned HTTP `403`.
- GitHub Copilot cloud-agent assignment benchmark independently reached the authenticated API and returned HTTP `403`.
- David challenged the assumption that the cloud-agent failure meant Copilot Free could not run genuine AI automation at all.
- Existing PAT was granted user Copilot-request permissions.
- David explicitly preserved the official repository secret name `AGENT_DISPATCH_TOKEN`; the workflow maps it at runtime to `COPILOT_GITHUB_TOKEN` rather than renaming the secret.
- **Copilot Free AI inference is now physically proven:** Issue #45 triggered Actions run `33076875845`, the Copilot CLI inference step succeeded, and original repository-aware AI analysis was posted back to the Issue.

## Major New Breakthrough

```text
COPILOT FREE

✅ Issue-triggered GitHub Actions
✅ GitHub Copilot CLI
✅ genuine AI inference
✅ AI-generated safe output

❌ autonomous Copilot cloud-agent Issue assignment
❌ cloud-agent-authored branch / commit / PR
```

This resolved an important product-model confusion:

> **Copilot capability must be classified by execution mode, not by a single yes/no “does the plan have Copilot agents?” question.**

[Open Copilot Free AI proof →](Copilot-Free-AI-Actions)

### Applied Architecture

```text
GitHub
├── repository truth
├── Issues / PR governance
├── Wiki handbook
├── Pages public website
├── Actions automation
│   ├── deterministic scripts / dispatchers
│   └── Copilot CLI AI inference
└── AI / service integrations
    ├── GitHub Copilot cloud agent
    ├── Codex / Claude / Gemini partner agents
    └── deployment/services
```

The founder-facing flow now physically proven is:

```text
ChatGPT Web
→ create Issue
→ GitHub event fires
→ deterministic Action
→ Copilot Free AI inference
→ safe captured output
→ durable GitHub evidence
```

### Professional Corrections Now Learned

```text
installed / authorised
≠
permission for every operation
≠
operation proven end to end
```

```text
automatic GitHub work
≠
AI model executed
```

```text
Actions secret
= secure container for a real credential
≠ invented password
```

```text
stored secret name
≠
runtime environment-variable name
```

```text
Copilot CLI inference
≠
Copilot cloud coding agent
```

### Still Requires Hands-On Mastery

- personally complete the full Issue → branch → commit → PR → merge workflow;
- Pull Requests as the control gate;
- Projects;
- Actions beyond settings/configuration-level familiarity;
- tag + GitHub Release workflow;
- security/governance and least-privilege permission design;
- extend proven AI inference into a safely bounded AI-authored branch/commit/PR workflow;
- compare connected agents and execution modes by proven capability;
- diagnose trigger/authentication/inference/agent/runtime failures unaided;
- final Wiki vs Pages vs canonical Markdown explanation.

## Learning Evidence

- [Canonical progress file](https://github.com/tbhrc/github-course/blob/main/students/david/progress.md)
- [Semantic Versioning learning note](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-semver.md)
- [Wiki / knowledge architecture learning note](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-wiki.md)
- [Pages / Actions / Integrations learning note](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-pages-integrations.md)
- [Pages portal failure and fix learning note](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-pages-portal-fix.md)
- [Deterministic automation vs agentic AI learning note](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-deterministic-vs-agentic.md)
- [Copilot Free AI inside Actions learning note](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-copilot-free-actions.md)

## Major Epiphanies

1. GitHub is an operating platform, not merely cloud repository storage.
2. Substantive work should start from a durable Issue.
3. Release numbers communicate change meaning; they are not decimal counters.
4. AI coaches should teach from verified durable knowledge, not assumed memory.
5. GitHub Wiki can function as a documentation website/CMS.
6. Powerful GitHub features should be integrated into the operating model, not merely discovered.
7. GitHub Pages turns a repository into a public publishing surface.
8. Integrations can make GitHub the shared control plane connecting AI, automation and deployment.
9. A green deployment is not the same as a usable website.
10. GitHub Actions can be deterministic command buses: **automation is not automatically AI**.
11. A working trigger, workflow and credential still do not prove agentic execution.
12. **Copilot Free can run genuine AI inference inside GitHub Actions even though the autonomous cloud-agent assignee is unavailable.**

[Open the full epiphany log →](Epiphanies-and-Learning-Breakthroughs)

## Live Integration Benchmarks

| Benchmark | Current result |
| --- | --- |
| [Master matrix — #23](https://github.com/tbhrc/github-course/issues/23) | active |
| [Codex partner agent — #24](https://github.com/tbhrc/github-course/issues/24) | dispatcher/auth proven; assignment `403` |
| [GitHub Copilot cloud agent — #38](https://github.com/tbhrc/github-course/issues/38) | dispatcher/auth proven; assignment `403` |
| [Copilot Free AI Actions — #45](https://github.com/tbhrc/github-course/issues/45) | **AI inference proven** |

## Public Course Site

[Open GitHub Pages site →](https://tbhrc.github.io/github-course/)

## Current Next Step

Extend the proven Copilot Free inference route into one safely bounded workflow where AI proposes a repository change on an isolated branch and opens a PR, while human review remains the merge gate.

## Navigation

[Home](Home) · [AI Control Plane](AI-Control-Plane) · [Copilot Free AI Actions](Copilot-Free-AI-Actions) · [Course Manual](Course-Manual) · [Course Modules](Course-Modules) · [Exercises & Assessments](Exercises-and-Assessments) · [Epiphanies](Epiphanies-and-Learning-Breakthroughs)
