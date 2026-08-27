# Copilot Free AI Inside GitHub Actions

## Proven Result

On 27 August 2026 the course physically proved that **Copilot Free can perform genuine AI inference inside GitHub Actions using GitHub Copilot CLI**.

This does **not** mean the Free plan includes the autonomous Copilot cloud coding agent.

## Execution-Mode Split

```text
COPILOT FREE

✅ Issue-triggered GitHub Action
✅ GitHub Copilot CLI
✅ genuine AI inference
✅ AI-generated text output

❌ assign Copilot cloud agent to Issue
❌ autonomous cloud-agent branch / commit / PR
```

## Live Evidence

### Cloud-agent test — Issue #38

```text
ChatGPT Web
→ dispatch trigger
→ GitHub Action
→ authenticated copilot-swe-agent[bot] assignment request
→ HTTP 403 Forbidden
```

No Copilot cloud-agent session started.

### Free-plan inference test — Issue #45

```text
Issue #45 opened
→ Copilot Free AI Smoke Test Action
→ GitHub Copilot CLI installed
→ bounded context assembled
→ Copilot AI inference
→ captured AI response
→ github-actions[bot] posted response to Issue
```

Actions run `33076875845` completed successfully, including **Run Copilot AI inference**.

The AI-generated response correctly explained the repository purpose, benchmark objective and deterministic-vs-agentic distinction.

## Secret Mapping

The repository secret remains:

```text
AGENT_DISPATCH_TOKEN
```

The workflow maps it at runtime:

```yaml
env:
  COPILOT_GITHUB_TOKEN: ${{ secrets.AGENT_DISPATCH_TOKEN }}
```

So:

```text
stored secret name
≠
runtime variable expected by the consumer
```

## Why This Matters

The right question is no longer:

> Does the Free plan have Copilot agents?

The better question is:

> Which Copilot execution modes does this plan permit?

Evaluate separately:

- interactive agent mode;
- Copilot CLI;
- Copilot CLI inside Actions;
- GitHub Agentic Workflows;
- Copilot cloud coding agent;
- Codex/Claude partner agents.

## Founder Flow Proven So Far

```text
ChatGPT Web
→ create Issue
→ GitHub Action fires
→ Copilot Free AI reasons
→ safe captured output
→ GitHub records evidence
```

The next step is to extend this safely from **AI-generated text** into a bounded **AI-proposed repository change + Pull Request**, while keeping human review as the merge gate.

## Evidence

- [Issue #43 — setup benchmark](https://github.com/tbhrc/github-course/issues/43)
- [Issue #45 — successful live trigger](https://github.com/tbhrc/github-course/issues/45)
- [Verified knowledge note](https://github.com/tbhrc/github-course/blob/main/knowledge-base/copilot-free-ai-in-actions.md)
- [David learning evidence](https://github.com/tbhrc/github-course/blob/main/students/david/assessments/learning-note-2026-08-27-copilot-free-actions.md)

## Navigation

[AI Control Plane](AI-Control-Plane) · [Student Dashboard — David](Student-Dashboard-David) · [Home](Home)
