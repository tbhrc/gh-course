# Vercel Integration Benchmark

**Governing Issue:** #27  
**Parent benchmark:** #23  
**Benchmark date:** 2026-08-27  
**Last verified:** 2026-08-27

## Objective

Prove what the connected Vercel GitHub integration can do with `tbhrc/github-course` and whether it adds useful deployment automation beyond GitHub Pages.

## Verdict

**Account-authorised only. No Vercel project was imported, so no Vercel deployment capability was activated or proven.**

```text
installed / authorised
≠
project imported into Vercel
≠
preview or production deployment active
```

## Evidence

- Vercel permissions were authorised for the repository.
- No Vercel deployment/check/status/comment evidence was observed on the repository.
- Vercel requires an explicit project import before Git-triggered deployment automation starts.
- GitHub Pages was already the working public deployment surface for this course.

## State classification

| State | Result |
|---|---|
| Account-authorised | ✅ |
| Repository permission granted | ✅ |
| Vercel project imported | ❌ |
| PR preview deployment proven | ❌ |
| Production deployment proven | ❌ |

## Architecture decision

**Do not import this course into Vercel. Keep GitHub Pages as the sole deployment surface.**

Reasons:

1. This repository is a course/governance system rather than a production web application requiring preview environments.
2. GitHub Pages already provides the required public front door.
3. A second deployment surface would add complexity without a current benefit.
4. Revisit Vercel only if a concrete requirement appears that GitHub Pages cannot serve, such as server-side functions, edge middleware, or a separate product/marketing site.

## Result

This benchmark is complete as an architecture decision even though a Vercel deployment was deliberately not activated. The useful lesson is that integration permission alone is not operational proof and that optional infrastructure should not be enabled without a real requirement.
