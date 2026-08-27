# Learning Note — Copilot Free AI Inside GitHub Actions

**Student:** David  
**Date:** 27 August 2026  
**Related Issues:** #38, #42, #43, #45

## Starting question

After the Copilot cloud-agent assignment returned HTTP `403 Forbidden`, David challenged the conclusion that the Free plan could not demonstrate agentic AI at all.

He brought back evidence from Copilot Chat showing that the **cloud agent** is not included on Free, but asked whether another GitHub-native route could still prove real AI execution before upgrading.

## Key correction

The course had to separate **Copilot product capability by execution mode**.

```text
Copilot Free
≠ no AI automation at all

Copilot Free
= limited AI capability
= no autonomous cloud-agent Issue assignee
```

## Hands-on setup

David updated the existing fine-grained GitHub token with user-level Copilot permissions, including read access to user Copilot requests.

He also clarified an important operational detail: the repository secret is officially named:

```text
AGENT_DISPATCH_TOKEN
```

The workflow did not rename that secret. It mapped it at runtime:

```yaml
COPILOT_GITHUB_TOKEN: ${{ secrets.AGENT_DISPATCH_TOKEN }}
```

This reinforced the distinction between a stored secret name and the environment-variable name expected by a consuming tool.

## Live experiment

Issue #43 governed a new workflow:

`.github/workflows/copilot-free-ai-smoke.yml`

After PR #44 merged, ChatGPT Web created fresh Issue #45:

`[copilot-free-ai] Prove Free-plan Copilot inference`

Issue creation triggered Actions run:

`33076875845`

The workflow completed every step successfully:

```text
✅ checkout
✅ install GitHub Copilot CLI
✅ build bounded prompt
✅ Copilot AI inference
✅ post captured response to Issue #45
```

## What proved AI execution

The deterministic workflow did not contain the final analysis text.

Its role was only to:

- gather bounded repository/Issue context;
- invoke Copilot CLI;
- capture stdout;
- post that captured response.

Copilot generated original prose identifying:

- the repository's purpose;
- the benchmark objective;
- the deterministic-vs-agentic distinction;
- why the response itself was evidence of model inference.

Therefore genuine Copilot AI inference on the Free plan is now operationally proven.

## Critical distinction learned

```text
COPILOT FREE

✅ Issue-triggered GitHub Action
✅ Copilot CLI AI inference
✅ AI-generated output

❌ Copilot cloud-agent Issue assignment
❌ autonomous cloud coding-agent branch/PR
```

This means plan comparisons must distinguish **execution modes**, not merely say "Copilot available" or "Copilot unavailable."

## Student outcome

David demonstrated several high-value operator behaviours:

1. He challenged an over-broad conclusion using new product evidence.
2. He distinguished the cloud-agent feature from other AI execution routes.
3. He corrected the secret-name assumption before implementation drifted.
4. He required live proof before upgrading.
5. He now has concrete evidence that a deterministic GitHub Action can invoke a genuine AI inference step on Copilot Free.

## Remaining gap

The Free-plan proof is text-only AI inference. It is **not yet** evidence that Copilot Free can autonomously implement an Issue through its own branch, commits and PR.

That higher-level capability remains associated with the paid cloud-agent/partner-agent paths or a more deliberately constructed Actions/Agentic Workflow execution architecture.

## Reusable principle

> **Classify GitHub AI by execution mode and prove each mode independently.**
