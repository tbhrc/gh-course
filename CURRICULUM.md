# Curriculum

## Curriculum objective

This course does not teach GitHub feature-by-feature for its own sake.

It teaches the smallest set of GitHub, AI-agent, Skills, Research and execution concepts needed to understand and reproduce **ARC** safely.

The learning sequence follows the same progression that produced the current ecosystem:

```text
understand GitHub objects
→ make work durable
→ control change
→ coordinate work
→ automate execution
→ secure permissions/runtimes
→ add agents + Skills
→ research recurring capability gaps
→ understand the complete operating loop
→ hand off to Atlas and reproduce ARC
```

## Learning sequence

| # | Module | ARC capability learned | Prove |
|---:|---|---|---|
| 0 | Start Here | Understand Course vs ARC vs live owner boundaries | Explain what belongs in Course, ARC, Skills, Research, AI Engine and domain repos |
| 1 | Foundations | Repository/commit/branch mental model | Trace a real change from working state to durable Git history |
| 2 | Issues | Durable work/control plane | Write one actionable Issue with owner, scope and acceptance evidence |
| 3 | Branches & Pull Requests | Safe isolated change + review/integration | Complete one Issue → branch → PR → merge cycle |
| 4 | Projects | Cross-work visibility without duplicated truth | Build/inspect one portfolio view and explain its ownership boundary |
| 5 | Actions & Runners | Deterministic automation + execution location | Explain event → workflow → job → runner → steps and choose hosted vs self-hosted correctly |
| 6 | Security & Governance | Least privilege + trusted execution | Identify unsafe secret, permission, branch and self-hosted-runner patterns |
| 7 | AI Agents & Skills | Skills-first agent capability architecture | Choose instructions vs Skill vs agent vs Action/hook vs MCP/API for real needs |
| 8 | Research & Capability Discovery | Problem-to-platform capability improvement | Expand one recurring local problem into symptom → workflow → capability → platform/system research |
| 9 | Capstone | Full ARC understanding + live deployment handoff | Complete one durable improvement, then use Atlas to produce and verify a plan-first ARC reproduction exercise |

## The hidden curriculum

Every module should reinforce these ARC doctrines:

1. **Skills first.** Reusable HOW belongs in the canonical Skill layer.
2. **One thing, one owner.** Avoid parallel mutable truth.
3. **Issue-first when work becomes durable.**
4. **Use the smallest sufficient GitHub/native capability.**
5. **Agents are only as useful as their tools, permissions and execution routes.**
6. **Research recurring friction instead of repeatedly patching symptoms.**
7. **Testing is not adoption.** Benchmark before promotion.
8. **AI Engine is an exception path for privileged runtime gaps, not the normal execution layer.**
9. **Verify real state.** Never confuse a plan, green check or installed integration with proven capability.
10. **Promote reusable learning.** Improvements should compound across the ecosystem.
11. **Course teaches; ARC deploys.** A learner must know when to leave this repository and use the live deployment owner.

## Progress rule

Do not equate reading with mastery. A learner advances when they can explain the concept, demonstrate the relevant GitHub/ARC action or evidence, and identify the correct ownership boundary.

## Current-facts rule

GitHub features, plans, previews and AI surfaces change. For volatile claims, verify current official GitHub documentation or live repository behaviour rather than treating course prose as timeless API truth.

## Reproduction outcome

By the end of the course, the student should be able to open the live public [`tbhrc/arc`](https://github.com/tbhrc/arc) repository, enter through Atlas and understand:

- why each ARC component exists;
- which component owns which truth;
- how work moves through Issues/branches/PRs;
- how agents acquire reusable methods through Skills;
- how Research introduces new capabilities;
- when normal execution is enough;
- when a privileged runtime bridge is justified;
- how Atlas converts business context into a deployment plan;
- why mutation is explicit rather than automatic;
- what evidence proves the resulting system is healthy;
- how to prove one real workflow after bootstrap.

The Course does not require every learner to provision a production organisation. The capstone may use a safe sandbox/test target, but the learner must use the **real ARC/Atlas contract**, not an invented classroom copy.
