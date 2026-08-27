# GitHub Wiki vs Repository Markdown

**Last verified:** 27 August 2026

## Verified Answer

GitHub provides a Wiki for long-form repository documentation. GitHub describes the Wiki as a place for additional detailed documentation alongside the repository README.

A Wiki can be edited directly on GitHub or locally, and its pages have change history. It is useful for human-friendly navigation and collaborative documentation.

For this course, however, the **authoritative knowledge base remains normal Markdown files inside the main repository**.

## Why Repository Markdown Is Canonical Here

Repository Markdown participates directly in the course's normal operating workflow:

```text
Issue
→ branch
→ commit
→ Pull Request
→ review/checks
→ merge
```

That gives us:

- one repository source of truth;
- normal PR review;
- agent access with the rest of the repo;
- CODEOWNERS/ruleset potential;
- ordinary Git diffs and search;
- the same version/release lifecycle as the course.

## Where Wiki Adds Value

Use Wiki when it improves:

- long-form reading;
- human navigation;
- onboarding and explanatory pages;
- a browsable handbook experience;
- lightweight collaborative documentation.

For this repository, Wiki can become a **reader-friendly layer** over knowledge that remains governed in `knowledge-base/`.

## Recommended Architecture

```text
knowledge-base/              = authoritative truth
        ↓
course modules               = teaching sequence
        ↓
Wiki                         = optional reader-friendly navigation/explanation
```

Do not maintain two independent versions of the same fact.

If a Wiki page restates governed knowledge, it should link back to the authoritative repository note or clearly identify the source.

## Wiki Is Not a Database in the Traditional Sense

A Wiki is a collection of interlinked documentation pages, not a relational or semantic database by itself.

It can form a useful navigable knowledge layer because pages can link to one another, but links alone do not create structured memory, semantic retrieval or database constraints.

## Course Decision

For `tbhrc/github-course`:

- `knowledge-base/` = canonical best-practices knowledge;
- `skills/github-power-user/` = strategic accelerator/playbook;
- modules = curriculum;
- `students/` = learner evidence;
- Wiki = hands-on GitHub feature + optional human-facing handbook layer.

## Current Repository State

The repository currently has GitHub Wiki enabled.

## Official Sources

- https://docs.github.com/en/communities/documenting-your-project-with-wikis/about-wikis
- https://docs.github.com/en/communities/documenting-your-project-with-wikis/adding-or-editing-wiki-pages
- https://docs.github.com/en/communities/documenting-your-project-with-wikis

## Operator Rule

> **Use Wiki for navigation and long-form explanation when helpful; use governed repository Markdown when the information needs to behave like code.**
