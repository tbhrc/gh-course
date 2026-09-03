# 05 — Actions & Runners

## Execution chain

```text
event
→ workflow
→ job
→ runner
→ steps
```

A **GitHub-hosted runner** is a temporary machine provided by GitHub for the job.

A **self-hosted runner** is a machine you control. Workflow commands execute on that machine with the permissions available to the runner process. YAML does not magically sandbox the host.

Use self-hosted runners only when there is a real need such as local hardware, private network access, specialised software or machine-local credentials. Prefer GitHub-hosted runners for ordinary portable automation.

## Exercise

For each case, choose GitHub-hosted or self-hosted and explain why:
1. run Markdown lint;
2. execute a command that requires a local Mac-only CLI profile;
3. build a normal portable Node project;
4. reach a trusted private runtime that cannot be accessed safely from GitHub-hosted infrastructure.

Next: [06 — Security & Governance](../06-security-governance/README.md)
