# Changelog

All notable changes to this repository are documented here.

This project uses [Semantic Versioning](https://semver.org/) and follows the practical structure of [Keep a Changelog](https://keepachangelog.com/).

## [Unreleased]

### Added

- Comprehensive course-integrity rebuild under Issue #71, expanding previously shallow canonical modules for Start Here, Pull Requests, Actions, Security/Governance and GitHub × FolderDesk into full operator lessons with live examples, hands-on tasks, mastery checks and evidence requirements.
- Substantive GitHub Projects module and live `GitHub Course — Execution & Mastery` Project blueprint, including minimal fields/views and David's dated Projects learning evidence.
- Reusable executor benchmark framework with fixed T0–T4 timing, 100-point scoring, setup-friction separation and first-review-ready quality rules.
- Successful bounded cloud-agent benchmark evidence for GitHub Copilot, OpenAI Codex and Anthropic Claude using separate governed branches/commits/PRs after required entitlement/policy/identity setup was corrected.
- Dedicated Google Jules benchmark under Issue #63 with separate Jules evidence lane; the accidental Jules run from Gemini Issue #26 is preserved as historical activation evidence and its contaminated PR was closed unmerged.
- Gemini CLI/API authenticated benchmark path using `GEMINI_API_KEY`; run `33092569081` reached Gemini CLI/model inference and then stopped on HTTP 429 daily free-tier quota before governed branch/commit/PR delivery.
- David's dated multi-agent benchmark learning checkpoint covering execution architectures, provenance, setup friction vs runtime and the current bounded leaderboard.
- David's dated documentation-integrity learning checkpoint preserving his discovery that a current backend plus stale public/Wiki summaries is a course trust failure.
- `sops/course-documentation-integrity.md`, a reusable source-of-truth/readers/publication completion gate for material curriculum, student, benchmark and navigation changes.
- Expanded `exercises/README.md` with guided Projects, PR, Actions, release, AI review, security and GitHub × FolderDesk mastery exercises.
- Verified `knowledge-base/chatgpt-web-github-control-plane.md` documenting ChatGPT Web as the conversational front door, GitHub as the durable execution plane, and the distinction between direct coding-agent assignment and GitHub Agentic Workflows.
- Integration benchmark programme under Issue #23 with separate test Issues for Codex, Claude, Gemini, Vercel and fully automated Issue → agent → PR routing.
- David's dated learning note preserving the two-layer AI-first founder operating-model breakthrough.
- Wiki `AI-Control-Plane` page and navigation links to the live benchmark.
- Functional root `index.html` for GitHub Pages, turning the public site into a responsive course portal with one-click access to the Wiki, student dashboard, handbook, manual, modules, knowledge base, epiphanies, AI Control Plane, exercises, SOP library, glossary, repository operations and releases.
- Verified `knowledge-base/pages-entry-file-readme-trap.md` preserving the exact Pages failure where deployment succeeded but the README became an unhelpful public entry experience, including diagnosis, fix and prevention rules.
- David's dated Pages portal learning note preserving the real user-journey problem, the source-vs-entry-file correction and the verified portal fix.
- Module 07 practical failure lab teaching `green deployment ≠ correct entry page ≠ good user experience`.
- Verified `knowledge-base/deterministic-actions-vs-agentic-ai.md` distinguishing event-driven deterministic Actions from downstream AI-agent reasoning and preserving the live trigger → secret → PAT → API → 403 proof ladder.
- David's dated deterministic-vs-agentic learning note preserving the trigger/worker breakthrough, Actions-secret credential correction and live Codex dispatcher evidence.
- Independent GitHub Copilot cloud-agent benchmark under Issue #38 so GitHub's native agent can be tested separately from Codex partner-agent eligibility.
- Module 09 deterministic-dispatch lesson, secret/credential model and failure-layer diagnostic exercise.
- `.github/workflows/dispatch-copilot.yml`, a deterministic ChatGPT Web → push → GitHub Copilot cloud-agent dispatcher using the user-authorised `AGENT_DISPATCH_TOKEN`.
- First Copilot cloud-agent benchmark run `33074951020`, which proved trigger, PAT visibility and authenticated assignment request before GitHub returned HTTP `403 Forbidden`.
- `.github/workflows/copilot-free-ai-smoke.yml`, an Issue-triggered Copilot CLI smoke test that maps `AGENT_DISPATCH_TOKEN` to runtime `COPILOT_GITHUB_TOKEN` and keeps AI output text-only.
- Successful Copilot Free inference benchmark on Issue #45 / Actions run `33076875845`, proving genuine repository-aware AI inference inside GitHub Actions while the cloud-agent Issue assignee remained unavailable in that historical Free-plan test state.
- Verified `knowledge-base/copilot-free-ai-in-actions.md` documenting the execution-mode split between Copilot CLI inference and the Copilot cloud coding agent.
- Dedicated Module 09 Copilot Free AI Actions lab and David's dated Copilot Free learning note.
- Wiki `Copilot-Free-AI-Actions` proof page with links to live Issues, Actions evidence, knowledge note and student evidence.
- `knowledge-base/web-first-local-by-exception-executor-policy.md`, a reusable executor-routing policy that keeps ChatGPT Web as the default executor, requires explicit local-handoff reasons, and reserves delegation for capability or demonstrated efficiency advantages.
- `integration-tests/README.md` and `integration-tests/agent-benchmark-template.md` as the durable evidence scaffold for Copilot, Codex, Claude, Gemini and other integration benchmarks.
- `knowledge-base/copilot-pro-agent-benchmark-runbook.md`, the post-upgrade cutover sequence for testing GitHub Copilot cloud agent first and OpenAI Codex second with fresh `main`-based dispatch branches and a mandatory open/draft-PR stop condition.

### Changed

- Course root README now distinguishes curriculum/material state from learner mastery, points to the canonical executor benchmark and records Projects as David's current hands-on focus.
- David's canonical `students/david/progress.md` and reader-facing dashboard now include the successful Copilot/Codex/Claude/Jules benchmark lanes, Gemini authenticated quota boundary, Projects learning state and documentation-integrity breakthrough without rewriting the immutable baseline.
- Wiki Course Handbook and Course Manual rebuilt from short navigation stubs into substantive professional operating documents covering the complete GitHub workflow, Projects, Actions, releases, publishing, agents, provenance, security and source-of-truth governance.
- Wiki Home, Course Modules, Course Materials, Exercises, AI Control Plane, Knowledge Base, Power User page, SOP library, glossary and sidebar reconciled to current canonical sources rather than stale Issue-body/status copies.
- Public Pages Live Operations now points directly to `knowledge-base/executor-benchmark-framework.md` as the current AI benchmark authority rather than Issue #23.
- Historical Copilot Free Wiki proof is explicitly framed as a preserved execution-mode milestone; current cloud-agent capability/ranking is routed to the canonical executor benchmark.
- Repository change SOP now includes the documentation-integrity gate and downstream Wiki/Pages/release/workflow verification before substantive work is considered complete.
- Course `github-power-user` Skill advanced from `1.3.0` to `1.4.0` (MINOR) to add the Pages entry-file diagnostic, README trap and post-deployment user-journey verification.
- Course `github-power-user` Skill advanced from `1.4.0` to `1.5.0` (MINOR) to add deterministic dispatcher architecture, agent proof ladders, secret/authentication diagnostics and failure-layer classification.
- Course `github-power-user` Skill advanced from `1.5.0` to `1.6.0` (MINOR) to add Copilot Free inference inside Actions, execution-mode capability classification and stored-secret vs runtime-variable mapping.
- Wiki Knowledge Base, Student Dashboard and Epiphanies pages expose the Pages portal problem/fix as reusable course knowledge and student evidence.
- Earlier Wiki AI Control Plane/Student Dashboard updates recorded the initial Codex/Copilot 403 setup boundaries; later benchmark evidence now supersedes those states through the canonical executor benchmark and refreshed reader-facing summaries.
- `knowledge-base/chatgpt-web-codex-dispatch.md` preserves the earlier authenticated Codex assignment boundary as setup evidence; later successful Codex Partner Agent benchmark results are maintained in the executor benchmark framework.
- `knowledge-base/deterministic-actions-vs-agentic-ai.md` preserves the independent initial GitHub Copilot Issue #38 403 result as failure-layer evidence; later successful cloud-agent benchmark state is maintained in the executor benchmark framework.
- David's progress distinguishes cloud-agent capability from Copilot CLI inference and now records later successful multi-agent benchmark evidence separately from personal learner mastery.

## [0.2.0] - 2026-08-27

### Highlights

- Converted GitHub Wiki into the course's governed reader-facing handbook, dashboard and knowledge-navigation surface.
- Added automated Wiki publication from main-repository `wiki/` source to the separate `.wiki.git` repository.
- Published and verified the public GitHub Pages course site.
- Added the portable `github-power-user` course Skill and expanded it through Wiki, Pages, Actions and integrations/control-plane capability.
- Added an evidence-backed GitHub knowledge base and stronger AI-coach governance.
- Preserved David's student learning path, misconceptions, partial recall and major learning breakthroughs as reusable course evidence.

### Added

- Professional versioning policy under Issue #3.
- Root `VERSION` source for the current repository version.
- Agent-facing release and changelog discipline.
- Expanded practical course material for releases and versioning.
- Student learning-evidence rules requiring AI coaches to preserve misconceptions, corrections, partial recall and remaining mastery gaps.
- David's dated Semantic Versioning learning note documenting his original decimal-counter model, corrected `MAJOR.MINOR.PATCH` understanding and temporary failure to recall `PATCH` unaided.
- Portable `github-power-user` Skill snapshot adapted from FolderDesk canonical v1.0.0, including a power guide, cheat sheet and agentic GitHub reference for course development.
- AI-coach rule to consult the imported `github-power-user` Skill when developing substantial GitHub course material.
- Authoritative `knowledge-base/` layer with source/freshness policy, Wiki-vs-repository guidance and reusable knowledge-gap register.
- Repository-wide `.github/copilot-instructions.md` aligned with the shared `AGENTS.md` operating contract.
- Expanded Module 07 Wiki/knowledge-architecture lesson and practical Wiki lab.
- David's dated Wiki/knowledge-architecture learning note preserving his starting database/memory-layer assumption and the corrected model.
- Verified Wiki-as-documentation-platform knowledge note covering SOP/handbook use cases and the Wiki-vs-GitHub-Pages boundary.
- Discovery-first Module 07 teaching pattern designed to let future learners independently recognise Wiki as a documentation website/CMS before revealing the answer.
- David's hands-on Wiki evidence and spontaneous documentation-platform epiphany under Issue #11.
- Governed `wiki/` source layer containing the course Home dashboard, handbook, manual, course materials, module map, knowledge navigator, David dashboard, epiphany log, exercises, Power User reference, SOP library, glossary, sidebar and footer.
- `.github/workflows/publish-wiki.yml` to publish approved `wiki/*.md` source to the separate Wiki Git repository after merge.
- Verified `knowledge-base/wiki-publishing-architecture.md` documenting the main-repo → Actions → `.wiki.git` publication model and its execution-verification requirement.
- First governed Wiki publication verified successfully through `Publish Wiki` run #1 (run ID `33064302639`) after PR #17 merged; the publish job and `.wiki.git` publication step completed successfully.
- `knowledge-base/pages-actions-integrations-control-plane.md` documenting GitHub Pages, Actions permissions and GitHub Apps/integrations as an AI-first operating control plane.
- David's dated Pages / Actions / Integrations learning note preserving his independent Settings exploration and integration-control-plane breakthrough.
- Expanded Module 09 with integration capability testing, permission boundaries and a Pages hands-on exercise.
- Automated release publisher under `.github/workflows/publish-release.yml` so a deliberate `VERSION` change on `main` creates the matching Git tag and GitHub Release.

### Changed

- Course `github-power-user` Skill advanced from `1.0.0` to `1.1.0` (MINOR) to add the reusable Wiki publishing-platform and GitHub Pages decision model.
- Course `github-power-user` Skill advanced from `1.1.0` to `1.2.0` (MINOR) to add the governed Wiki publishing pattern and agent-maintained handbook/dashboard model.
- Course `github-power-user` Skill advanced from `1.2.0` to `1.3.0` (MINOR) to add GitHub Pages, Actions permission layers and integration-control-plane capability testing.
- `AGENTS.md` now requires integration capability to be proven by actual operation rather than inferred from installation/authorisation.
- Wiki Home, David's dashboard and epiphany log now surface the public Pages site and integrations breakthrough.
- David's progress now records his own Pages/Settings initiative separately from coach-built automation.

## [0.1.0] - 2026-08-27

### Added

- Initial GitHub Professional Operator course skeleton.
- AI-agent-readable course governance through `AGENTS.md`.
- Student architecture with David as Student #1 and first public case study.
- David's immutable 27 August 2026 baseline assessment.
- GitHub mental-model and Issues modules.
- Issue-first repository change workflow.
- Reusable exercises, question-bank, templates, SOP, Skills and certification structure.

> `0.1.0` was the first documented development baseline. It was not published as a formal Git tag/GitHub Release.
