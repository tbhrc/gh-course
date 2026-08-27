# Public CMS Architecture

**Governing Issue:** #87  
**Verified:** 2026-08-27

## Purpose

Keep the GitHub Course public frontend aligned with canonical repository truth without requiring an agent to manually update the website after every backend change.

## Governing rule

> **The frontend consumes generated state from canonical backend sources. Generated artifacts are never edited as truth.**

## Canonical inputs

| Concern | Canonical source |
|---|---|
| course/version | `VERSION` |
| front-door narrative/navigation intent | `wiki/Home.md` |
| Student #1 current state | `students/david/progress.md` |
| current executor benchmark | `knowledge-base/executor-benchmark-framework.md` |

## Deterministic projection

```text
canonical Markdown / VERSION
→ scripts/build_public_state.py
→ site/public-state.json
```

`site/public-state.json` is a generated artifact. Agents do not maintain it.

The public Pages shell is sourced from:

```text
site/index.template.html
```

and projected to:

```text
index.html
```

The browser loads:

```text
site/cms.js
→ raw main/site/public-state.json
→ live learner + benchmark + version state
```

Therefore the public page does not contain an independently maintained learner/benchmark table.

## GitHub Actions

### Pull Request validation

`.github/workflows/validate-public-cms.yml`

- rebuilds public state from the proposed canonical sources;
- validates JSON/schema-required fields;
- fails before merge if the projection contract is broken.

### Main projection

`.github/workflows/generate-public-site.yml`

On relevant canonical-source changes it:

1. checks out `main`;
2. runs `scripts/build_public_state.py`;
3. copies `site/index.template.html` to generated `index.html`;
4. commits changed generated artifacts as `github-actions[bot]`;
5. explicitly requests a GitHub Pages build.

The explicit Pages-build request is required because GitHub documents that commits pushed by a workflow using `GITHUB_TOKEN` do not themselves trigger another workflow/Pages build.

## Self-healing behaviour

Generated paths are included in the workflow trigger.

If a human manually changes:

- `site/public-state.json`; or
- `index.html`;

the next normal user-authored merge/push affecting those paths causes the deterministic builder to overwrite the drift from canonical/template sources.

## Wiki integration

The Wiki uses the same architectural principle:

```text
students/david/progress.md
→ Publish Wiki Action
→ generated Student-Dashboard-David

knowledge-base/executor-benchmark-framework.md
→ Publish Wiki Action
→ generated AI-Executor-Benchmark
```

Stable narrative Wiki pages remain governed authored content.

## Agent contract

Agents should edit:

- canonical learner state;
- canonical benchmark state;
- stable narrative source;
- presentation template only when design/navigation changes.

Agents should **not** edit:

- generated `site/public-state.json` as factual truth;
- generated `index.html` as factual truth;
- generated Wiki current-state pages as factual truth.

## Reusable architecture

```text
canonical content/data
→ deterministic normalisation/build
→ generated machine-readable state
→ frontend presentation
```

For a directory/community project, this becomes:

```text
directory records / FAQs / groups / resources
→ GitHub Action build
→ public JSON/static pages
→ website
```

The website is a presentation layer, not a second database.
