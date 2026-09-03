# Course Architecture

## Two products, one learning loop

The clean architecture deliberately separates **teaching** from **deployment canon**.

```text
GITHUB COURSE
= learn + understand + practise + reproduce

ARC
= deployable ecosystem blueprint/package
```

GitHub Course teaches the operating model. ARC will own the reproducible system definition.

## Why the split matters

If one repository tries to be both a student curriculum and the live deployment package, it quickly accumulates duplicated Skills, generated state, production automation, credentials concerns and implementation-specific machinery. That is exactly the complexity the September 2026 reset removed.

The correct boundary is:

> **Teach the concept here. Maintain the deployable system in ARC. Operate live capabilities in their real owners.**

## ARC — working system codename

**ARC** is the working canonical codename for the current ecosystem.

It is intentionally treated as a product/system name first rather than forcing an acronym expansion. The name is already used in the canonical Human + AI Operations Map as the `ARC blueprint`, has no current repository-name collision in the TBHRC organisation, and gives operators a short reference comparable to the old `FD0` shorthand without inheriting FolderDesk history.

`tbhrc/AOS` and FolderDesk are historical predecessor systems, not the new deployment canon.

## ARC mental model

```text
REQUEST / PROBLEM
        ↓
SKILLS FIRST
reusable HOW
        ↓
CORRECT OWNER
repository / system / live data source
        ↓
DURABLE WORK
Issue → branch → PR when appropriate
        ↓
AUTHORISED AI AGENT
        ↓
Can normal capability execute safely?
   ├─ YES → direct execution
   └─ NO  → AI Engine only for genuine privileged runtime gap
        ↓
VERIFY REAL STATE
        ↓
DURABLE GITHUB EVIDENCE
        ↓
REUSABLE LEARNING?
   ├─ YES → improve Skills / capability route
   └─ NO  → leave with owning domain
```

Parallel capability-improvement loop:

```text
recurring friction / missing tool / fragile workaround
        ↓
tbhrc/research
        ↓
open-source-operations-radar
        ↓
symptom → workflow → capability → platform/system
        ↓
compare native / existing / OSS / paid options
        ↓
qualified bounded test
        ↓
owner runtime / AI Engine only if privileged execution is required
        ↓
benchmark
        ↓
Reject / Watch / Adopt / Integrate
        ↓
proven reusable capability benefits the wider ecosystem
```

## Repository roles

| Need | Owner |
|---|---|
| Learn/reproduce the ecosystem | `tbhrc/gh-course` |
| Deployable ecosystem manifest/package | future dedicated ARC repository |
| Reusable operating method | `tbhrc/skills` |
| External OSS/tool/platform research | `tbhrc/research` |
| Business/product truth | relevant domain repository/system |
| Privileged VPS/Mac/local runtime bridge | `tbhrc/ai-engine` only when required |
| Private/client files | approved private file store |
| Historical predecessor evidence | Git history / legacy repositories, not current canon |

## What the future ARC repository should own

ARC should be reproducible without becoming a dump of live company data.

It should eventually maintain:

```text
manifest of required components
repository/capability map
bootstrap order
dependency graph
configuration contracts
secret-name/placeholders only — never secret values
installation/deployment profiles
portable templates
verification + benchmark gates
upgrade/migration rules
backup/restore/redeployment instructions
versioned release snapshots
```

It should **reference** canonical Skills and domain owners rather than copying their mutable truth.

## Course role in reproduction

A new student/operator follows GitHub Course to understand why each ARC component exists and how to operate it safely. The ARC package then provides the deterministic blueprint for standing the ecosystem up in another business/environment.

```text
COURSE = comprehension + operator capability
ARC    = reproducibility + deployment contract
```
