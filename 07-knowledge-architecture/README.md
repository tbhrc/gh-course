# 07 — GitHub Knowledge Architecture

## Objective

Learn where information should live inside GitHub, how to build an evidence-backed knowledge layer, and how GitHub Wiki differs from governed repository Markdown.

## Core Mental Model

Different GitHub objects solve different knowledge problems:

```text
README                = fast project orientation
repository Markdown   = governed durable knowledge
knowledge-base/        = authoritative verified course knowledge
Wiki                  = long-form navigable documentation
Issue                 = actionable work/problem
Discussion            = conversation before commitment
Project               = portfolio/planning view
Release               = shipped-version communication
```

## This Course's Knowledge Architecture

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

Wiki                          ← optional reader-friendly handbook/navigation layer
```

## Wiki — What It Actually Is

GitHub Wiki is a long-form documentation area attached to a repository. It can contain linked pages, be edited on GitHub or locally, and has its own change history.

It is **not automatically a database, semantic memory layer or knowledge graph**. Links make it navigable, but structured retrieval and canonical governance require deliberate architecture.

For this AI-first course, normal repository Markdown remains canonical because it participates directly in branches, Pull Requests, review and the same agent workflow as the rest of the course.

Read:

- `knowledge-base/wiki-vs-repository-markdown.md`
- `knowledge-base/source-policy.md`

## Compare

| Object | Best use |
| --- | --- |
| `README.md` | orientation and entry point |
| `knowledge-base/` | verified authoritative GitHub knowledge |
| `/docs` | architecture/explanatory project documentation |
| Wiki | reader-friendly long-form handbook/navigation |
| Issues | actionable work and decisions requiring execution |
| Discussions | open-ended ideas/Q&A/community conversation |
| Projects | planning metadata and views across work |
| Releases | version-specific shipped information |
| Repository files | governed source truth that benefits from PR control |

## Practical Exercise — Wiki Lab

The repository currently has Wiki enabled.

### Part A — Inspect

1. Open the repository's **Wiki** tab.
2. Observe that Wiki is separate from the normal `main` repository file tree.
3. Identify how pages, links and history work.

### Part B — Create the first page

Create a Wiki Home page with a concise purpose:

```text
GitHub Professional Operator Course Wiki

Reader-friendly navigation for the course.
Authoritative GitHub knowledge remains in /knowledge-base inside the main repository.
```

Add links to:

- the repository README;
- `knowledge-base/`;
- the course modules;
- David's public student case study.

### Part C — Explain the architecture

Without looking at the answer, explain:

1. Why Wiki is useful.
2. Why Wiki is not our only source of truth.
3. Why `knowledge-base/` is easier to govern with Issue → branch → PR.
4. What information you would put in Wiki that you would not necessarily keep as canonical policy.

## Mastery Evidence

A student demonstrates this module when they can correctly classify information into README, repository Markdown/knowledge base, Wiki, Issue, Discussion, Project and Release—and can create/navigate a Wiki page without confusing Wiki with a database.

## Official References

- https://docs.github.com/en/communities/documenting-your-project-with-wikis/about-wikis
- https://docs.github.com/en/communities/documenting-your-project-with-wikis/adding-or-editing-wiki-pages
- https://docs.github.com/en/communities/documenting-your-project-with-wikis
