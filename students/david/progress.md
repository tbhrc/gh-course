# Progress — David

## Current Status

**Course stage:** Stage 2 — Crash Course  
**Current module:** 09 — AI Agents + GitHub, using live dispatch benchmarks  
**Baseline:** `baseline-2026-08-27.md`

## Completed

- Stage 1 diagnostic completed.
- Core Git mental model assessed.
- GitHub platform knowledge gaps identified.
- Key corrections taught:
  - Git vs local repository;
  - commit vs push;
  - Pull Request vs `git pull`;
  - `.gitignore` vs actual secret protection;
  - introductory revert vs reset;
  - introductory `git blame`;
  - introductory merge-conflict concept.
- Course repository created and converted into the live learning environment.
- David explicitly established the repository operating rule that substantive repo changes must begin with a GitHub Issue and then be completed from that Issue.
- Issue #1 became the first live implementation of the course workflow.
- Semantic Versioning introduced and documented as a mandatory companion standard to professional Git/GitHub operation.
- Authoritative GitHub knowledge-base architecture introduced under Issue #9.
- First GitHub Wiki Home page created and edited hands-on under Issue #11.
- Wiki redesigned and physically published as a functional course handbook/dashboard under Issues #13/#14.
- David independently explored repository Settings beyond the guided lesson and enabled GitHub Pages.
- David independently inspected Actions permissions, workflow approval settings and repository Integrations.
- David reported authorising/updating access for ChatGPT/Codex, Claude, Gemini and Vercel.
- David tested the public Pages site as an actual student/user, identified that a green deployment was still an unusable README-style entry experience, and required a functional portal into the Wiki/dashboard/course surfaces.
- Pages portal fix completed under Issue #30 / PR #31 while keeping the existing `main / (root)` Pages source.
- David independently recognised from live repository behaviour that GitHub Actions can be deterministic automation and do not automatically imply that an AI model executed.
- A real ChatGPT Web → push → GitHub Actions command bus was built and exercised under Issue #34.
- David generated a real fine-grained GitHub PAT after learning that an Actions secret stores a genuine credential rather than an invented password.
- Live workflow evidence proved the PAT became visible to Actions and the dispatcher reached GitHub's coding-agent assignment API.
- The Codex benchmark currently stops at an authenticated HTTP `403 Forbidden`, isolating the remaining failure to partner-agent permission/plan/policy eligibility rather than the deterministic Action.
- Independent GitHub Copilot cloud-agent benchmark executed under Issue #38.
- The Copilot dispatcher resolved Issue #38, saw the PAT as `***`, sent the documented `copilot-swe-agent[bot]` + `agent_assignment` request, and received HTTP `403 Forbidden` before any Copilot agent session started.

## Demonstrated Strengths

- Repository mental model.
- Branching concept.
- Commit history and rollback motivation.
- Clone / pull / push basics.
- Diff inspection.
- AI-assisted development familiarity.
- Strong preference for traceability, history and durable operating evidence.
- **Issue-first insight:** David independently recognised that repository work should not be changed ad hoc from chat; he corrected the coach and required an Issue-first workflow before further repo development.
- **Versioning insight:** David identified that his agents were not consistently logging or applying version control and explicitly raised versioning as an operational gap that must be standardised.
- **SemVer progress:** David now understands that professional release versions use `MAJOR.MINOR.PATCH`, that the components communicate change significance rather than acting as decimal counters, and that Semantic Versioning should be taught alongside GitHub operation.
- **Knowledge-architecture insight:** David explicitly rejected assumed GitHub knowledge as an operating basis and required a durable, reusable best-practices knowledge base that AI coaches can consult.
- **Wiki publishing insight:** While using GitHub Wiki hands-on, David independently recognised the interface as a Git-backed documentation website/CMS rather than merely a database-like knowledge store, and immediately generalised it to agent-built SOP libraries, handbooks and documentation portals.
- **Applied Wiki architecture judgement:** David then required the Wiki to become operational inside the course itself: Home dashboard, student progress, epiphanies, handbook/manual, course materials, SOP navigation and cross-links to canonical repository evidence.
- **Pages initiative:** David independently found GitHub Pages in Settings and published the course as a public site rather than waiting for it to become a formal lesson.
- **Integration-control-plane insight:** David independently recognised repository Integrations as a potentially major AI-first capability layer connecting GitHub to coding agents and deployment services.
- **User-journey validation insight:** David did not accept a successful Pages deployment as proof that the website worked. He used the public site, identified the missing navigation/portal layer, questioned whether the publishing source was wrong, and required the architecture to be fixed and preserved as reusable learning.
- **Deterministic-vs-agentic insight:** David independently reframed GitHub Actions as a trigger/automation layer that can run ordinary deterministic scripts or dispatch a separate AI worker. He explicitly recognised that the Web agent should fire the trigger while the downstream agent performs execution.
- **Failure-layer reasoning:** David followed the live progression from missing secret → real PAT → authenticated API call → HTTP 403, reinforcing the habit of locating the exact failing layer instead of treating the whole system as one black box.
- **Independent-agent benchmark discipline:** Codex and GitHub Copilot were tested separately, preventing one integration's evidence from being incorrectly attributed to another.

