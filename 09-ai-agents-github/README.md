# 09 — AI Agents + GitHub

## Objective

Use GitHub as the durable **control and integration layer** between human decisions, AI agents, automation and deployment services.

## Core Mental Model

```text
Human intent
→ Issue / PR
→ GitHub repository
→ connected AI agent / integration
→ isolated branch + changes
→ Pull Request
→ checks / review
→ merge
→ Actions
→ Pages / deployment / release
→ durable evidence
```

GitHub is not only where an agent finds code. It can be the shared operating surface where different agents and external services receive bounded access to the same governed repository.

## Learn

- Issue-driven agent work
- Branch isolation
- Agent commits
- Pull Request creation
- Automated checks
- Human and AI review
- Merge controls
- GitHub Apps / repository integrations
- Agent permission boundaries
- `GITHUB_TOKEN` workflow permissions
- Actions source policy vs workflow token scope
- Capability verification
- Audit trails
- Deployment integrations

## Integrations Are Capabilities, Not Badges

Finding an integration under repository Settings is only the start.

```text
installed / authorised
≠
permission granted for every operation
≠
operation proven successfully
```

For every important agent or service, test the actual capability you need.

Useful test matrix:

| Capability | Test |
| --- | --- |
| Read | Can it inspect repository files and Issues? |
| Work | Can it create or use an issue-linked branch? |
| Write | Can it commit changes? |
| Deliver | Can it open a Pull Request? |
| Review | Can it review/comment on PRs? |
| Automate | Can it trigger or observe Actions where intended? |
| Deploy | Can it publish/deploy where intended? |

Do not mark a capability available merely because an integration is installed.

## Actions Permission Layers

Repository/organisation policy controls **which actions and reusable workflows may be used**.

Individual workflow `permissions:` controls **what the workflow token may do**.

Therefore:

```text
Allow all actions and reusable workflows
≠
unlimited GITHUB_TOKEN access
```

Use least privilege even when broad Actions sources are allowed.

## Reference Flow

```text
Issue
→ agent
→ branch
→ implementation
→ tests
→ Pull Request
→ review
→ merge
→ Actions
→ deployment / Pages
→ Issue closes
```

## Hands-On Exercise — Integration Capability Test

Choose one connected AI integration and one very small real Issue.

1. Record the integration and expected capability.
2. Delegate/read the Issue through that agent.
3. Require an issue-linked branch.
4. Make one bounded change.
5. Open a Pull Request.
6. Inspect author, diff, checks and permissions used.
7. Merge only if safe.
8. Record exactly which capabilities succeeded and which did not.

Do not test several integrations at once. Prove one path first.

## Hands-On Exercise — Pages

Publish a simple repository site with GitHub Pages and identify whether it is using:

- branch publishing; or
- a custom GitHub Actions deployment workflow.

Explain when you would choose Wiki versus Pages.

## David Case Study

During the Wiki lesson, David independently explored Settings and:

- enabled GitHub Pages;
- changed Actions source policy to allow all actions and reusable workflows;
- inspected workflow approval settings;
- discovered repository Integrations;
- reported authorising/updating ChatGPT/Codex, Claude, Gemini and Vercel permissions.

His key insight was that **Integrations can turn GitHub into the common AI operating/control plane**, not merely a repository connected to one coding assistant.

The remaining professional task is to test those integrations end to end rather than assume equivalent capability.

## Mastery Evidence

A learner demonstrates this module when they can:

- explain GitHub Apps/integrations as permissioned connections;
- distinguish installation from operational proof;
- explain Actions source policy vs workflow token permissions;
- run at least one agent through Issue → branch → PR safely;
- inspect the resulting audit trail;
- choose least-privilege access appropriate to the integration;
- explain how Pages/deployment fits after merge.

## References

- `knowledge-base/pages-actions-integrations-control-plane.md`
- `skills/github-power-user/SKILL.md`
