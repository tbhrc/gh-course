# GitHub Pages, Actions and Integrations as an Operating Control Plane

**Last verified:** 27 August 2026

## Question

How do GitHub Pages, Actions permissions and repository integrations change GitHub from a code host into a broader AI-first operating platform?

## Verified Mental Model

GitHub can act as a **control plane** connecting source truth, automation, AI agents, review and publishing.

```text
Repository
├── Issues / PRs           → work + governance
├── Actions                → automation / CI / publishing
├── Wiki                   → documentation handbook
├── Pages                  → public static website
└── Integrations / Apps    → external agents and services
```

The important operator insight is that these are not isolated features. They can be combined into one governed workflow.

## GitHub Pages

GitHub Pages publishes a static website from a repository. GitHub supports two main publishing patterns:

1. **Deploy from a branch** — select a branch and either `/` or `/docs` as the publishing source.
2. **GitHub Actions** — use a workflow when a custom build/deployment process is required.

For this course, David enabled GitHub Pages and reported the public URL:

```text
https://tbhrc.github.io/github-course/
```

This is student-reported live evidence from the repository Settings UI. The current connector does not expose the repository Pages settings endpoint for direct verification.

## Actions Permission vs Workflow Permission

These are different layers.

### Repository / organisation Actions policy

A repository or organisation can allow all actions and reusable workflows, restrict them to selected sources, or disable them.

David reported changing the course repository setting to:

> **Allow all actions and reusable workflows**

This removes a source-level restriction on which Actions/reusable workflows may be used.

### Individual workflow permissions

A workflow still controls what its `GITHUB_TOKEN` can do through the workflow's `permissions:` block.

Therefore:

> **Allow all Actions does not mean every workflow has unlimited repository access.**

Professional repositories should still use least-privilege token permissions.

## Workflow Approval Settings

David reported the repository is set to require approval for **first-time contributors**.

This is separate from Actions source policy. It controls when workflow runs from outside contributors need approval before execution.

Do not assume a known collaborator or installed integration is exempt from every possible repository/organisation policy; verify the actual run when it matters.

## Integrations / GitHub Apps

Repository integrations can connect GitHub to AI agents, deployment platforms and other services.

David inspected the repository Integrations settings and reported enabling/updating requested permissions for:

- ChatGPT / Codex;
- Claude;
- Gemini;
- Vercel.

These observations are valuable **configuration evidence**, but they are not yet proof that each integration can perform every desired action.

Use this distinction:

```text
Installed / authorised
≠
Operationally proven
```

A professional integration test should verify the actual capability needed, for example:

```text
Can read repository?
Can create branch?
Can commit?
Can open Pull Request?
Can review PR?
Can read Issues?
Can comment on Issues?
Can trigger or observe Actions?
Can deploy?
```

Record only what was actually demonstrated.

## Codex + GitHub

OpenAI documents GitHub-connected Codex workflows for repository tasks, Pull Requests and code review. Codex can be connected to authorised GitHub repositories, and OpenAI also provides GitHub-oriented review and Actions workflows.

This makes Codex a practical example of the broader pattern:

```text
Issue / prompt
→ AI agent
→ repository context
→ branch / changes
→ Pull Request
→ review
→ merge
→ Actions / deployment
```

## Security Rule

Integration power increases the importance of permissions.

Prefer:

- repository-specific access rather than all repositories when possible;
- least-privilege scopes;
- protected `main`;
- PR-based changes;
- required checks proportional to risk;
- explicit secrets handling;
- reviewing permission-change requests before accepting them;
- periodically removing unused integrations.

Broadly allowing Actions can be useful during learning and experimentation, but mature environments should decide deliberately whether to keep that policy or restrict trusted actions/reusable workflows.

## Course Teaching Pattern

Do not teach Integrations as a settings-menu footnote.

Use this sequence:

```text
open Settings
→ inspect Actions policy
→ inspect Pages
→ inspect Integrations
→ identify connected agents/services
→ map permissions
→ run one real bounded test per integration
→ record proven capability
→ design the operating architecture
```

## Official Sources

- https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site
- https://docs.github.com/en/organizations/managing-organization-settings/disabling-or-limiting-github-actions-for-your-organization
- https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-github-actions-settings-for-a-repository
- https://help.openai.com/en/articles/11390924
- https://openai.com/index/introducing-upgrades-to-codex/

## Vercel Integration — Benchmark Finding

**Benchmark:** `knowledge-base/vercel-integration-benchmark.md` (Issue #27, 2026-08-27)

**Finding:** Vercel is account-authorised for `tbhrc/github-course` but no project has been imported into Vercel. Without a project import, Vercel creates no webhooks, no check runs, no deployment environments and no PR comments.

**Architecture decision:** Keep GitHub Pages as the sole deployment surface for this course repository. Vercel's preview-deployment model adds no clear value for a static documentation/governance site. Revisit only if server-side functions or a separate marketing site are required.

## Operator Rule

> **Treat GitHub integrations as governed capabilities, not badges in Settings: authorise deliberately, test the exact operation, and record what is actually proven.**