## Current Priority Gaps

1. Complete hands-on Issue operation personally: create, classify and close an Issue with linked implementation evidence.
2. Pull Requests as the control gate.
3. Projects.
4. Actions and automation beyond configuration-level understanding.
5. Complete hands-on release/tag/version workflow.
6. Security, permission scoping and governance.
7. Complete one end-to-end agentic AI execution benchmark producing an agent-authored branch/commit/PR.
8. Explain deterministic Actions vs agentic AI and diagnose a failed run unaided.
9. Explain Wiki vs Pages vs canonical repository Markdown unaided.
10. Diagnose Pages source vs entry-file problems unaided and choose an appropriate entry file for a new site.
11. Compare installed integrations by actual proven capability rather than assuming equivalence.
12. GitHub × FolderDesk boundary and integration architecture.

## Current Evidence — Issue #1

David demonstrated the **reasoning** behind Issue-first operation by requiring:

```text
Issue → task execution → repository change
```

The coach then implemented the fuller workflow under Issue #1:

```text
Issue #1
→ issue-linked branch
→ commits
→ Pull Request
→ merge
→ close
```

This is evidence of conceptual progress, but it is **not yet evidence that David can personally operate the entire workflow unaided**.

## Current Evidence — Versioning Discussion

David's starting intuitive version-number model was approximately:

```text
0.1 → ... → 0.99 → 1.0 → ... → 1.99 → 2.0
```

This remains recorded as a learning checkpoint, not as mastery.

The correction being learned is Semantic Versioning:

```text
MAJOR.MINOR.PATCH
```

where the components describe the type of change rather than acting as a decimal counter. In particular, `1.10.0` validly follows `1.9.0`; there is no requirement to reach `.99`.

David now understands the distinction conceptually and explicitly recognised Semantic Versioning as mandatory knowledge for serious GitHub operators.

### Partial recall evidence — 27 August 2026

David recalled **MAJOR** and **MINOR** but temporarily forgot the third term, **PATCH**.

This is recorded as useful evidence rather than treated as failure: the model has been learned, but terminology is not yet automatic.

Detailed learning evidence: `assessments/learning-note-2026-08-27-semver.md`.

## Current Evidence — Wiki and Knowledge Architecture

David's starting Wiki model was database/memory-oriented. Hands-on use materially changed that model.

Under Issue #11 David personally:

- created the Wiki Home page;
- received and recognised the separate `.wiki.git` clone URL;
- inspected revision `505b272...`;
- found the optional Edit message field;
- used Preview;
- added a working link;
- observed image, sidebar and footer capability.

He then independently articulated the key mental-model breakthrough:

```text
Wiki
= Git-backed documentation website / lightweight documentation CMS

knowledge base
= one possible use case built with that surface
```

He immediately identified a practical agentic application: instructing agents to build and maintain structured SOP libraries or handbooks in GitHub Wiki rather than building equivalent documentation infrastructure manually.

Professional refinement introduced:

```text
Wiki  = documentation-focused publishing
Pages = fuller static website publishing with HTML/CSS/JavaScript
```

He subsequently applied the insight architecturally by asking for the course Wiki itself to become a working human interface with progress dashboards, epiphany history, handbook/manual navigation, course materials and interlinked references.

The coach implemented the governed Wiki publishing architecture under Issues #13/#14. That automation is operationally verified, but **coach-built automation is not credited as David's unaided technical mastery**.

