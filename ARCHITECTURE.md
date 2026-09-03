# Course Architecture

## Two products, one learning loop

The clean architecture deliberately separates **teaching** from **deployment canon**.

```text
GITHUB COURSE
= learn + understand + practise

ARC
= public deployable ecosystem blueprint/package

ATLAS
= ARC human + agent front door
```

GitHub Course teaches the operating model. The live public [`tbhrc/arc`](https://github.com/tbhrc/arc) repository owns the reproducible system definition and deployment contract.

## Why the split matters

If one repository tries to be both a student curriculum and the live deployment package, it quickly accumulates duplicated Skills, generated state, production automation, credentials concerns and implementation-specific machinery. That is exactly the complexity the September 2026 reset removed.

The correct boundary is:

> **Teach the concept here. Maintain the deployable system in ARC. Operate live capabilities in their real owners.**

## ARC — system codename and public package

**ARC** is the canonical codename for the current ecosystem and the name of its public deployment/reproduction repository: [`tbhrc/arc`](https://github.com/tbhrc/arc).

It is intentionally treated as a product/system name first rather than forcing an acronym expansion. The name is also used in the canonical Human + AI Operations Map as the `ARC blueprint`, and gives operators a short reference comparable to the old `FD0` shorthand without inheriting FolderDesk history.

`tbhrc/AOS` and FolderDesk are historical predecessor systems, not current deployment canon.

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
| Learn/understand/practise the ecosystem | `tbhrc/gh-course` |
| Deploy/reproduce/recover the architecture | [`tbhrc/arc`](https://github.com/tbhrc/arc) + Atlas |
| Reusable operating method | `tbhrc/skills` |
| External OSS/tool/platform research | `tbhrc/research` |
| Business/product truth | relevant domain repository/system |
| Privileged VPS/Mac/local runtime bridge | `tbhrc/ai-engine` only when required |
| Private/client files | approved private file store |
| Historical predecessor evidence | Git history / legacy repositories, not current canon |

## What ARC owns today

ARC is reproducible without becoming a dump of live company data.

The live public repository maintains:

```text
architecture + component manifest
repository/capability map
bootstrap order
configuration contracts
secret-name/placeholders only — never secret values
generic and reference deployment profiles
Atlas onboarding / agent front door
plan-first bootstrap tooling
verification gates
portable templates / seeded agent contracts
upgrade / recovery work as the product evolves
versioned releases and safe-harbour manifests as they are proven
```

ARC **references** canonical Skills and live domain owners rather than copying their mutable truth.

## Course role in reproduction

A new student/operator follows GitHub Course to understand why each ARC component exists and how to operate it safely. They then hand off to Atlas in the live ARC package for the actual deployment/reproduction flow.

```text
COURSE = comprehension + operator capability
ARC    = reproducibility + deployment contract
ATLAS  = guided entry + plan + correct next action
```

## The live handoff

```text
complete Course concepts
→ https://github.com/tbhrc/arc
→ Atlas (`/atlas` where supported)
→ describe new or existing business
→ inspect/reuse existing estate
→ generate deployment plan
→ explicit apply authority
→ bootstrap
→ verify
→ prove one real workflow
```

The Course must not copy ARC's scripts, manifests or Skill body merely to make this handoff work. Links preserve one owner and keep the teaching material current.

Programme owner: [`tbhrc/arc#5`](https://github.com/tbhrc/arc/issues/5).
