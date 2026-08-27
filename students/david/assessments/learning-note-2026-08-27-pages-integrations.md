# Learning Note — GitHub Pages, Actions Permissions and Integrations

**Student:** David  
**Date:** 27 August 2026  
**Related work:** Issue #19

## Trigger

While independently exploring repository Settings, David moved beyond the guided Wiki lesson and inspected Actions, Pages and Integrations.

## Student Actions and Observations

David reported that he personally:

- changed Actions permissions to **Allow all actions and reusable workflows**;
- observed workflow approval is set to **Require approval for first-time contributors**;
- found no separate Actions policy configured;
- enabled GitHub Pages and published the course at `https://tbhrc.github.io/github-course/`;
- opened repository Integrations;
- enabled/approved ChatGPT/Codex access;
- approved updated permissions requested by Claude;
- approved additional permissions for Gemini;
- approved updated Vercel permissions.

These are student-reported settings actions from the GitHub UI. They are not silently upgraded to connector-verified operational capability.

## Spontaneous Breakthrough

David independently recognised that **Integrations may be one of GitHub's most important capabilities for an AI-first operating model**.

The new mental model is:

```text
GitHub repository
= source + governance centre

Actions
= automation layer

Pages
= public publishing layer

Wiki
= documentation/handbook layer

Integrations / Apps
= external agent + service connection layer
```

This materially extends the earlier insight that GitHub is an operating platform rather than repository storage.

## Professional Refinement

Three states must remain separate:

```text
Integration installed / authorised
≠
Permission granted
≠
Desired operation successfully demonstrated
```

For example, approving an AI integration does not prove it can create branches, open Pull Requests, review code or deploy. Each required capability should be tested and recorded.

Likewise:

```text
Allow all actions and reusable workflows
≠
unlimited GITHUB_TOKEN permissions
```

Individual workflows still have their own permission scope and should use least privilege.

## GitHub Pages Progress

David independently enabled a GitHub Pages site while learning the platform. This is direct hands-on evidence that he can find and activate the Pages publishing capability from repository Settings.

This is not yet evidence that he can design a custom Pages build workflow unaided.

## Current Assessment

| Capability | Evidence |
| --- | --- |
| Finds repository Actions settings | Demonstrated |
| Changes Actions source policy | Demonstrated, student-reported |
| Finds workflow approval setting | Demonstrated |
| Enables GitHub Pages from Settings | Demonstrated, student-reported |
| Recognises Pages as public publishing capability | Demonstrated |
| Finds repository Integrations | Demonstrated |
| Authorises/updates several integrations | Demonstrated, student-reported |
| Recognises integrations as an AI operating layer | Demonstrated independently |
| Understands installed vs operationally proven distinction | Introduced; needs application |
| Can design least-privilege integration policy | Not yet tested |
| Can verify each AI integration end-to-end | Not yet tested |

## Next Mastery Evidence

Later exercises should test at least one integration end to end:

```text
Issue
→ assign/delegate to agent
→ agent reads repo
→ branch/change
→ Pull Request
→ review/checks
→ merge
```

The course should also compare the capabilities and permission boundaries of Codex, Claude, Gemini and other connected agents without assuming equivalence.
