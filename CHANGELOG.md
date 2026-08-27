# Changelog

All notable changes to this repository are documented here.

This project uses [Semantic Versioning](https://semver.org/) and follows the practical structure of [Keep a Changelog](https://keepachangelog.com/).

## [Unreleased]

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

### Changed

- Course `github-power-user` Skill advanced from `1.0.0` to `1.1.0` (MINOR) to add the reusable Wiki publishing-platform and GitHub Pages decision model.
- Course `github-power-user` Skill advanced from `1.1.0` to `1.2.0` (MINOR) to add the governed Wiki publishing pattern and agent-maintained handbook/dashboard model.
- `AGENTS.md`, Copilot instructions, README and Module 07 now treat the Wiki as a first-class reader-facing course operating surface while preserving canonical main-repository truth.
- David's progress now records the applied judgement that the course Wiki should become an operational handbook/dashboard, without misclassifying the coach-built automation as David's technical mastery.

The root course version remains `0.1.0` because no new course release has been published.

## [0.1.0] - 2026-08-27

### Added

- Initial GitHub Professional Operator course skeleton.
- AI-agent-readable course governance through `AGENTS.md`.
- Student architecture with David as Student #1 and first public case study.
- David's immutable 27 August 2026 baseline assessment.
- GitHub mental-model and Issues modules.
- Issue-first repository change workflow.
- Reusable exercises, question-bank, templates, SOP, Skills and certification structure.

> `0.1.0` is the first documented development baseline. A formal Git tag/GitHub Release has not yet been published because the currently connected GitHub action surface does not expose release creation.
