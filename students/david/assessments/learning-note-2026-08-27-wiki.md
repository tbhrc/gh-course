# Learning Note — GitHub Wiki and Knowledge Architecture

**Student:** David  
**Date:** 27 August 2026  
**Topic:** GitHub Wiki, knowledge architecture and documentation publishing  
**Related work:** Issues #9 and #11

## Starting Mental Model

David had never operated GitHub Wiki. His intuitive model was that a Wiki probably turns repository folders/code into linked pages or something more machine-readable, and that hyperlinks could make it useful as a memory layer or database-like knowledge system.

He later proposed using Wiki as the course knowledge base so AI agents could draw from durable GitHub best-practices knowledge rather than relying on model memory or assumptions.

## What Was Correct in the Instinct

David correctly identified the important architectural need:

- knowledge should be durable outside chat;
- AI coaches should have a shared knowledge source;
- current GitHub best practices should be verified rather than assumed;
- hyperlinks/navigation can make a knowledge base easier to use;
- the course should itself become an AI-readable operating environment.

## Correction Introduced

GitHub Wiki is primarily a long-form documentation surface attached to a repository. It supports linked pages and change history, but it is not automatically a relational database, semantic memory system or knowledge graph.

For this course, authoritative GitHub knowledge is placed under:

```text
knowledge-base/
```

because normal repository Markdown participates directly in the course's Issue → branch → Pull Request governance and is naturally available with the rest of the repository to AI agents.

## Hands-On Evidence — Issue #11

David personally:

- created the first Wiki Home page;
- obtained the Wiki Git clone URL `https://github.com/tbhrc/github-course.wiki.git`;
- found the initial Home revision and identified commit `505b272...`;
- inspected the Wiki revision/history interface;
- discovered that the **Edit message** field is optional and functions as the Wiki commit message;
- used Preview;
- observed link and image capability;
- successfully added a link back to the main course repository;
- noticed the custom sidebar and footer capability.

This is direct hands-on evidence, not merely exposure through explanation.

## Epiphany — Wiki as a Documentation Website

While operating the interface, David independently recognised that the Wiki felt much closer to building a website/blog than to using a simple database or note store.

His insight was approximately:

```text
pages
+ preview
+ links
+ images
+ sidebar
+ footer
+ revision history
= a Git-backed documentation website
```

He then generalised the capability: an agent could be instructed to create a structured SOP library, handbook or similar documentation system using GitHub Wiki instead of requiring the same structure to be built manually elsewhere.

This materially changed his mental model of GitHub from "repository hosting with extra features" toward "a broad operating platform containing mature publishing, governance and automation primitives."

## Professional Refinement

The useful corrected model is:

```text
GitHub Wiki
= Git-backed documentation website / lightweight documentation CMS

Knowledge base
= one architecture/use case that can be built with Wiki

GitHub Pages
= GitHub's fuller static website layer for HTML/CSS/JavaScript
```

The course should preserve the excitement of this discovery while avoiding the inaccurate statement that Wiki is an unrestricted general-purpose website builder.

## New Knowledge Authority Model

```text
current official/live evidence
→ knowledge-base/
→ github-power-user Skill
→ course modules
→ model memory / old chat
```

David's core requirement is now encoded: material GitHub knowledge should not be taught from assumption when it can be verified from an authoritative source.

## Current Knowledge State

| Capability | Evidence |
| --- | --- |
| Understands need for durable GitHub knowledge base | Demonstrated |
| Understands model memory should not be sole authority | Demonstrated |
| Has personally created/edited a GitHub Wiki page | Demonstrated |
| Has inspected Wiki revision history | Demonstrated |
| Understands Edit message as Wiki commit context | Demonstrated |
| Recognises Wiki as a Git-backed documentation publishing surface | Independently discovered |
| Recognises SOP library/handbook as viable Wiki use cases | Independently applied |
| Understands Wiki is not automatically a database/semantic memory layer | Demonstrated conceptually |
| Understands repo Markdown can be stronger canonical truth for PR governance | Introduced; final unaided explanation still required |
| Distinguishes Wiki from GitHub Pages | Introduced; not yet tested unaided |
| Can classify README vs knowledge base vs Wiki vs Issue/Discussion/Project | Not yet fully tested |

## Teaching Lesson for Future Students

Do not give future students the full "documentation website" answer before they use the Wiki.

Prefer this sequence:

```text
create page
→ preview
→ link
→ inspect revision
→ notice sidebar/footer/images
→ ask what the interface reminds them of
→ let the student articulate the website/documentation insight
→ then teach Wiki vs Pages vs canonical repository Markdown
```

David's spontaneous epiphany is now part of the reusable pedagogy, not only his personal record.

## Remaining Mastery Test

David should complete the rest of the Module 07 Wiki lab and then explain without assistance:

1. what GitHub Wiki is;
2. why it is useful;
3. why this course keeps canonical knowledge in `knowledge-base/`;
4. why Wiki is not the same as a database;
5. how Wiki differs from GitHub Pages;
6. where different kinds of GitHub information should live.

## Evidence Rule

Preserve this starting misconception, hands-on discovery and correction. Do not rewrite it later when Wiki usage becomes familiar.
