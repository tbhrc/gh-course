# 08 — Research & Capability Discovery

Small operational problems can reveal bigger capability opportunities.

Do not automatically over-engineer every incident. But when a failure, workaround or manual burden keeps recurring, expand the problem before building another patch.

## Problem-to-platform model

```text
symptom
→ workflow
→ reusable capability
→ platform / system
```

Example:

```text
DNS/MX lookup fails
→ candidate/company email verification workflow is fragile
→ need reliable address/domain/deliverability intelligence
→ compare native infrastructure, OSS projects and paid platforms
```

For TBHRC, canonical external/tool research belongs in `tbhrc/research` and uses `open-source-operations-radar`. Qualified tools are tested in the repository/system that would actually own them. AI Engine is only a privileged runtime bridge when normal execution cannot safely perform the test.

## Exercise

Choose one recurring friction point from your own work. Write four lines: symptom, workflow, capability, platform/system. Then list three categories of existing solutions you would investigate before writing custom infrastructure.

Next: [09 — Capstone](../09-capstone/README.md)
