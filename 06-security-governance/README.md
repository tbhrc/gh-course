# 06 — Security & Governance

Security in GitHub is about **real boundaries**, not making authorised work harder:
- who can change what;
- where code executes;
- what credentials it can access;
- what genuinely consequential actions need separate authority;
- what evidence proves the control protects something real.

## Core rules

- Never commit credentials or paste secret values into Issues, PRs or logs.
- Use **purpose-fit authority**: enough access to perform the intended job. Organisation-wide operators may legitimately need organisation-wide access.
- Use the **least restrictive effective guardrail**. Do not narrow access merely because “least privilege” sounds safer.
- Treat genuinely untrusted issue/PR text and fork code as untrusted input.
- A credential-bearing self-hosted runner must not execute arbitrary untrusted code.
- Add branch protection/rulesets only where they protect a real current boundary; do not turn them into ceremony for ordinary authorised work.
- A green check proves only what the check actually tested.
- Issues, labels, comments and approval metadata preserve continuity; they are not runtime permission unless they represent a genuine external authority boundary.
- Do not create another PAT, key, App, token, bridge or approval layer when an existing authorised identity already provides the required capability.

## Security test

Before adding a restriction, answer:

> **What concrete bad thing becomes materially harder because this control exists?**

If the answer is only “it narrows access”, “it feels safer”, “it follows best practice” or “it adds approval”, the control has not justified its friction.

## Exercise

Review a workflow that runs genuinely untrusted public PR code on a credential-bearing self-hosted runner. Explain the **actual credential/host threat** and propose the smallest control that protects that boundary without reducing unrelated authorised agent access.

Next: [07 — AI Agents & Skills](../07-ai-agents-skills/README.md)
