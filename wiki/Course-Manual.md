# Course Manual

A compact operating manual for the core GitHub patterns being taught in this course.

## 1. Start Work Properly

For substantive repository work:

```text
Issue
→ issue-linked branch
→ focused commits
→ Pull Request
→ checks/review
→ merge
→ Issue closes
```

The Issue explains **why**. The branch isolates **where**. Commits record **what changed**. The PR decides **whether it should enter the main line**.

## 2. Version Correctly

Git history and release versioning are different layers.

```text
commits = detailed change history
SemVer  = release meaning
tag     = exact version snapshot
Release = published version record
```

Use:

```text
MAJOR.MINOR.PATCH
```

Do not increment versions for every commit.

## 3. Classify Work With the Right GitHub Object

| Need | Use |
| --- | --- |
| Actionable work | Issue |
| Proposed repository change | Pull Request |
| Portfolio planning | Project |
| Open-ended conversation | Discussion |
| Automation | Actions |
| Versioned delivery | Tag + Release |
| Documentation handbook | Wiki |
| Static website | Pages |
| Governed knowledge | Repository Markdown |

## 4. Use Labels Deliberately

Labels should describe stable facets such as:

- type (`bug`, `feature`, `documentation`);
- area (`course-development`, `security`, `versioning`);
- priority where useful;
- status only when it is not already represented better elsewhere.

Avoid hundreds of decorative labels.

## 5. Treat AI Agents as Repository Workers

Give agents durable repository instructions and bounded work.

```text
Issue
→ repository instructions
→ agent work on branch
→ commits
→ PR
→ checks/review
→ merge
```

Do not rely on a chat session remembering repository rules.

## 6. Verify Current GitHub Behaviour

If a feature is current, changing, plan-dependent or uncertain:

1. check the course knowledge base;
2. verify official GitHub Docs/live behaviour where needed;
3. update durable knowledge if the finding is reusable.

## 7. Use Native GitHub Capability Before Rebuilding

Before creating another task tracker, documentation portal, automation engine or agent wrapper, ask:

> Does GitHub already provide this well enough?

## Quick Links

- [Course Handbook](Course-Handbook)
- [GitHub Power User](GitHub-Power-User)
- [Reference & Glossary](Reference-and-Glossary)
- [SOP & Operating Library](SOP-and-Operating-Library)
- [Home](Home)
