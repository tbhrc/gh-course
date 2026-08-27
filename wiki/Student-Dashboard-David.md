# Student Dashboard — David

> **Generated public surface — do not maintain current learner state here.**

The published Wiki page named **Student Dashboard — David** is rebuilt deterministically by `.github/workflows/publish-wiki.yml` from the canonical learner record:

[`students/david/progress.md`](https://github.com/tbhrc/github-course/blob/main/students/david/progress.md)

This source file exists only to document the projection contract for repository readers and agents.

## Architecture

```text
students/david/progress.md
= canonical current learner state

        ↓ Publish Wiki GitHub Action

Student-Dashboard-David
= generated reader-facing Wiki view
```

If David's current progress changes, update the canonical progress file. Do **not** manually duplicate the same current-state facts into this Wiki source file.

Historical assessments remain under:

[`students/david/assessments/`](https://github.com/tbhrc/github-course/tree/main/students/david/assessments)

The immutable baseline remains:

[`students/david/baseline-2026-08-27.md`](https://github.com/tbhrc/github-course/blob/main/students/david/baseline-2026-08-27.md)