Detailed learning evidence: `assessments/learning-note-2026-08-27-wiki.md`.

## Current Evidence — Pages, Actions and Integrations

While independently exploring GitHub Settings, David reported that he:

- changed Actions source policy to **Allow all actions and reusable workflows**;
- identified the first-time-contributor workflow approval setting;
- enabled GitHub Pages and published `https://tbhrc.github.io/github-course/`;
- inspected Integrations;
- authorised or updated permissions for ChatGPT/Codex, Claude, Gemini and Vercel.

His spontaneous operating insight was that **Integrations may be one of the most powerful GitHub layers for AI-first work**, because GitHub can become the common control point connecting agents, repository governance, automation and deployment.

Professional correction being introduced:

```text
installed / authorised
≠
permission granted for every operation
≠
operation proven end to end
```

And:

```text
Allow all actions/reusable workflows
≠
unlimited workflow token permissions
```

Each integration still needs a bounded capability test and least-privilege review.

Detailed learning evidence: `assessments/learning-note-2026-08-27-pages-integrations.md`.

## Current Evidence — Pages Portal Failure and Fix

David then used the public Pages site from the perspective of a student/external reader and identified a second-level problem:

```text
Pages deployment = successful
public site       = technically live
student journey   = poor
```

The site effectively behaved like a README entry page and did not provide a useful route into the Wiki, dashboard, handbook, manual, modules, knowledge base and other course surfaces.

David explicitly questioned whether the Pages source should move away from `main`, but the diagnosis showed that the source was already correct. The missing layer was a deliberate root entry page.

Professional model introduced:

```text
Pages source
≠
Pages entry file
≠
website information architecture
```

Issue #30 / PR #31 added root `index.html` as the portal while keeping `main / (root)` as the publishing source. The subsequent Pages build, status and deployment all succeeded.

Student outcome:

- David demonstrated user-journey validation rather than relying on infrastructure status;
- he identified an information-architecture defect from real use;
- he challenged the current source architecture as a hypothesis rather than guessing;
- he required the exact problem/fix to become reusable Skill, knowledge-base and course material.

Detailed learning evidence: `assessments/learning-note-2026-08-27-pages-portal-fix.md`.

## Current Evidence — Deterministic Dispatch vs Agentic AI

David noticed that GitHub work continued after the Web agent triggered repository events and asked whether connected AI agents might already be doing the work.

The audit separated the layers:

```text
ChatGPT Web
→ GitHub object / push
→ GitHub Actions
→ deterministic script/API work
→ optional downstream AI-agent assignment
```

David independently articulated the deterministic factor: a Python/shell/API workflow does not need AI; it only needs a trigger. He then required the Web agent to become the recurring trigger surface so the human should not have to manually open each coding agent.

Issue #34 implemented and exercised that architecture. Live evidence progressed through:

```text
push trigger works
→ Action starts
→ Issue resolved
→ secret missing
→ real GitHub PAT created
→ PAT visible as ***
→ coding-agent assignment API reached
→ Codex partner-agent request returns HTTP 403
```

A separate GitHub Copilot cloud-agent benchmark was then run under Issue #38:

```text
push trigger works
→ Copilot dispatcher starts
→ PAT visible as ***
→ copilot-swe-agent[bot] + agent_assignment sent
→ GitHub returns HTTP 403 Forbidden
→ no Copilot session / branch / PR
```

This means deterministic dispatch and user-authenticated API access are proven for both test paths; agentic execution is not yet proven for either.

Detailed learning evidence: `assessments/learning-note-2026-08-27-deterministic-vs-agentic.md`.

## Evidence Rule

Do not mark a capability complete merely because David has read a lesson or watched the coach perform it. Mark it complete only when he can explain it accurately and/or perform the relevant operation in GitHub.

Mistakes, misconceptions, corrections, partial recall, initiative and spontaneous insight are valuable learning evidence. Preserve them so later assessments can show the actual path from baseline to mastery.

## Next Recommended Step

Resolve the GitHub Copilot/Codex plan-policy eligibility boundary, then rerun one benchmark until the repository shows an actual agent session and agent-authored branch/commit/PR. Keep the deterministic dispatcher architecture unchanged unless new evidence shows a dispatcher defect.
