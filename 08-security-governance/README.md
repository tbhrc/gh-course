# 08 — Security & Governance

## Objective

Operate GitHub safely and deliberately when humans, automation and AI agents can all read, write, review, dispatch or deploy repository work.

Security in GitHub is not one setting. It is the combination of:

```text
identity
+ permissions
+ branch/repository policy
+ secret handling
+ dependency/security controls
+ review/check gates
+ audit evidence
```

## Operator Principle

> **Grant the smallest capability needed, make important changes reviewable, and verify what actually happened.**

## Why AI Changes the Governance Requirement

AI agents increase throughput. They do not remove the need for control.

An agent may:

- misunderstand scope;
- make factually incorrect claims;
- modify more files than intended;
- use unsafe closing/merge semantics;
- introduce vulnerable dependencies;
- expose secrets in output;
- request permissions it does not need;
- produce technically valid but operationally wrong changes.

Therefore:

```text
agent can write
≠
agent should merge
```

For important repositories, use PRs, checks, review and least privilege as default guardrails.

## Identity and Provenance

Always distinguish:

- human account;
- GitHub App;
- workflow bot such as `github-actions[bot]`;
- AI coding-agent identity;
- PR author;
- commit author;
- commit committer;
- external service/deployment bot.

Course evidence has shown these identities can differ. For example, an agent may author/commit code while the PR metadata is created under the triggering user context.

Do not state “the agent created X” without checking the durable GitHub objects.

## Repository Permissions

Common repository permission levels include read, triage, write, maintain and admin-style capabilities depending on context.

Professional rule:

> Give collaborators and integrations the lowest role that supports the required work.

Do not use broad admin access as a shortcut for fixing an unclear permission boundary.

## GitHub Apps and Integrations

Use the evidence model:

```text
installed / authorised
≠
permission granted for every operation
≠
operation successfully demonstrated
```

For each important integration, verify the actual operation:

- read repository;
- read Issues;
- write comments;
- create/use branches;
- commit;
- open PR;
- inspect checks;
- trigger automation;
- deploy;
- merge, if that capability is intentionally allowed.

The course’s agent benchmarks repeatedly demonstrated why this matters: setup/policy/authentication boundaries differed across Copilot, Codex, Claude, Gemini and Jules.

## Branch Protection and Rulesets

Important repositories should consider controls such as:

- require Pull Requests before changes enter the default branch;
- require selected status checks;
- require review for sensitive paths;
- prevent force-pushes where appropriate;
- prevent branch deletion where appropriate;
- restrict who can bypass controls;
- enforce signed commits or other organisation standards where justified;
- use merge queues when concurrency/traffic justifies them.

Do not enable every protection merely because it exists. Match controls to risk and operating scale.

## CODEOWNERS

Use `CODEOWNERS` when specific people/teams should be automatically requested for review of important paths.

Good candidates:

- security-sensitive workflows;
- infrastructure/deployment configuration;
- production policies;
- legal/compliance content;
- core libraries with clear ownership.

Avoid using it as a decorative ownership map if no one will actually review those changes.

## Secrets

Never commit credentials to repository files.

A secret may include:

- personal access token;
- API key;
- cloud credential;
- deployment token;
- webhook secret;
- signing credential.

### Important correction

`.gitignore` prevents untracked files from being added accidentally. It does not remove a secret already committed into Git history.

If a real secret is exposed:

1. revoke/rotate the credential;
2. assess where it was exposed;
3. remove/rewrite history if justified;
4. add preventive controls;
5. do not assume deleting the current file makes the secret safe again.

## Actions Secrets vs Runtime Variables

A workflow can read stored secrets using expressions such as:

```yaml
${{ secrets.NAME }}
```

The stored secret name and the runtime environment-variable name may differ.

Course example:

```text
repository secret: AGENT_DISPATCH_TOKEN
runtime variable: COPILOT_GITHUB_TOKEN
```

That mapping is deliberate and should not be mistaken for two different credentials.

## Workflow Permissions

Do not confuse:

```text
Actions source policy
= which Actions can run

workflow permissions
= what GITHUB_TOKEN can do
```

