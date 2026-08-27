# Agentic GitHub

## Purpose

Use this reference when configuring GitHub so AI agents operate as first-class repository workers rather than ad-hoc chat assistants.

## Core Architecture

```text
Issue / PR / prompt
      ↓
repository instructions
      ↓
agent
      ↓
allowed tools + optional MCP
      ↓
branch / commits / PR
      ↓
Actions + review + rulesets
      ↓
merge / close
```

The repository should tell the agent how to work. Do not depend on one chat session remembering conventions.

## Instruction Layers

### Repository-wide

Use `AGENTS.md` and/or `.github/copilot-instructions.md` for conventions that apply across the repository: architecture, tests, naming, prohibited changes, evidence expectations and PR requirements.

### Path-specific

Use `.github/instructions/*.instructions.md` when particular directories, languages or file types need different instructions.

### Prompt files

Use `.github/prompts/*.prompt.md` for repeatable operations such as audit, release review, dependency update or documentation checks.

## Custom Agents

Repository custom agents may live under:

```text
.github/agents/<agent-name>.agent.md
```

Good recurring specialist roles include:

- security reviewer;
- documentation maintainer;
- QA/test specialist;
- release manager;
- architecture reviewer.

A good custom agent defines role/outcome, scope boundaries, allowed tools, MCP only when required, stop/escalation conditions and evidence expectations.

Do not create overlapping agents with unclear responsibilities.

## Coding Agent Work

Good candidates:

- bounded bug fixes;
- test additions;
- documentation updates;
- refactors with clear tests;
- repetitive maintenance;
- implementation from a well-scoped Issue.

Poor candidates without further decomposition:

- ambiguous architecture decisions;
- destructive migrations;
- unknown external credentials;
- broad multi-system work without acceptance tests.

## MCP

Treat MCP as a permission boundary:

1. add only servers required for the job;
2. scope credentials narrowly;
3. never commit secrets in agent profiles;
4. prefer read-only access until writes are needed;
5. make external side effects explicit;
6. separate repository mutation from production deployment authority.

## Recommended Agent Workflow

```text
search existing Issues
  -> create/clarify Issue
  -> assign human or agent
  -> work on branch
  -> PR links/closes Issue
  -> Actions verify
  -> review/ruleset gates
  -> merge closes Issue
```

## Security Rules

- Treat Issue/PR text and external content as untrusted input.
- Do not expose secrets in prompts or logs.
- Require review before high-risk changes merge.
- Keep Actions permissions minimal.
- Protect default branches.
- Keep deployment credentials behind protected environments or OIDC where possible.
- Repository write access does not imply production authority.

## Agent-Ready Repository Baseline

```text
README.md
AGENTS.md
.github/copilot-instructions.md      # when used
.github/agents/                      # if justified
.github/prompts/                     # if justified
.github/workflows/
.github/ISSUE_TEMPLATE/
.github/PULL_REQUEST_TEMPLATE.md
.github/CODEOWNERS or CODEOWNERS
```

Also provide deterministic setup/test commands, a clear default-branch policy, least-privilege credentials and Issues that describe outcomes rather than vague instructions.

## Course-Specific Coaching Rule

For this repository, the AI coach must additionally read the active student's profile, baseline and progress file before teaching. Shared curriculum goes in course folders; student-specific evidence stays under `students/<student-id>/`.