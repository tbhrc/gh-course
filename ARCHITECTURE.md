# Course Architecture

## Two products, one learning loop

The clean architecture deliberately separates **teaching** from **deployment canon**.

```text
GITHUB COURSE
= learn + understand + practise

FolderDesk
= public deployable ecosystem blueprint/package

ATLAS
= FolderDesk human + agent front door
```

GitHub Course teaches the operating model. The live public [`tbhrc/folderdesk`](https://github.com/tbhrc/folderdesk) repository owns the reproducible system definition and deployment contract.

## Why the split matters

If one repository tries to be both a student curriculum and the live deployment package, it quickly accumulates duplicated Skills, generated state, production automation, credentials concerns and implementation-specific machinery. That is exactly the complexity the September 2026 reset removed.

The correct boundary is:

> **Teach the concept here. Maintain the deployable system in FolderDesk. Operate live capabilities in their real owners.**

## FolderDesk — system codename and public package

**FolderDesk** is the canonical name for the current ecosystem's public deployment/reproduction package and its repository: [`tbhrc/folderdesk`](https://github.com/tbhrc/folderdesk). It was developed under the working codename **ARC**; that name is retired and `tbhrc/arc` now redirects to `tbhrc/folderdesk`.

It is treated as a product/system name first, no forced acronym expansion. The canonical Human + AI Operations Map refers to the `FolderDesk blueprint`.

The internal operating-system lineage that FolderDesk packages is **AOS** (Agent Operating System): `tbhrc/aos-core` and `tbhrc/aos-runtime`. The uppercase `tbhrc/AOS` repository is an early conceptual predecessor, not current canon. See the [naming canon](https://github.com/tbhrc/skills/blob/main/governance/references/folderdesk-aos-naming.md).

## FolderDesk mental model

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
| Deploy/reproduce/recover the architecture | [`tbhrc/folderdesk`](https://github.com/tbhrc/folderdesk) + Atlas |
| Reusable operating method | `tbhrc/skills` |
| External OSS/tool/platform research | `tbhrc/research` |
| Business/product truth | relevant domain repository/system |
| Privileged VPS/Mac/local runtime bridge | `tbhrc/ai-engine` only when required |
| Private/client files | approved private file store |
| Historical predecessor evidence | Git history / legacy repositories, not current canon |

## What FolderDesk owns today

FolderDesk is reproducible without becoming a dump of live company data.

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

FolderDesk **references** canonical Skills and live domain owners rather than copying their mutable truth.

## Course role in reproduction

A new student/operator follows GitHub Course to understand why each FolderDesk component exists and how to operate it safely. They then hand off to Atlas in the live FolderDesk package for the actual deployment/reproduction flow.

```text
COURSE = comprehension + operator capability
FolderDesk    = reproducibility + deployment contract
ATLAS  = guided entry + plan + correct next action
```

## The live handoff

```text
complete Course concepts
→ https://github.com/tbhrc/folderdesk
→ Atlas (`/atlas` where supported)
→ describe new or existing business
→ inspect/reuse existing estate
→ generate deployment plan
→ explicit apply authority
→ bootstrap
→ verify
→ prove one real workflow
```

The Course must not copy FolderDesk's scripts, manifests or Skill body merely to make this handoff work. Links preserve one owner and keep the teaching material current.

Programme owner: [`tbhrc/folderdesk#5`](https://github.com/tbhrc/folderdesk/issues/5).
