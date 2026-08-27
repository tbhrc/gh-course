# GitHub Pages Entry File: The README Trap and Portal Fix

**Last verified:** 27 August 2026  
**Course evidence:** Issue #30, PR #31, Pages deployment run `33067233047`

## Question

Why can a GitHub Pages site be successfully published but still feel like an unhelpful README page instead of a functional website?

## Verified Answer

GitHub Pages looks for an entry file at the top level of the selected publishing source. Current GitHub documentation states that the entry file can be:

- `index.html`;
- `index.md`; or
- `README.md`.

When publishing from a branch/folder, that entry file must be at the top level of the selected source.

This means a Pages deployment can be technically successful while the reader experience is poor. If a repository has a root `README.md` but no deliberately designed `index.html` or `index.md`, the README can become the effective site entry experience.

## Exact Course Failure

The course had GitHub Pages enabled from:

```text
branch: main
folder: / (root)
```

The deployment succeeded, but there was no dedicated root website entry page.

The public site therefore behaved like a repository README rather than a student-facing portal. A visitor could not easily reach:

- the live Wiki;
- Student Dashboard — David;
- Course Handbook;
- Course Manual;
- Course Modules;
- Knowledge Base;
- Epiphanies;
- AI Control Plane;
- exercises, SOPs, releases and live operational evidence.

The site was **deployed**, but it was not **designed as a usable website**.

## Root Cause

The publishing source and the entry file are separate decisions.

```text
Pages source
= where GitHub publishes from

Pages entry file
= what becomes the website's front door
```

Changing the publishing source was not necessary. The source was already correct.

The missing capability was a deliberate entry page.

## Verified Fix

Keep the existing Pages source:

```text
main / (root)
```

Then add a dedicated root:

```text
index.html
```

designed as the public portal.

For this course, PR #31 added a responsive `index.html` linking directly to the Wiki, student dashboard, handbook, manual, modules, knowledge base, epiphanies, AI Control Plane, live repository operations and releases.

The subsequent Pages workflow completed successfully:

```text
build                ✅ success
report-build-status  ✅ success
deploy               ✅ success
```

No Pages source-setting change was required.

## Diagnostic Pattern

When a Pages site is live but looks wrong, do not immediately change branches or deployment configuration.

Use this sequence:

```text
1. Confirm Pages deployment succeeded.
2. Identify the configured source branch/folder.
3. Inspect the top level of that source.
4. Check for index.html, index.md or README.md.
5. Decide what the intended public front door should be.
6. If README is acting as the entry experience unintentionally, add a deliberate index.html/index.md.
7. Keep the source unchanged unless there is a separate reason to move it.
8. Merge through normal governance.
9. Verify the Pages build and deployment.
10. Open the public site and verify navigation, not only deployment status.
```

## Important Operator Lesson

> **Successful deployment does not prove usable information architecture.**

There are at least three different checks:

```text
deployment health
→ Did Pages build and deploy?

entry-file correctness
→ Is the intended file the public front door?

user experience
→ Can the reader actually reach what they need?
```

An operator should verify all three.

## Recommended Course / Documentation Architecture

For a repository like this course:

```text
GitHub Pages
= polished public front door

GitHub Wiki
= reader-facing handbook / documentation environment

Main repository
= canonical evidence, governance, curriculum and history
```

The Pages homepage should route readers into the appropriate surface rather than duplicate the entire repository or Wiki.

## Do

- keep the simplest working Pages source when it already deploys correctly;
- create a deliberate `index.html` or `index.md` when the public site needs real navigation;
- link to canonical Wiki/repository content rather than create unmanaged copies;
- verify the final public user journey after deployment;
- record the failure and fix when it reveals a reusable platform rule.

## Don't

- assume a green Pages deployment means the website is useful;
- change the Pages source merely because the homepage is poor;
- confuse `README.md` repository orientation with a deliberately designed public website homepage;
- duplicate the whole knowledge base into static HTML just to make navigation possible.

## Official Sources

- GitHub Docs — Creating a GitHub Pages site: `https://docs.github.com/en/pages/getting-started-with-github-pages/creating-a-github-pages-site`
- GitHub Docs — Configuring a publishing source for your GitHub Pages site: `https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site`
- GitHub Docs — Troubleshooting 404 errors for GitHub Pages sites: `https://docs.github.com/en/pages/getting-started-with-github-pages/troubleshooting-404-errors-for-github-pages-sites`

## Governing Principle

> **Separate publishing configuration from reader experience: first prove the site deploys, then prove the right entry file and navigation make it usable.**
