# GitHub Power Guide

## Purpose

Use this reference when deciding which GitHub capability should own a workflow.

## 1. Issues

Use Issues for concrete work. Professional patterns:

- issue forms for structured intake;
- labels for stable facets such as type, area and exceptional state;
- milestones for grouped delivery or release outcomes;
- sub-issues for decomposition;
- dependencies for blocking relationships;
- assignees for responsibility;
- closing keywords and linked PRs for traceability;
- cross-repo references instead of copied context;
- saved searches and Projects views for visibility.

A useful Issue should normally contain: outcome/problem, relevant context/evidence, acceptance condition, owner/routing signal when known, and links to related work.

## 2. Projects

Projects is the portfolio layer across Issues and Pull Requests. It supports table, board and roadmap views, custom fields, iteration fields, charts and automation.

Recommended model:

```text
Issue/PR = work object
Project  = portfolio view + structured planning metadata
Markdown = durable governed knowledge
Actions  = automation
```

Avoid duplicating Status, Priority, Target date and Effort across multiple systems.

## 3. Discussions

Use Discussions for ideas, Q&A, announcements, polls, community feedback and design exploration before commitment.

```text
Discussion -> decision to act -> Issue -> PR -> merge/close
```

## 4. Wiki vs Repository Markdown

Default to repository Markdown for policies, SOPs, architecture and documentation that benefit from branches, PR review, CODEOWNERS, checks and normal repository search.

Use Wiki when lightweight collaborative documentation matters more than the normal repository review workflow.

## 5. Actions

Common triggers:

- `push` / `pull_request` -> test, lint, QA, build;
- `issues` -> triage, label, assign, comment;
- `issue_comment` -> command-driven workflows;
- `schedule` -> freshness, audits, reports;
- `workflow_dispatch` -> manual run;
- `release` -> publish/deploy.

Best practices:

- minimal permissions;
- protected deployments through Environments where appropriate;
- OIDC instead of durable cloud secrets where supported;
- trusted/pinned external Actions;
- treat fork code and external text as untrusted;
- make failure output actionable.

## 6. Pull Requests

PRs are the review, policy and integration boundary. Professional baseline:

- concise title linked to outcome;
- Issue link or closing keyword;
- focused diff;
- automated checks;
- correct reviewers;
- no unrelated cleanup mixed into functional work;
- merge only when checks and acceptance are actually satisfied.

## 7. Rulesets, Branch Protection and CODEOWNERS

Encode important repository policy rather than relying on memory. Consider requiring PRs, relevant checks, conversation resolution and review; restrict force pushes/deletion; use CODEOWNERS for sensitive paths; use merge queue when traffic warrants it.

## 8. Security

Use security features appropriate to repository visibility and plan: Dependabot, dependency review, code scanning, secret scanning/push protection, advisories, least-privilege Actions permissions and protected deployment environments.

Never store credentials in repository files, Issues, logs, workflow YAML or agent prompts.

## 9. Codespaces and Devcontainers

Use Codespaces when repeatable cloud environments materially reduce onboarding or environment drift. A `.devcontainer/` can define runtime, extensions, setup, ports and non-secret defaults.

## 10. Releases, Tags and Changelogs

Use deliberate version numbers and tags to mark shipped states. A Release should communicate what changed, why it matters, migration notes when required, linked Issues/PRs and useful assets.

## 11. Organisation-Level Leverage

Look above the single repository for:

- organisation Projects;
- standard labels and issue forms;
- shared workflows;
- organisation `.github` defaults;
- consistent rulesets;
- teams and CODEOWNERS;
- shared security policy.

Avoid per-repository reinvention when the rule genuinely applies organisation-wide.

## Fast Architecture Rule

```text
actionable work -> Issue
portfolio       -> Project
change          -> Pull Request
conversation    -> Discussion
governed docs   -> repository Markdown
automation      -> Actions
policy          -> rulesets/CODEOWNERS
AI execution    -> repository instructions + agent
shipped state   -> SemVer + tag + Release
```

Use the smallest native object that fits.