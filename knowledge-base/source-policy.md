# Knowledge Source and Freshness Policy

**Last verified:** 27 August 2026

## Purpose

Prevent the course and its AI coaches from teaching assumed, stale or invented GitHub behaviour.

## Source Priority

Use the strongest source available for the claim.

### Tier 1 — Primary

Prefer:

- official GitHub Docs;
- live GitHub repository/API behaviour;
- official GitHub changelog/release announcements where feature recency matters;
- Semantic Versioning specification for SemVer;
- authoritative standards/specifications for non-GitHub standards.

### Tier 2 — Strong secondary

Use when primary sources do not answer the practical question:

- well-maintained official repositories;
- recognised technical references;
- reputable practitioner material for experience-based guidance.

Clearly distinguish opinion/practice from platform fact.

### Tier 3 — Discovery only

AI model memory, old chat, social posts and unsourced summaries may suggest what to investigate, but they must not be treated as final authority for material current claims.

## Verification Rule

For a current or operationally important GitHub claim:

```text
claim
→ verify primary source
→ record concise finding
→ link source
→ record verification date
→ teach/use
```

If a claim cannot be verified, say so and keep it out of the authoritative knowledge layer until evidence exists.

## What Requires Extra Freshness

Re-check before relying on current behaviour for:

- Copilot and GitHub agents;
- custom agents, prompt files and instruction formats;
- MCP integration;
- Projects fields/automation;
- Actions permissions/security behaviour;
- rulesets and branch protection;
- GitHub security products;
- plan/edition availability;
- APIs, CLI commands and previews;
- repository settings that may change.

## Stable Concepts Still Need Correct Sources

Some concepts change slowly but should still be taught accurately:

- Git versus GitHub;
- commits, branches, tags and merges;
- Pull Requests and Issues;
- Semantic Versioning;
- changelogs;
- Wiki versus repository Markdown.

## Updating Knowledge

Do not silently rewrite history when a previous belief was wrong.

When important knowledge changes:

1. create/resolve a GitHub Issue;
2. update the knowledge note through branch + PR;
3. explain what changed if the old behaviour matters historically;
4. update affected lessons/Skills only where necessary;
5. record the notable change in `CHANGELOG.md` when appropriate.

## Citation Style Inside Knowledge Notes

Prefer direct links to primary sources under an `Official sources` section.

Example:

```text
Official sources:
- https://docs.github.com/...
```

## Standard

> **Do not teach an assumption as a GitHub fact.**
