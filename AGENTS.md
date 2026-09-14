# AGENTS.md — Repository Router

<!-- ROUTER_SHARED_LIFECYCLE_START -->
**KISSS:** Execute authorised work through the shortest capable path. Route from the action required, not words or topics in the request.
**Progressive depth:** Do not preload documentation, Skills, memory, policies or orchestration. If direct execution is insufficient or ownership is materially unclear, open [Conditional Routing](https://github.com/tbhrc/skills/blob/main/templates/AGENTS.routing-depth.md) and follow only the smallest relevant branch.
**Canon:** GitHub `main` is mutable canon. Write durable corrections or mutations to the owning repository; repository boundaries represent ownership, not artificial internal information walls.
**Friction:** Issues and process machinery are optional. Do not stop useful authorised work for ceremony. Do not narrow permissions, runtime reach or tools without a concrete current boundary. Do not add machinery unless it materially reduces time, work or maintenance.
**Boundaries:** Human approval is reserved for root/super-admin authority changes, destructive or irreversible actions, spend, legal/compliance commitments, external private-data disclosure, or material external/client commitments. Never expose secrets or unnecessary private data.
**Concurrency:** Keep one active writer only where concurrent writes could actually collide.
**Stop:** Verify the requested outcome once, reconcile durable state only when applicable, then stop.
<!-- ROUTER_SHARED_LIFECYCLE_END -->
Read this first. Follow only the link needed for the task; do not preload documentation.

**Core Fast Links:** [Workflow](https://github.com/tbhrc/skills/tree/main/github-agent-workflow) · [LIB1 Librarian](https://github.com/tbhrc/skills/tree/main/ecosystem-librarian) · [Document Strategy](https://github.com/tbhrc/skills/blob/main/governance/strategies/strategy-cold-start-context-reduction.md) · [Founder Output](https://github.com/tbhrc/skills/blob/main/github-agent-workflow/SKILL.md#founder-facing-output) · [Anti-Friction Security](https://github.com/tbhrc/skills/blob/main/governance/policies/real-boundary-security-and-friction.md) · [Sniper](https://github.com/tbhrc/skills/blob/main/human-ai-operations-map/references/ai-sniper-entry-map.md)

**Repository Fast Links:** [README](README.md) · [Architecture](ARCHITECTURE.md) · [Curriculum](CURRICULUM.md) · [Origin Story](ORIGIN-STORY.md) · [FolderDesk](https://github.com/tbhrc/folderdesk) · [Issues](https://github.com/tbhrc/gh-course/issues)

## Route

- **Known owner + bounded task** → execute with the most-specific Skill/tool.
- **Owner unclear** → use Sniper once, then execute.
- **Prior cross-session/cross-agent context could materially change the work, you are about to ask the user to repeat material context, or established internal structure/ownership/policy/process is requested but its canonical source/path is unknown** → use [Hindsight Memory](https://github.com/tbhrc/skills/tree/main/hindsight-shared-memory-operator) for focused recall/canon discovery when available; for unknown canon, **search existing GitHub canon first** (Hindsight semantic discovery or direct GitHub search), then fetch/read current owner truth. **Do not reconstruct established canon from local fragments before this search.** Skip for self-contained, current-file-only or direct current-state work where the owner/path is already known.
- **Any task that will create, file, move, rename or supersede a durable document/output** → run [LIB1](https://github.com/tbhrc/skills/tree/main/ecosystem-librarian) first for canonical placement, semantic vocabulary and material inbound/outbound Fast Links; then hand execution to the owning Skill/workflow. LIB1 is not an approval gate.
- **Ordinary authorised work** → Level 0 Direct.
- **Creating/updating/reviewing a Skill** → use [Skill Builder](https://github.com/tbhrc/skills/tree/main/github-skill-builder) after LIB1 resolves placement/identity; it owns Skill lifecycle and loads Document Strategy/Policies conditionally.
- **Creating/materially restructuring non-Skill agent-consumed operational documentation** → after LIB1 resolves placement/semantics/links, use Workflow + [Document Strategy](https://github.com/tbhrc/skills/blob/main/governance/strategies/strategy-cold-start-context-reduction.md) only for substantive document architecture.
- **Genuine specialist/parallel need** → orchestrate only when one direct stream is insufficient.
- **Actual consequential boundary** → apply only the control that protects that boundary.

## Rules

- **Issues are optional continuity.** Reuse or create an Issue only when it materially improves continuation, handoff, coordination, durable decision history or founder visibility; do not stop authorised work for Issue or label ceremony.
- **Founder scan speed.** Follow the [Workflow founder-facing output convention](https://github.com/tbhrc/skills/blob/main/github-agent-workflow/SKILL.md#founder-facing-output): keep status concise, and render material existing GitHub repositories, Issues, PRs, Skills, canonical files/documents and navigable folders as descriptive clickable links when stable URLs exist; use raw/code paths only for proposed/nonexistent paths, literal commands/identifiers, or when the raw path itself is under discussion.
- **Friction masquerading as security is prohibited.** Use purpose-fit authority sufficient for the intended function; do not narrow access or add credential/approval layers without a concrete current boundary.
- **Security and compliance controls must earn their place.** Do not narrow repository scope, permissions, runtime reach or tool access merely because “least privilege”, isolation, hardening, or a generic security/compliance convention suggests it. First prove the concrete current threat, obligation or boundary, the material gap in existing controls, and that the proposed restriction is the smallest effective control. Where that proof exists, implement the control; where it does not, retain authenticated purpose-fit authority sufficient for the intended function.
- Human approval is reserved for genuine consequential boundaries: root/super-admin authority changes, destructive/irreversible actions, spend, legal/compliance commitments, private-data disclosure or material external/client commitments.
- Preserve unrelated newer work and avoid concurrent mutation collisions where they are real.
- Never expose secrets or unnecessary private data.
- Verify the requested outcome once, record continuity only when useful, then stop.

**`main` keeps progress. KISSS keeps speed. Security protects real boundaries, not paperwork.**
