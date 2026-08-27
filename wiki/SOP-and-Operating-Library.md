# SOP & Operating Library

This is the reader-facing index for repeatable operating procedures used by the course.

The canonical SOP source files live in the main repository under [`sops/`](https://github.com/tbhrc/github-course/tree/main/sops).

## Current SOPs

### Repository Change Workflow

[Open canonical SOP →](https://github.com/tbhrc/github-course/blob/main/sops/repository-change-workflow.md)

Core pattern:

```text
Issue
→ issue-linked branch
→ focused commits
→ Pull Request
→ review/checks
→ merge
→ Issue closes
```

## Wiki Publishing SOP

The Wiki itself now follows a governed publishing model:

```text
Issue
→ edit wiki/*.md in main repository
→ Pull Request
→ merge to main
→ GitHub Action
→ publish to .wiki.git
→ live Wiki
```

This means agents can maintain a reader-friendly Wiki without bypassing the main repository's governance.

## Agentic Use Case

An AI agent can be given an instruction such as:

> Build or update the SOP library. Keep governed SOP truth in `sops/`, update the relevant reader-facing `wiki/` pages, link rather than duplicate where possible, and publish through the normal Issue/PR workflow.

## Design Rule

Use the Wiki for **navigation and readable presentation**.

Use the main repository for **governed source truth**.

## Future SOP Categories

- Issue triage;
- Pull Request review;
- release management;
- GitHub Actions diagnosis;
- security review;
- agent task execution;
- knowledge verification;
- Wiki publishing.

## Navigation

[Course Handbook](Course-Handbook) · [GitHub Power User](GitHub-Power-User) · [Home](Home)
