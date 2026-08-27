# Student Dashboard — David

This is the **reader-facing progress dashboard** for Student #1.

> Canonical learner evidence lives under [`students/david/`](https://github.com/tbhrc/github-course/tree/main/students/david). This Wiki page is a navigable summary, not a replacement for the evidence files.

## Current Status

**Stage:** Stage 2 — Crash Course  
**Current focus:** AI Agents + GitHub — deterministic dispatch vs agentic execution  
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
- GitHub Wiki operated hands-on.
- Wiki recognised independently as a Git-backed documentation publishing surface.
- Applied product/operating judgement: the Wiki should become the actual course handbook/dashboard instead of remaining a standalone demonstration.
- GitHub Pages found and enabled independently from repository Settings.
- Actions permissions and workflow approval settings explored independently.
- Repository Integrations explored independently.
- ChatGPT/Codex, Claude, Gemini and Vercel permissions reportedly authorised/updated from the GitHub UI.
- Integrations recognised independently as a major AI-first operating layer.
- Public Pages site tested as a real student/user; David identified that a successful deployment was still an unusable README-style website entry experience.
- Pages source vs entry-file distinction introduced from the real failure: `main / (root)` stayed in place and a deliberate root `index.html` became the public course portal.
- Deterministic GitHub Actions vs agentic AI recognised independently from live workflow behaviour.
- Real GitHub fine-grained PAT created after correcting the mistaken idea that an Actions secret value could be an invented password.
- ChatGPT Web → push → GitHub Action command bus physically proven through Issue #24 / Issue #34.
- PAT visibility to Actions physically proven; the workflow reached GitHub's coding-agent assignment API.
- Codex partner-agent execution correctly remains **unproven** because GitHub returned HTTP `403 Forbidden` at the downstream assignment layer.
- Independent GitHub Copilot cloud-agent benchmark opened as Issue #38.

### Applied Architecture

```text
GitHub
├── repository truth
├── Issues / PR governance
├── Wiki handbook
├── Pages public website
│   └── index.html = deliberate public front door
├── Actions automation
│   └── deterministic dispatchers
└── AI / service integrations
    ├── GitHub Copilot cloud agent
    ├── Codex / Claude / Gemini partner agents
    └── deployment/services
```

The current agentic operating model is:

```text
ChatGPT Web
→ decide / create Issue
→ fire GitHub trigger
→ deterministic Action
→ authenticated agent hand-off
→ AI worker
→ branch + commits + PR
→ review / merge / deployment
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
green Pages deployment
≠
correct entry page
≠
good user experience
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

### Still Requires Hands-On Mastery

- personally complete the full Issue → branch → commit → PR → merge workflow;
- Pull Requests as the control gate;
- Projects;
- Actions beyond settings/configuration-level familiarity;
- tag + GitHub Release workflow;
- security/governance and least-privilege permission design;
- one end-to-end AI agent producing an agent-authored branch/commit/PR;
- compare connected agents by proven capability rather than assumed equivalence;
- diagnose trigger/authentication/agent/runtime failures unaided;
- final Wiki vs Pages vs canonical Markdown explanation;
- diagnose Pages source vs entry-file problems unaided.

## Learning Evidence

- [Canonical progress file](https://github.com/tbhrc/github-course/blob/main/students/david/progress.md)
- [Semantic Versioning learning note](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-semver.md)
- [Wiki / knowledge architecture learning note](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-wiki.md)
- [Pages / Actions / Integrations learning note](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-pages-integrations.md)
- [Pages portal failure and fix learning note](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-pages-portal-fix.md)
- [Deterministic automation vs agentic AI learning note](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-deterministic-vs-agentic.md)

## Major Epiphanies

1. GitHub is an operating platform, not merely cloud repository storage.
2. Substantive work should start from a durable Issue.
3. Release numbers communicate change meaning; they are not decimal counters.
4. AI coaches should teach from verified durable knowledge, not assumed memory.
5. GitHub Wiki can function as a documentation website/CMS and can support agent-built SOP libraries and handbooks.
6. A powerful feature should be integrated into the operating model, not merely discovered.
7. GitHub Pages turns the repository into a public website publishing source.
8. Integrations can make GitHub the shared control plane connecting AI agents, automation and deployment services.
9. A green deployment is not the same as a usable website: the publishing source, entry file and user journey must be evaluated separately.
10. GitHub Actions can be deterministic command buses: **automation is not automatically AI**, and a Web agent can fire the trigger that hands work to a downstream AI worker.

[Open the full epiphany log →](Epiphanies-and-Learning-Breakthroughs)

## Live Integration Benchmarks

- [Master matrix — Issue #23](https://github.com/tbhrc/github-course/issues/23)
- [Codex partner-agent benchmark — Issue #24](https://github.com/tbhrc/github-course/issues/24)
- [GitHub Copilot cloud-agent benchmark — Issue #38](https://github.com/tbhrc/github-course/issues/38)

## Public Course Site

[Open GitHub Pages site →](https://tbhrc.github.io/github-course/)

## Current Next Step

Run Issue #38 through GitHub's own Copilot cloud-agent path. Success means an actual Copilot agent session and agent-authored branch/commit/PR. Failure must be classified precisely as plan, policy, permission or runtime evidence.

## Navigation

[Home](Home) · [AI Control Plane](AI-Control-Plane) · [Course Manual](Course-Manual) · [Course Modules](Course-Modules) · [Exercises & Assessments](Exercises-and-Assessments) · [Epiphanies](Epiphanies-and-Learning-Breakthroughs)