A repository that allows all Actions can still run a workflow with read-only token permissions.

Prefer explicit least-privilege `permissions:` blocks for sensitive workflows.

## Untrusted Input

Issue bodies, PR titles/bodies, comments, branch names and external payloads can contain attacker-controlled or malformed content.

Be particularly careful when workflows:

- interpolate Issue/PR content into shell commands;
- execute code from untrusted forks;
- expose secrets to PR-triggered jobs;
- allow AI-generated shell/code to run with write credentials;
- call external services using sensitive tokens.

Treat content and credentials as separate trust domains.

## Dependency Security

A professional repository should deliberately assess:

- dependency update automation;
- vulnerability alerts;
- secret scanning;
- push protection;
- code scanning where useful;
- provenance/supply-chain controls where relevant.

The exact controls depend on repository language, exposure and organisation plan.

## Review Proportional to Risk

Not every change needs the same ceremony.

Examples:

| Change | Reasonable control |
| --- | --- |
| typo in course text | normal PR/self-review may be enough |
| Actions permission change | careful diff + workflow/security review |
| deployment secret change | least privilege + human verification |
| production code change | tests/checks + qualified review |
| AI-generated refactor | scope/diff/tests/provenance review |
| ruleset/branch policy change | explicit operational impact review |

Governance should reduce risk without turning the repository into bureaucracy.

## Merge Authority

The first run of a new agent or automation should generally stop before merge.

```text
agent executes
→ PR created
→ human/authorised reviewer inspects
→ merge only after evidence is acceptable
```

Self-merge may be appropriate later for low-risk proven automation, but it should be an explicit policy decision supported by repeatable evidence.

## Auditability

A healthy GitHub operating environment should make it possible to reconstruct:

- why work started;
- who/what executed;
- branch and commits;
- PR and review;
- checks/workflow runs;
- merge decision;
- release/deployment;
- failures and corrections.

This course’s governing principle captures the goal:

> **Every meaningful change should have context, history and evidence.**

## Security Review for AI-Agent Integrations

Before enabling an AI coding agent, review:

1. repository access scope;
2. contents read/write capability;
3. Issues/PR write capability;
4. workflow permissions;
5. secrets available to the agent/workflow;
6. external data sent to the provider;
7. ability to run code/terminal commands;
8. ability to merge/deploy;
9. audit identity and logs;
10. revocation/removal path.

Then test the required operation rather than assuming installation proves it.

## Hands-On Exercise — Minimum-Safe AI Repository Policy

Design a policy for a production-style AI-assisted repository.

Your policy must decide:

- default branch protection/ruleset;
- PR requirement;
- required checks;
- review requirement;
- CODEOWNERS usage;
- Actions `permissions:` stance;
- secret handling;
- agent write/merge authority;
- dependency/security scanning;
- bypass rules;
- emergency recovery.

Explain **why** each control exists. Do not merely list features.

## Hands-On Exercise — Permission Audit

Pick one installed integration.

Record:

1. what it is authorised to access;
2. what capability the course has physically proven;
3. what is still unproven;
4. what permissions appear broader than current need;
5. how access would be revoked.

## Mastery Check

A learner should be able to explain:

1. branch protection/rulesets vs PR review;
2. Actions source policy vs token permissions;
3. why `.gitignore` is not secret remediation;
4. GitHub App installation vs proven capability;
5. why agent write access should not imply merge authority;
6. why provenance can involve several identities;
7. how to respond to a leaked credential;
8. what least privilege means operationally;
9. how governance should scale with change risk.

## Evidence Required for Mastery

Produce and defend a minimum-safe governance design for a real repository, then inspect at least one actual ruleset/permission/integration/workflow configuration and compare it to the design.

## References

- `AGENTS.md`
- `knowledge-base/pages-actions-integrations-control-plane.md`
- `knowledge-base/deterministic-actions-vs-agentic-ai.md`
- `09-ai-agents-github/README.md`
- GitHub Docs — About rulesets
- GitHub Docs — Managing protected branches
- GitHub Docs — Security hardening for GitHub Actions
- GitHub Docs — About secret scanning
- GitHub Docs — About CODEOWNERS
