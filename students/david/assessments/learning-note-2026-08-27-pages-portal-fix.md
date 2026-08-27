# Learning Note — GitHub Pages Was Live but Not Useful

**Student:** David  
**Date:** 27 August 2026  
**Governing Issue:** #32  
**Original implementation:** Issue #30 / PR #31

## Trigger

After GitHub Pages had been enabled and was publicly available, David used the site as a student/external reader and identified a practical failure:

> The public page existed, but it was effectively stuck on the repository README and did not provide a usable path into the course Wiki, dashboard, handbook, manual, knowledge base and other learning surfaces.

This was not a deployment failure. It was a **product/navigation failure**.

## David's Requirement

David explicitly reframed the objective from:

```text
publish the repository on Pages
```

into:

```text
make the public page a functional website
where a student or external user can access everything in one place
```

He also challenged whether the Pages source should move away from `main` if that was required.

## Diagnosis

The source did not need to move.

Pages was already publishing successfully from:

```text
main / (root)
```

The repository had no dedicated root `index.html`, so the public entry experience behaved like repository documentation rather than a designed course portal.

The professional distinction learned is:

```text
Pages source
≠
Pages entry file
≠
website information architecture
```

## Verified Fix

Issue #30 governed the change.

PR #31 added a dedicated root `index.html` that became the public course portal and linked to:

- Wiki Home;
- Student Dashboard — David;
- Course Handbook;
- Course Manual;
- Course Modules;
- Course Materials;
- Knowledge Base;
- Epiphanies;
- AI Control Plane;
- Exercises & Assessments;
- GitHub Power User;
- SOP library;
- glossary;
- Issues, PRs, Actions and releases.

The Pages deployment then completed successfully for build, status reporting and deployment.

No Pages source change was required.

## Student Outcome

### Demonstrated

- David tested the public course as an actual user instead of accepting deployment status as proof of quality.
- David recognised that a technically published site was not yet a functional course website.
- David identified missing navigation to the Wiki/dashboard/manual/handbook as an operational defect.
- David correctly raised source architecture as a possible cause rather than assuming the current setup was sacred.
- David required the fix itself to be preserved in the Skill, knowledge base, course and student outcome for future learners.

### Professional Model Introduced

```text
green deployment
≠
correct entry page
≠
good user experience
```

A professional operator verifies all three.

### Still To Demonstrate Unaided

- diagnose the same Pages symptom from repository/settings evidence without coach assistance;
- explain when to keep the publishing source unchanged versus move it;
- independently choose between `index.html`, `index.md` and `README.md` for a new Pages site.

## Reusable Teaching Insight

Future students should be shown the failure state before the answer where practical:

1. publish a Pages site;
2. inspect what entry page appears;
3. ask whether the site is genuinely usable;
4. inspect the configured source and top-level entry files;
5. design the intended front door;
6. verify deployment **and** navigation.

## Key Lesson

> **A website can be successfully deployed and still fail its user. GitHub power use includes information architecture, not only infrastructure status.**
