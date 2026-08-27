# Governed Wiki Publishing Architecture

**Last verified:** 27 August 2026

## Question

How can this course use GitHub Wiki as a real reader-facing handbook while keeping Wiki content governed through the main repository's Issue → branch → Pull Request workflow?

## Verified GitHub Behaviour

GitHub Wikis are Git repositories. After the first Wiki page exists, GitHub documents that the Wiki can be cloned using:

```text
https://github.com/OWNER/REPOSITORY.wiki.git
```

Wiki files can then be edited, committed and pushed with Git. GitHub states that only changes pushed to the Wiki repository's default branch are published to readers.

GitHub Actions provides a repository-scoped `GITHUB_TOKEN` for workflow authentication. Workflow permissions can be explicitly set, including `contents: write`.

## Course Architecture

This course therefore keeps the **governed Wiki source** inside the main repository:

```text
wiki/
```

and publishes that source to the separate Wiki repository after approved changes merge.

```text
Issue
→ issue-linked branch
→ edit wiki/*.md
→ Pull Request
→ review/checks
→ merge to main
→ GitHub Action
→ clone .wiki.git
→ sync Wiki pages
→ commit + push
→ live Wiki
```

## Authority Model

This does not make every Wiki statement canonical.

```text
knowledge-base/   = verified GitHub factual authority
students/         = canonical learner evidence
modules/          = canonical curriculum
sops/             = canonical operating procedures
wiki/             = governed reader-facing publishing source
live Wiki         = published reader-facing copy
```

The Wiki should usually **link to canonical files** rather than duplicate long factual content.

## Why This Is Useful

It combines two strengths:

### Main repository governance

- Issues;
- branches;
- Pull Requests;
- diffs;
- reviews/checks;
- agent instructions;
- normal Git history.

### Wiki reading experience

- Home dashboard;
- pages;
- rendered Markdown;
- links;
- sidebar;
- footer;
- reader-friendly navigation;
- Wiki-specific revision history.

## Current Implementation

The course uses:

```text
wiki/*.md
.github/workflows/publish-wiki.yml
```

The workflow is configured to run after changes to `wiki/**` are pushed to `main`, plus manual `workflow_dispatch`.

The workflow requests:

```yaml
permissions:
  contents: write
```

and uses the repository `GITHUB_TOKEN` to authenticate a Git push to the Wiki repository.

## Verification Status

The architecture and GitHub primitives are verified from official GitHub documentation.

The **specific course publishing workflow remains execution-unverified until its first GitHub Actions run completes successfully**. If GitHub rejects the Wiki push, treat the run as evidence of the remaining permission boundary and adjust deliberately rather than assuming success.

## Official Sources

- https://docs.github.com/en/communities/documenting-your-project-with-wikis/adding-or-editing-wiki-pages
- https://docs.github.com/en/actions/concepts/security/github_token
- https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax

## Operator Rule

> **Author Wiki content through governed main-repository source when reviewability matters; publish it automatically to the Wiki rather than maintaining two independent manual copies.**
