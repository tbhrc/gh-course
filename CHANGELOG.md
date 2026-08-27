# Changelog

All notable changes to this repository are documented here.

This project uses [Semantic Versioning](https://semver.org/) and follows the practical structure of [Keep a Changelog](https://keepachangelog.com/).

## [Unreleased]

### Added

- Verified `knowledge-base/chatgpt-web-github-control-plane.md` documenting ChatGPT Web as the conversational front door, GitHub as the durable execution plane, and the distinction between direct coding-agent assignment and GitHub Agentic Workflows.
- Integration benchmark programme under Issue #23 with separate test Issues for Codex, Claude, Gemini, Vercel and fully automated Issue → agent → PR routing.
- David's dated learning note preserving the two-layer AI-first founder operating-model breakthrough.
- Wiki `AI-Control-Plane` page and navigation links to the live benchmark.
- Functional root `index.html` for GitHub Pages, turning the public site into a responsive course portal with one-click access to the Wiki, student dashboard, handbook, manual, modules, knowledge base, epiphanies, AI Control Plane, exercises, SOP library, glossary, repository operations and releases.
- Verified `knowledge-base/pages-entry-file-readme-trap.md` preserving the exact Pages failure where deployment succeeded but the README became an unhelpful public entry experience, including diagnosis, fix and prevention rules.
- David's dated Pages portal learning note preserving the real user-journey problem, the source-vs-entry-file correction and the verified portal fix.
- Module 07 practical failure lab teaching `green deployment ≠ correct entry page ≠ good user experience`.

### Changed

- Course `github-power-user` Skill advanced from `1.3.0` to `1.4.0` (MINOR) to add the Pages entry-file diagnostic, README trap and post-deployment user-journey verification.
- Wiki Knowledge Base, Student Dashboard and Epiphanies pages now expose the Pages portal problem/fix as reusable course knowledge and student evidence.

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
