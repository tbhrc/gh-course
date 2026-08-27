# Lab — Prove Copilot Free AI Inside GitHub Actions

## Objective

Prove genuine Copilot AI inference on **Copilot Free** without confusing it with the paid Copilot cloud coding agent.

## Mental model

```text
Copilot Free

✅ GitHub Actions can invoke Copilot CLI AI inference
❌ Copilot cannot be assigned as the autonomous cloud coding agent
```

The course proved this difference live on 27 August 2026.

## Proven architecture

```text
new Issue
→ GitHub Actions `issues: opened`
→ deterministic checkout/install/context assembly
→ Copilot CLI
→ genuine AI inference
→ captured text response
→ deterministic Issue comment
```

## Governing Issue

- setup/benchmark: #43
- live trigger/evidence: #45
- successful Actions run: `33076875845`

## Secret mapping

The repository secret keeps its durable name:

```text
AGENT_DISPATCH_TOKEN
```

The workflow maps it at runtime to the environment variable consumed by Copilot CLI:

```yaml
env:
  COPILOT_GITHUB_TOKEN: ${{ secrets.AGENT_DISPATCH_TOKEN }}
```

Do not create duplicate secrets merely because a consuming program expects a particular environment-variable name.

## Safe smoke-test workflow

For a first AI proof:

1. restrict the trigger to the repository owner and a dedicated Issue-title prefix;
2. checkout repository read-only;
3. install `@github/copilot`;
4. build a bounded prompt containing only the Issue and selected repository context;
5. tell the model not to use tools or modify files;
6. invoke Copilot CLI non-interactively;
7. capture stdout;
8. let deterministic GitHub Actions post the result back to the Issue.

## Evidence test

Do not count the test as AI merely because the workflow ran.

Require:

```text
Copilot inference step = success
AND
captured response = original context-aware analysis
AND
post-back step = success
```

In Issue #45, Copilot generated original prose explaining:

- the course repository purpose;
- the smoke-test objective;
- deterministic Actions versus AI inference;
- why the generated response was evidence of model execution.

## Compare with cloud agent

Earlier Issue #38 tested:

```text
Issue
→ copilot-swe-agent[bot]
→ autonomous cloud coding agent
```

That returned HTTP `403 Forbidden` on Copilot Free.

Therefore:

```text
Copilot CLI inference in Actions
≠
Copilot cloud coding agent
```

## Learner exercise

Without looking at the answer, explain which steps are deterministic and which step is agentic in this flow:

```text
Issue opened
→ workflow triggered
→ repository checked out
→ prompt assembled
→ Copilot generates analysis
→ comment posted
```

Then answer:

1. Why does the successful inference step prove more than a green Actions run?
2. Why does the cloud-agent `403` not contradict the successful Free-plan inference?
3. Why should the secret remain named `AGENT_DISPATCH_TOKEN` even though Copilot CLI expects `COPILOT_GITHUB_TOKEN`?
4. What additional evidence would be required before claiming autonomous Issue → branch → PR execution?

## Professional rule

> **Classify GitHub AI by execution mode and prove each mode independently.**

## References

- `knowledge-base/copilot-free-ai-in-actions.md`
- `knowledge-base/deterministic-actions-vs-agentic-ai.md`
- `students/david/assessments/learning-note-2026-08-27-copilot-free-actions.md`
