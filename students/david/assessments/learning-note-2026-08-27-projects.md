# Learning Note — GitHub Projects

**Student:** David  
**Date:** 27 August 2026  
**Issue:** #60

## Starting point

David identified that substantial course work had already accumulated without creating a single GitHub Project and explicitly chose this as the next learning area.

He required the lesson to use all three course angles simultaneously:

1. teach the capability;
2. update the durable course files;
3. implement a real example using existing work.

## Key mental model introduced

```text
Issue / PR = actual work and evidence
Project    = planning/control surface over work
Field      = structured planning metadata
View       = saved lens over the same Project items
```

A Project does not create a duplicate copy of an Issue. One Issue can appear in several Project views while remaining one underlying Issue.

## Applied example

The course's first live Project is designed as:

**GitHub Course — Execution & Mastery**

It will use existing Issues such as the AI integration benchmarks, personal learning gaps and current Projects lesson rather than dummy cards.

Starting fields are intentionally small:

- Status;
- Workstream;
- Priority;
- Type;
- Target date only when meaningful.

## Important correction

GitHub Issue state and Project Status are different layers.

Example:

```text
Issue state = open
Project Status = Blocked
```

This allows an Issue-first repository to preserve durable work objects while using Projects for richer workflow state.

## Authentication lesson discovered

The current ChatGPT GitHub connector does not expose user-owned Project mutations. GitHub's current documentation also states that repository `GITHUB_TOKEN` cannot access Projects.

This reinforces the broader course rule:

```text
feature exists
≠
integration authorised for that feature
≠
capability proven
```

## Current evidence level

**Concept introduced and live implementation started. Not yet mastered.**

Mastery should not be credited until David has personally used the live Project and can explain:

- Issue vs Project item;
- field vs view;
- board vs table vs roadmap;
- Project Status vs Issue state;
- labels vs Project fields;
- why minimal fields are preferable at the start.
