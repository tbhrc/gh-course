# Learning Note — GitHub Wiki and Knowledge Architecture

**Student:** David  
**Date:** 27 August 2026  
**Topic:** GitHub Wiki, knowledge base architecture and source authority  
**Related work:** Issue #9

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

For this course, authoritative GitHub knowledge is being placed under:

```text
knowledge-base/
```

because normal repository Markdown participates directly in the course's Issue → branch → Pull Request governance and is naturally available with the rest of the repository to AI agents.

Wiki remains useful as a human-friendly handbook/navigation layer and as a feature David should learn hands-on.

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
| Understands Wiki is useful for linked long-form documentation | Introduced |
| Understands Wiki is not automatically a database/semantic memory layer | Introduced; needs unaided recall |
| Understands repo Markdown can be stronger canonical truth for AI/PR governance | Introduced; needs unaided explanation |
| Has personally created/edited a GitHub Wiki page | Not yet demonstrated |
| Can classify README vs knowledge base vs Wiki vs Issue/Discussion/Project | Not yet tested |

## Remaining Mastery Test

David should complete the Module 07 Wiki lab and then explain without assistance:

1. what GitHub Wiki is;
2. why it is useful;
3. why this course keeps canonical knowledge in `knowledge-base/`;
4. why Wiki is not the same as a database;
5. where different kinds of GitHub information should live.

## Evidence Rule

Preserve this starting misconception and correction. Do not rewrite it later when Wiki usage becomes familiar.
