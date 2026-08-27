# Course Manual

This is the practical field manual for operating GitHub professionally inside the course.

Use the **Handbook** for the full learning system and mental model. Use this **Manual** when you need to decide what to do next and how to operate the GitHub object correctly.

---

## 1. Start Every Substantive Change Correctly

Default course workflow:

```text
Issue
→ issue-linked branch
→ focused commits
→ Pull Request
→ review/checks
→ documentation-integrity check
→ merge
→ downstream verification
→ Issue closes
```

### Before touching files

Ask:

1. Is there already a governing Issue?
2. Does it state objective, scope and acceptance criteria?
3. Is this small enough to fit an existing Issue, or does it deserve its own?
4. Which branch should contain the work?
5. Which reader/student surfaces may change as a result?

For substantive work, chat alone is not durable authority.

---

## 2. Pick the Right GitHub Object

| If you need to… | Use |
| --- | --- |
| record actionable work | Issue |
| break a large outcome into children | Sub-issues |
| show one task blocks another | Dependencies |
| propose a repository change | Pull Request |
| plan across many Issues/PRs | Project |
| discuss before committing to work | Discussion |
| automate event/schedule/manual work | Actions |
| publish a version | Tag + Release |
| store governed canonical docs | Repository Markdown |
| publish a browsable handbook | Wiki |
| publish a static website | Pages |
| enforce repository policy | Rulesets / branch protection |
| route path-specific review | CODEOWNERS |
| connect an external service/agent | GitHub App / Integration |

Do not create a custom system until you have checked whether a native GitHub object already solves the problem.

---

## 3. Issue Operating Recipe

### Create

A good Issue contains:

```text
objective
context/evidence
scope
acceptance criteria
owner/routing signals when useful
```

### Keep the body useful

The body is the work contract, not necessarily a live dashboard forever.

If current truth later belongs in a maintained canonical file, link to that file instead of manually keeping a volatile matrix in the Issue body.

### Use labels deliberately

Good labels represent stable facets such as:

- work type;
- area/workstream;
- priority where needed;
- routing signal.

Avoid a label for every imaginable state when Projects already provides a better structured field.

### Close correctly

Close when acceptance criteria are actually satisfied.

```text
Project Status = Done
≠
Issue acceptance criteria automatically complete
```

---

## 4. Branch Operating Recipe

Use a non-main branch for substantive changes.

Helpful patterns:

```text
issue-71-course-integrity-rebuild
feature/add-search
fix/pages-entry
```

Branch naming should make the purpose/Issue discoverable without becoming a novel.

### Before creating a branch

- confirm current `main`;
- confirm no existing branch already owns the work;
- avoid creating multiple competing branches for the same task unless intentional.

---

## 5. Commit Operating Recipe

A commit should represent one logical change.

Good:

```text
Build full Pull Requests control-gate module
```

Weak:

```text
changes
```

Do not confuse:

```text
commit = record change in Git history
push   = send commits to remote
```

For agent work, inspect both commit author and committer when provenance matters.

---

## 6. Pull Request Operating Recipe

### Open the PR

Include:

- outcome-oriented title;
- what/why summary;
- governing Issue;
- verification/evidence;
- known risk or incomplete work.

### Link Issues correctly

Use:

```text
Refs #63
```

when the Issue should remain open.

Use:

```text
Closes #71
Fixes #123
Resolves #456
```

only when merge should close the Issue.

Closing keywords are workflow commands.

### Review the actual diff

Never approve an AI-generated PR because the summary sounds convincing.

Inspect:

1. changed files;
2. additions/deletions;
3. scope creep;
4. factual claims;
5. permissions/workflows;
6. secrets;
7. checks;
8. provenance;
9. Issue/close semantics.

### Draft vs ready

Keep a PR draft while implementation is incomplete. Mark ready when it is genuinely at the review gate.

### Merge decision

```text
mergeable
≠
approved
```

Merge only when acceptance evidence is sufficient.

---

## 7. Projects Operating Recipe

Current course Project design:

**GitHub Course — Execution & Mastery**

### Minimum field set

| Field | Values / use |
| --- | --- |
| Status | Backlog / Ready / In progress / Blocked / Review / Done |
| Workstream | Course / Learning / AI Integration / Knowledge Base / Publishing / Release |
| Priority | P0 / P1 / P2 / P3 |
| Type | Lesson / Exercise / Benchmark / Documentation / Infrastructure / Release |
| Target date | Only for genuine time-bound work |

### Minimum useful views

