# AGENTS.md — Repository Router

<!-- ROUTER_SHARED_LIFECYCLE_START -->
**Organisation master:** https://github.com/tbhrc/workspace/blob/main/AGENTS.md — read current `main` first. It owns organisation-wide invariants.
**Repository overlay:** This Router may specialise ownership, execution risks and Fast Links for this repository, but must not restate, redefine or weaken the master. Route directly from local evidence; load conditional depth only when the task earns it.
**Skills MCP continuity:** In normal discovery, `find_skill(query)` returns candidates plus an opaque continuity handle. Reuse that handle only for the bounded runtime flow (`read_skill(uri, continuity)` → `read_skill_resource(uri, continuity)` as needed). Treat continuity as ephemeral runtime plumbing: never persist, configure, document or hand-author handle values; if a handle is invalid or expired, run `find_skill` again.
**Durable artifact discipline:** Write only what materially belongs in the canonical artifact; never append commentary, rationale, summaries, status notes, process history or other tail content unless the artifact itself requires it.
<!-- ROUTER_SHARED_LIFECYCLE_END -->

**Repository Fast Links:** [README](README.md) · [Architecture](ARCHITECTURE.md) · [Curriculum](CURRICULUM.md) · [Origin Story](ORIGIN-STORY.md) · [FolderDesk](https://github.com/tbhrc/folderdesk) · [Issues](https://github.com/tbhrc/gh-course/issues)

## Rules

**`main` keeps progress. KISSS keeps speed. Security protects real boundaries, not paperwork.**
