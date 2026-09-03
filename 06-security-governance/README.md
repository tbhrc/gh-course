# 06 — Security & Governance

Security in GitHub is mostly about boundaries:
- who can change what;
- where code executes;
- what credentials it can access;
- what must be reviewed;
- what evidence proves the control works.

## Core rules

- Never commit credentials or paste secret values into Issues, PRs or logs.
- Prefer least privilege.
- Treat issue/PR text and fork code as untrusted input.
- A self-hosted runner can expose its host if untrusted work is allowed to execute there.
- Branch protection/rulesets are stronger than relying on people to remember process.
- A green check proves only what the check actually tested.

## Exercise

Review a hypothetical workflow that runs public PR code on a credential-bearing self-hosted runner. Explain the threat and propose the smallest safer architecture.

Next: [07 — AI Agents & Skills](../07-ai-agents-skills/README.md)
