# 07 — GitHub Knowledge Architecture

## Objective

Learn where information should live inside GitHub, how to build an evidence-backed knowledge layer, and how GitHub Wiki can function as a Git-backed documentation publishing surface.

## Discovery-First Coaching Rule

If the learner has never used GitHub Wiki, **do not explain the full Wiki mental model first**.

Let the learner discover it through the interface:

```text
create Home page
→ use Preview
→ add a link
→ inspect revision history
→ notice images/sidebar/footer
→ ask: "What does this remind you of?"
```

Only then reveal the broader documentation-platform model.

The discovery itself is part of the lesson.

---

# Part 1 — Hands-On Wiki Discovery

## Step 1 — Create Home

Open the repository's **Wiki** tab and create the first Home page.

Include a short purpose statement and at least one link back to the main repository.

Use Preview before saving.

## Step 2 — Inspect History

After saving:

1. open the Wiki revision/history view;
2. identify the author, time and revision/commit;
3. edit Home again;
4. enter a meaningful optional **Edit message**;
5. save and inspect the new revision.

## Step 3 — Observe the Publishing Controls

Without using them all yet, identify:

- New Page;
- Edit;
- Preview;
- link insertion;
- image support;
- custom sidebar;
- custom footer;
- revision history.

## Epiphany Checkpoint

Before reading further, answer in your own words:

> **What does this interface remind you of? What could you build with it beyond a simple Wiki?**

Stop here until the learner answers.

---

# Part 2 — Reveal: What GitHub Wiki Actually Feels Like

A strong operator mental model is:

> **GitHub Wiki is a Git-backed documentation website / lightweight documentation CMS.**

GitHub uses its Markup library to render supported source formats into HTML. A Wiki gives you pages, links, images, navigation, sidebar/footer capability and Git-backed revision history.

That means a knowledge base is **one use case**, not the limit of the feature.

## What You Can Build

Examples:

- SOP library;
- internal handbook;
- onboarding portal;
- operating manual;
- product documentation;
- FAQ;
- training/course companion;
- architecture handbook;
- runbook library;
- project documentation hub.

This creates an important agentic pattern:

> An AI agent can be instructed to build and maintain a structured, browsable SOP or documentation library using the repository Wiki rather than requiring a custom documentation application.

## But Wiki Is Not a Full Website Builder

Keep the distinction precise:

```text
GitHub Wiki
= documentation-focused publishing surface
= pages + rendered markup + navigation + Git history

GitHub Pages
= static website hosting
= HTML + CSS + JavaScript from a repository
= optional build process
```

Use Wiki when documentation/navigation is the primary requirement.
Use GitHub Pages when you need an actual static website with greater front-end control.

Read:

- `knowledge-base/wiki-as-documentation-platform.md`
- `knowledge-base/wiki-vs-repository-markdown.md`

---

# Part 3 — Knowledge Architecture

Different GitHub objects solve different knowledge problems:

```text
README                = fast project orientation
repository Markdown   = governed durable knowledge
knowledge-base/        = authoritative verified course knowledge
Wiki                  = browsable documentation/publishing layer
Issue                 = actionable work/problem
Discussion            = conversation before commitment
Project               = portfolio/planning view
Release                = shipped-version communication
Pages                  = static website publishing
```

## This Course's Architecture

```text
current official/live evidence
        ↓
knowledge-base/              ← authoritative verified knowledge
        ↓
skills/github-power-user/    ← strategic accelerator / feature map
        ↓
course modules               ← teaching sequence
        ↓
students/                    ← personal learning evidence

Wiki                          ← human-friendly documentation/navigation layer
```

A Wiki can become a knowledge base if structured deliberately, but for this course normal repository Markdown remains canonical because it participates directly in:

```text
Issue
→ branch
→ commits
→ Pull Request
→ review/checks
→ merge
```

Do not maintain two independent versions of the same truth.

## Compare

| Object | Best use |
| --- | --- |
| `README.md` | orientation and entry point |
| `knowledge-base/` | verified authoritative GitHub knowledge |
| `/docs` | architecture/explanatory project documentation |
| Wiki | reader-friendly handbook, SOP/documentation portal and navigation |
| Issues | actionable work and decisions requiring execution |
| Discussions | open-ended ideas/Q&A/community conversation |
| Projects | planning metadata and views across work |
| Releases | version-specific shipped information |
| Pages | static website publishing |
| Repository files | governed source truth that benefits from PR control |

---

# Part 4 — Build Navigation

Create a second Wiki page such as:

```text
GitHub Knowledge Architecture
```

Then:

1. link Home → second page;
2. link second page → Home;
3. add meaningful Edit messages;
4. inspect the additional revisions;
5. create or inspect a custom sidebar and consider how it could become site navigation.

## Agentic Scenario

Imagine you tell an AI agent:

> Build an SOP library in this repository's Wiki. Create a Home page, categories, SOP pages, cross-links, sidebar navigation and meaningful revision messages. Keep canonical policy in the main repository where PR governance is required.

Explain what the agent would create and which source should be authoritative.

## Mastery Evidence

A learner demonstrates this module when they can:

- create and edit Wiki pages;
- use Preview, links and revision history;
- explain why Wiki feels like a documentation website/CMS;
- distinguish Wiki from GitHub Pages;
- distinguish Wiki from a database or semantic memory system;
- classify information into README, repository Markdown/knowledge base, Wiki, Issue, Discussion, Project, Release and Pages;
- decide when an AI agent should build documentation in Wiki versus governed Markdown.

## Official References

- https://docs.github.com/en/communities/documenting-your-project-with-wikis/about-wikis
- https://docs.github.com/en/communities/documenting-your-project-with-wikis/adding-or-editing-wiki-pages
- https://docs.github.com/en/communities/documenting-your-project-with-wikis/creating-a-footer-or-sidebar-for-your-wiki
- https://docs.github.com/en/pages/getting-started-with-github-pages/what-is-github-pages
