# Deterministic GitHub Actions vs Agentic AI

**Status:** verified from live repository evidence  
**Last verified:** 27 August 2026

## Question

When GitHub does work automatically after a repository event, does that mean an AI agent performed the work?

## Verified answer

No.

GitHub Actions is an event-driven automation system. A workflow can run ordinary deterministic shell commands, JavaScript, Python, GitHub CLI commands, API calls or reusable actions without invoking any AI model.

Agentic AI is a separate execution layer. A deterministic workflow may itself be used as a dispatcher that hands work to an AI coding agent.

```text
trigger
→ deterministic workflow
→ optional AI-agent hand-off
→ agentic reasoning/execution
→ PR / comment / artifact
```

## Live course evidence

The course has now physically demonstrated all of the following:

1. ChatGPT Web creates or modifies governed GitHub objects.
2. A Web-created push on `dispatch/codex/...` triggers `.github/workflows/dispatch-codex.yml`.
3. GitHub Actions starts on its own after that push.
4. The workflow resolves the target Issue deterministically.
5. The workflow checks for `AGENT_DISPATCH_TOKEN` deterministically.
6. After the real GitHub-generated PAT was stored as the repository Actions secret, the secret became visible to the workflow and preflight passed.
7. The workflow reached GitHub's coding-agent assignment API.
8. The Codex partner-agent assignment returned HTTP `403 Forbidden`, exposing a downstream plan/policy/eligibility boundary rather than an Actions failure.

This proves that automation can be working correctly even when the downstream AI agent does not start.

## Four layers to distinguish

```text
1. CONTROL SURFACE
   ChatGPT Web / human / GitHub UI

2. TRIGGER + DETERMINISTIC AUTOMATION
   push / Issue event / workflow_dispatch
   → GitHub Actions

3. AGENTIC EXECUTION
   Copilot / Codex / Claude / Gemini
   → reasoning + repository work

4. DELIVERY + EVIDENCE
   branch / commits / PR / checks / Pages / Wiki / release
```

Do not collapse these into one concept.

## Operational proof ladder

For an AI workflow, verify each layer separately:

```text
trigger created
→ workflow run exists
→ workflow reached dispatcher step
→ authentication succeeded
→ agent assignment accepted
→ agent session exists
→ agent produced work
→ PR/checks exist
→ merge/deployment succeeded
```

A green result at one step does not prove later steps.

## Important credential lesson

A GitHub Actions secret is a secure storage location for a real credential. It is not a password invented by the operator.

For the live Codex dispatcher:

```text
AGENT_DISPATCH_TOKEN
= GitHub-generated fine-grained personal access token
= stored as repository Actions secret
```

The workflow logs proved the distinction:

```text
secret missing        → environment value empty
real PAT stored       → environment value masked as ***
```

## Actions secrets vs Agent secrets

Repository **Actions** secrets are exposed to GitHub Actions workflows through expressions such as:

```yaml
${{ secrets.AGENT_DISPATCH_TOKEN }}
```

GitHub's **Agents** secret surface is a different secret scope intended for agent environments. Creating the same secret there does not replace the Actions secret required by a normal Actions workflow.

## Deterministic dispatcher pattern

A useful AI-first architecture is:

```text
ChatGPT Web
→ create/refine Issue
→ create dispatch marker
→ push
→ deterministic GitHub Action
→ authenticated assignment/request
→ AI agent
→ branch + PR
→ human/AI review
```

This keeps the founder-facing command extremely small while preserving auditability.

## Failure interpretation

Use the exact failing layer:

| Failure | Meaning |
| --- | --- |
| no workflow run | trigger/workflow configuration problem |
| secret empty | secret name/scope/setup problem |
| HTTP 401 | credential invalid/expired |
| HTTP 403 | authenticated but operation forbidden / plan / policy / permission boundary |
| assignment accepted but no agent work | agent/session/runtime problem |
| agent work exists but PR/check fails | implementation/CI problem |

## Course benchmark mapping

- Issue #24 — OpenAI Codex partner-agent benchmark.
- Issue #38 — GitHub Copilot cloud-agent benchmark.
- Issue #23 — master integration capability matrix.

The tests remain separate because GitHub Copilot cloud agent and third-party partner agents are different capabilities with different plan/policy conditions.

## Operator principle

> **Automation is not automatically AI. Treat triggers, deterministic workflows, agentic reasoning and delivery as separate observable layers.**

## Sources

- GitHub Docs — GitHub Actions concepts and workflow events.
- GitHub Docs — GitHub Copilot cloud agent.
- GitHub Docs — third-party coding agents.
- Live repository Actions runs and Issue #24 evidence on 27 August 2026.
