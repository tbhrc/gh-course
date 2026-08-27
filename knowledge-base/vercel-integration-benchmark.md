# Vercel Integration Benchmark

**Governing Issue:** #27  
**Parent benchmark:** #23  
**Benchmark date:** 2026-08-27  
**Last verified:** 2026-08-27  
**Verified by:** Copilot Coding Agent (@copilot)

## Objective

Prove exactly what the connected Vercel GitHub integration can do with `tbhrc/github-course` and whether it provides useful deployment/status automation beyond GitHub Pages.

## Benchmark class

Deployment/service integration — not a coding-agent benchmark.

## Integration state classification

**Verdict: Account-authorised only. No project linked. No deployment capability proven.**

```
Installed / authorised at GitHub account level
≠
Project imported into Vercel
≠
Preview or production deployments active
```

## Evidence gathered

### GitHub-side integration permissions

David reported in the repository Settings → Integrations UI that Vercel was authorised with updated permissions for `tbhrc/github-course`. This is permission acceptance, not operational proof.

Source: `knowledge-base/pages-actions-integrations-control-plane.md` — Integrations section.

### Deployment and check evidence on this repository

- No Vercel deployment webhook deliveries were observed for recent commits or Pull Requests.
- No Vercel-generated check runs, status checks, deployment environments or PR comments were found on this repository.
- GitHub surfaces zero Vercel deployment entries for `tbhrc/github-course`.

This is consistent with the Vercel documentation model: **Vercel requires an explicit project import step before any deployment automation activates.** Accepting GitHub app permissions does not auto-import a repository or trigger any deployment.

### What would be required to activate Vercel deployments

1. Visit [vercel.com/new](https://vercel.com/new) and import `tbhrc/github-course` as a new Vercel project.
2. Configure framework preset (this is a static site; select "Other" or "Static").
3. Set the output directory (currently `/` — `index.html` in repo root).
4. Optionally configure a custom domain (not required for preview deployments).
5. After import, Vercel creates a webhook in the repository; every subsequent push/PR triggers a deployment.

### Conflict risk with GitHub Pages

Vercel and GitHub Pages can coexist without conflict **if**:
- Custom domain routing is kept on GitHub Pages (current: `tbhrc.github.io/github-course/`).
- Vercel uses its own `*.vercel.app` domain (default for free tier).
- No DNS changes point the existing Pages domain to Vercel.

Rule: Do not change custom domain DNS or disable GitHub Pages as part of this benchmark.

## Proof ladder

| Layer | Result | Evidence |
|---|---|---|
| Vercel GitHub App installed / account-authorised | ✅ Confirmed | Settings → Integrations reported by David; permissions updated |
| Repository-level permission granted | ✅ Confirmed | App authorised for `tbhrc/github-course` |
| Vercel project imported | ❌ Not done | No project link exists; no webhook in repository |
| PR receives Vercel preview deployment | ❌ Not proven | Requires project import first |
| Merge to `main` triggers production deployment | ❌ Not proven | Requires project import first |
| GitHub receives deployment/check/status evidence | ❌ Not proven | No Vercel check runs or deployment objects found |
| Vercel operates alongside GitHub Pages without conflict | ✅ Structurally safe | Different domains; no DNS conflict if defaults used |

## Architecture decision

### Recommended: Do not import. Keep GitHub Pages as the sole deployment surface.

**Rationale:**

1. This repository is a **course and governance system**, not a production web application that benefits from preview deployments.
2. GitHub Pages already serves the public front door at `tbhrc.github.io/github-course/`.
3. Adding Vercel would introduce a second parallel production URL with no clear course benefit.
4. Preview deployments on PRs are a useful Vercel pattern for product teams; for a documentation/course repository the marginal value is low.
5. The course already teaches GitHub Pages as the canonical static-site deployment model within GitHub's own platform.

**If Vercel is reconsidered in future**, the trigger to revisit should be a concrete requirement — for example, server-side functions, edge middleware, or a separate marketing site — that GitHub Pages cannot serve. At that point, follow the import steps above and record the deployment evidence in a follow-up benchmark.

### What this benchmark proved

> Vercel works exactly as documented: it requires deliberate project import before any deployment automation activates. Permission acceptance alone does nothing. This is correct and expected behaviour, not a gap.

## Safe benchmark rules applied

- Production routing and custom domains were not changed.
- GitHub Pages was not disabled.
- No auto-configuration of a duplicate production site was performed.
- The finding (project import required) is recorded as the result rather than triggering an unwanted deployment.

## References

- [Vercel: Deploy from GitHub](https://vercel.com/docs/git/vercel-for-github)
- [Vercel: Project Import](https://vercel.com/docs/deployments/overview)
- GitHub Pages current URL: `https://tbhrc.github.io/github-course/`
- Parent benchmark: `knowledge-base/executor-benchmark-framework.md`
- Integrations control plane: `knowledge-base/pages-actions-integrations-control-plane.md`
