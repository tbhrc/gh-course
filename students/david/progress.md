# Progress — David

## Current Status

**Course stage:** Stage 2 — Crash Course  
**Current module:** 01 — GitHub Mental Model, transitioning into 02 — Issues  
**Baseline:** `baseline-2026-08-27.md`

## Completed

- Stage 1 diagnostic completed.
- Core Git mental model assessed.
- GitHub platform knowledge gaps identified.
- Key corrections taught:
  - Git vs local repository;
  - commit vs push;
  - Pull Request vs `git pull`;
  - `.gitignore` vs actual secret protection;
  - introductory revert vs reset;
  - introductory `git blame`;
  - introductory merge-conflict concept.
- Course repository created and converted into the live learning environment.
- David explicitly established the repository operating rule that substantive repo changes must begin with a GitHub Issue and then be completed from that Issue.
- Issue #1 became the first live implementation of the course workflow.
- Semantic Versioning introduced and documented as a mandatory companion standard to professional Git/GitHub operation.

## Demonstrated Strengths

- Repository mental model.
- Branching concept.
- Commit history and rollback motivation.
- Clone / pull / push basics.
- Diff inspection.
- AI-assisted development familiarity.
- Strong preference for traceability, history and durable operating evidence.
- **New evidence:** David independently recognised that repository work should not be changed ad hoc from chat; he corrected the coach and required an Issue-first workflow before further repo development.
- **New versioning insight:** David identified that his agents were not consistently logging or applying version control and explicitly raised versioning as an operational gap that must be standardised.
- **New SemVer progress:** David now understands that professional release versions use `MAJOR.MINOR.PATCH`, that the components communicate change significance rather than acting as decimal counters, and that Semantic Versioning should be taught alongside GitHub operation.

## Current Priority Gaps

1. Complete hands-on Issue operation personally: create, classify and close an Issue with linked implementation evidence.
2. Pull Requests as the control gate.
3. Projects.
4. Actions and automation.
5. Complete hands-on release/tag/version workflow.
6. Security and governance.
7. GitHub-native AI-agent workflows.
8. Knowledge architecture: repo files vs docs vs Wiki vs Discussions.
9. GitHub × FolderDesk boundary and integration architecture.

## Current Evidence — Issue #1

David demonstrated the **reasoning** behind Issue-first operation by requiring:

```text
Issue → task execution → repository change
```

The coach then implemented the fuller workflow under Issue #1:

```text
Issue #1
→ issue-linked branch
→ commits
→ Pull Request
→ merge
→ close
```

This is evidence of conceptual progress, but it is **not yet evidence that David can personally operate the entire workflow unaided**.

## Current Evidence — Versioning Discussion

David's starting intuitive version-number model was approximately:

```text
0.1 → ... → 0.99 → 1.0 → ... → 1.99 → 2.0
```

This remains recorded as a learning checkpoint, not as mastery.

The correction being learned is Semantic Versioning:

```text
MAJOR.MINOR.PATCH
```

where the components describe the type of change rather than acting as a decimal counter. In particular, `1.10.0` validly follows `1.9.0`; there is no requirement to reach `.99`.

David now understands the distinction conceptually and explicitly recognised Semantic Versioning as mandatory knowledge for serious GitHub operators.

### Partial recall evidence — 27 August 2026

David recalled **MAJOR** and **MINOR** but temporarily forgot the third term, **PATCH**.

This is recorded as useful evidence rather than treated as failure: the model has been learned, but terminology is not yet automatic.

Detailed learning evidence: `assessments/learning-note-2026-08-27-semver.md`.

David also correctly identified the broader operating problem: agents need explicit rules for both **change history** and **release versioning**, rather than relying on ad hoc chat execution.

## Evidence Rule

Do not mark a capability complete merely because David has read a lesson or watched the coach perform it. Mark it complete only when he can explain it accurately and/or perform the relevant operation in GitHub.

Mistakes, misconceptions, corrections and partial recall are valuable learning evidence. Preserve them so later assessments can show the actual path from baseline to mastery.

## Next Recommended Step

David should complete `exercises/first-issue-workflow.md` on a small real improvement. A later release exercise should require him to choose a SemVer bump, update the changelog, create a tag and publish a GitHub Release without being given the answer first.