1. **Operating Board** — grouped by Status.
2. **Master Table** — dense triage/planning.
3. **AI Benchmarks** — executor/integration work.
4. **David Learning** — learner mastery work.
5. **Roadmap** — only after real dates exist.

### Key distinctions

```text
Issue / PR = underlying work object
Project    = control/planning collection
Field      = metadata
View       = saved lens
```

and:

```text
Issue state = open
Project Status = Blocked / Review / In progress
```

### Labels vs Project fields

Use labels for repository-native classification that should travel with the Issue.

Use Project fields for portfolio planning metadata.

Do not mirror everything in both.

[Open Projects module →](https://github.com/tbhrc/github-course/tree/main/04-projects)

---

## 8. Actions Operating Recipe

### Read a workflow

Start with:

```text
on:
permissions:
jobs:
runs-on:
steps:
```

Ask:

- What event starts it?
- What can `GITHUB_TOKEN` do?
- Which runner executes it?
- Which secrets are required?
- What is the intended output?
- What evidence proves completion?

### Debug by layer

```text
trigger
→ workflow run
→ job
→ step
→ credential/auth
→ downstream service/agent
→ output
```

Common signals:

| Signal | Likely issue |
| --- | --- |
| no run | trigger/workflow |
| step skipped | condition/filter |
| empty secret | setup/scope/name |
| HTTP 401 | invalid credential |
| HTTP 403 | authenticated but forbidden |
| HTTP 429 | quota/rate/billing |
| agent accepted/no PR | agent runtime/session |
| PR/check failure | implementation/CI |

Do not rerun randomly. Find the first broken boundary.

### Permissions

```text
Allow all actions/reusable workflows
≠
unlimited GITHUB_TOKEN permissions
```

Use least-privilege workflow `permissions:`.

---

## 9. Secrets and Credentials

A secret stores a real credential securely.

```text
secret name
= lookup name

secret value
= actual token/key
```

Do not paste secrets into:

- Issues;
- PRs;
- repository files;
- workflow logs;
- public chat.

### `.gitignore` warning

`.gitignore` does not remove secrets already committed to history.

If exposed:

1. rotate/revoke;
2. assess exposure;
3. clean history where justified;
4. add prevention.

---

## 10. Release and Versioning Recipe

### Decide release meaning

```text
MAJOR.MINOR.PATCH
```

- PATCH — backwards-compatible fix;
- MINOR — backwards-compatible new capability;
- MAJOR — incompatible/breaking change after stable 1.0.0 conventions apply.

For `0.y.z`, the project is still in active initial development.

### Keep these aligned

```text
VERSION
CHANGELOG.md
Git tag vX.Y.Z
GitHub Release
```

Do not bump a release merely because many commits happened.

---

## 11. Wiki Operating Recipe

Course model:

```text
wiki/*.md in main repository
→ Issue / branch / PR / merge
→ Publish Wiki Action
→ github-course.wiki.git
→ live Wiki
```

Use Wiki for:

- reader handbook;
- navigation;
- student dashboard;
- SOP/course reference;
- learning breakthroughs.

Do not make Wiki the only canonical store for volatile verified GitHub facts when repository Markdown is the governed authority.

After changing `wiki/*.md`, verify the Publish Wiki workflow after merge.

---

## 12. GitHub Pages Operating Recipe

Pages is the static public website layer.

Course model:

```text
main / root
→ index.html
→ GitHub Pages deployment
→ public course front door
```

Remember the course failure pattern:

```text
green deployment
≠
correct entry page
≠
good user experience
```

Diagnose separately:

1. publishing source;
2. entry file;
3. information architecture;
4. actual reader journey.

The public site should route to maintained canonical/live surfaces rather than duplicate fast-changing benchmark/student data.

---

## 13. AI Agent Operating Recipe

### Before launch

1. Create a dedicated governing Issue.
2. Require root `AGENTS.md` to be read.
3. Define exact scope/output.
4. Define stop condition.
5. Determine whether direct assignment or Actions/workflow dispatch is the correct architecture.
6. Confirm permissions/plan/policy/credential boundary.

### During execution

Observe:

```text
trigger/assignment
→ agent task/session
→ branch
→ commit
→ PR
```

Do not claim success before the durable GitHub object exists.

### After PR

Review the first snapshot before correcting it.

Benchmark quality should reflect what the executor originally delivered, not the human-cleaned result.

### Current benchmark authority

[Open the AI Executor Benchmark & Leaderboard →](https://github.com/tbhrc/github-course/blob/main/knowledge-base/executor-benchmark-framework.md)

Current bounded ranking:

```text
ChatGPT Web
→ OpenAI Codex
→ Anthropic Claude
→ GitHub Copilot
→ Google Jules
```

Gemini CLI/API remains pending governed completion after authenticated inference hit quota.

---

## 14. Review Agent Provenance

When it matters, inspect separately:

- Issue actor;
- App performing the action;
- workflow actor;
- agent task/session;
- branch owner/name;
- commit author;
- commit committer;
- PR author;
- reviewer identity.

Do not use a broad statement such as “Codex did it” unless the evidence actually shows Codex produced the relevant work.

---

## 15. Security / Governance Quick Review

Before merging a sensitive change ask:

- Does it change workflow permissions?
- Does it expose/consume secrets?
- Does it add third-party Actions/dependencies?
- Does it allow an agent to write/merge/deploy?
- Does it change branch/ruleset policy?
- Does it execute untrusted Issue/PR content?
- Does it create a bypass path?
- Are required checks/reviews still intact?

Use stronger governance for higher-risk changes.

---

## 16. Source-of-Truth Recipe

When two surfaces disagree:

1. identify the canonical source;
2. verify current GitHub evidence;
3. correct the canonical source first;
4. update the minimum affected Wiki/Pages summary/link;
5. merge normally;
6. verify publication.

Course authority examples:

| Current truth | Canonical source |
| --- | --- |
| AI executor scores | `knowledge-base/executor-benchmark-framework.md` |
| David current state | `students/david/progress.md` |
| David starting state | immutable baseline |
| module lesson content | numbered module README/files |
| verified platform facts | `knowledge-base/` |
| public navigation | `index.html` |
| Wiki published content | governed `wiki/*.md` source |

Use the [Course Documentation Integrity SOP](https://github.com/tbhrc/github-course/blob/main/sops/course-documentation-integrity.md).

---

## 17. Documentation Integrity Gate

For a material course/student change, review:

```text
canonical state
→ progress/evidence
→ Wiki reader surfaces
→ Pages route if relevant
```

Do not update everything mechanically. Update only surfaces whose meaning changed.

Common stale smells:

- “pending” module with substantive content;
- old 403 status after successful agent execution;
- old Skill version in Wiki;
- Issue body called “current matrix” while canonical file is newer;
- “current focus” differs across progress/Home/dashboard;
- new major surface missing from navigation.

---

## 18. GitHub × FolderDesk Decision Recipe

For any overlapping capability ask:

1. What is the natural system of record?
2. Is the work repository/change-centric?
3. Is it broader file/business context?
4. Does GitHub already provide a mature native feature?
5. Can one system link to the canonical object instead of copying it?
6. What would be duplicated if both own the state?

Classify:

```text
GitHub owns
FolderDesk owns
Integrate
Retire / replace duplication
```

Avoid dual-write.

---

## 19. Fast Operator Checklists

### Before work

- [ ] governing Issue exists
- [ ] `AGENTS.md` read by agent
- [ ] correct branch
- [ ] scope understood
- [ ] canonical source identified

### Before PR

- [ ] meaningful commits
- [ ] only intended files changed
- [ ] no secrets
- [ ] tests/checks run where relevant
- [ ] Issue linkage correct

### Before merge

- [ ] diff reviewed
- [ ] factual claims verified
- [ ] checks/reviews acceptable
- [ ] close keyword correct
- [ ] documentation-integrity gate run

### After merge

- [ ] change on `main`
- [ ] Issue closure correct
- [ ] Wiki/Pages/Release/Actions verification where relevant
- [ ] learner progress/evidence updated if material

---

## 20. Current Hands-On Priority for David

**Projects.**

Use the real course backlog to create:

**GitHub Course — Execution & Mastery**

The exercise is complete only when David has actually operated the Project and can explain:

- Issue vs Project item;
- field vs view;
- Board vs Table vs Roadmap;
- Issue state vs Project Status;
- label vs Project field;
- why minimal fields are preferable.

[Open Projects material →](https://github.com/tbhrc/github-course/tree/main/04-projects)

---

## Quick Links

- [Course Handbook](Course-Handbook)
- [Course Modules](Course-Modules)
- [Course Materials](Course-Materials)
- [Student Dashboard — David](Student-Dashboard-David)
- [AI Control Plane](AI-Control-Plane)
- [Knowledge Base](Knowledge-Base)
- [Exercises & Assessments](Exercises-and-Assessments)
- [SOP & Operating Library](SOP-and-Operating-Library)
- [GitHub Power User](GitHub-Power-User)
- [Reference & Glossary](Reference-and-Glossary)
- [Home](Home)
