# Reference & Glossary

A quick operator reference for terms used throughout the course.

## Core Git / GitHub Terms

### Repository
A Git-tracked project containing files and history.

### Commit
A logical recorded change in Git history.

### Push
Send local commits to a remote repository.

### Branch
An isolated line of work based on repository history.

### Pull Request (PR)
A proposal to review and merge branch changes into another branch.

### Issue
A durable work/problem/request record explaining why work exists.

### Diff
The before/after change comparison.

### Merge
Integrate accepted branch changes.

### Revert
Undo a prior change by adding a new commit that reverses it.

### Reset
Move a Git reference/history position; depending on mode, it can rewrite/discard local history.

### `git blame`
Shows the most recent commit/author associated with each line of a file.

## Planning / Work Management

### Label
A reusable classification applied to Issues or Pull Requests.

### Milestone
A grouping of Issues/PRs around an outcome or target.

### Project
GitHub's planning layer for Issues and Pull Requests, with views and custom fields.

### Sub-issue
A child Issue used to decompose larger work.

### Dependency
A blocking/blocked relationship between Issues.

## Automation / Governance

### GitHub Actions
Event-driven or scheduled automation workflows stored in `.github/workflows/`.

### Ruleset
Repository rules governing branches/tags and allowed operations.

### CODEOWNERS
A file that maps paths to responsible reviewers/owners.

### Check
Automated evidence attached to commits/PRs, such as tests or validation.

## Releases / Versioning

### Semantic Versioning
`MAJOR.MINOR.PATCH`

- **MAJOR** — incompatible/breaking change after stable `1.0.0`.
- **MINOR** — backwards-compatible new capability.
- **PATCH** — backwards-compatible fix.

### Tag
A named Git reference to an exact point in repository history, commonly `v1.2.3`.

### GitHub Release
A published release record built around a tag, with notes and optional artefacts.

### Changelog
A curated record of notable changes, not a copy of every commit.

## Knowledge / Publishing

### README
Fast orientation and project entry point.

### Repository Markdown
Markdown files inside the normal repository, governed like code.

### Wiki
A Git-backed documentation publishing surface with pages, links, revisions and navigation.

### GitHub Pages
GitHub's static website hosting capability for HTML/CSS/JavaScript and static-site output.

### Knowledge Base
In this course, the verified authoritative GitHub knowledge stored under `knowledge-base/`.

## AI / Agent Terms

### AGENTS.md
A repository instruction file used to tell compatible AI agents how to operate in the repository.

### Copilot Instructions
Repository or path-specific instructions used by supported GitHub Copilot experiences.

### Prompt File
A reusable prompt/instruction stored with the repository.

### Custom Agent
A specialised AI agent configured for a defined repository role.

### MCP
Model Context Protocol: a way for compatible AI systems to use external tools/context through defined servers.

## Need More Detail?

- [GitHub Power User](GitHub-Power-User)
- [Knowledge Base](Knowledge-Base)
- [Course Modules](Course-Modules)
- [Home](Home)
