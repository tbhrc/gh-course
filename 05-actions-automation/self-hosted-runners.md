# Self-Hosted GitHub Actions Runners — Beginner Lesson

## Objective

Understand what a GitHub Actions runner is, where a job physically executes, and the difference between a GitHub-hosted runner and a self-hosted runner before configuring one.

## Start With the Simplest Mental Model

A **runner is the computer that actually performs a GitHub Actions job**.

```text
event
→ workflow
→ job
→ runner
→ steps
→ result
```

GitHub decides that a job should run. The runner is the machine that receives that job and executes its commands.

## Two Basic Runner Models

### GitHub-hosted runner

```text
GitHub event
→ GitHub Action
→ temporary computer supplied by GitHub
→ commands execute there
→ result returns to GitHub
```

The machine belongs to GitHub and is created for the job.

### Self-hosted runner

```text
GitHub event
→ GitHub Action
→ your registered computer/server
→ commands execute on that machine
→ result returns to GitHub
```

The machine can be, for example:

- a Mac;
- a Windows PC;
- a Linux machine;
- a VPS;
- a server you control.

The key idea is not where GitHub itself runs. The key question is:

> **Which machine receives and executes the job?**

## Course Case Study — David's Mac

The course previously prepared a real experiment in Issue #137 to let GitHub drive a bounded job on David's Mac.

The intended control path is:

```text
David / ChatGPT / GitHub UI
        ↓
GitHub
        ↓
GitHub Actions workflow
        ↓
self-hosted runner registered on David's Mac
        ↓
command executes on the Mac
        ↓
run evidence returns to GitHub
```

This is why self-hosted runners can become a bridge between GitHub and machines that GitHub does not own.

## Important Security Boundary

A workflow file does **not** magically sandbox a self-hosted computer.

A self-hosted runner process can generally do whatever the operating-system account running that process is permitted to do.

Therefore:

```text
GitHub workflow permissions
≠
operating-system permissions of the runner machine
```

Least privilege must exist at both layers.

## Knowledge-Check Standard

Use four plausible options for learner checks in this lesson. Avoid giveaway distractors. Increase difficulty as the learner demonstrates understanding, and require reasoning when a correct letter alone could be guessed.

## Beginner Checkpoint 1

A GitHub Actions workflow sends a job to a self-hosted runner installed on your Mac.

Where do the job's shell commands actually execute?

**A)** Inside the repository's GitHub-hosted Actions environment, while the Mac only receives the result  
**B)** On the Mac, under the operating-system context of the runner process  
**C)** On whichever GitHub runner has the lowest current queue time, with the Mac used only as a fallback  
**D)** In a GitHub-managed container that is automatically mounted onto the Mac

Do not continue until you can explain *why* your answer is correct in one sentence.

## Beginner Checkpoint 2

A workflow contains:

```yaml
runs-on: [self-hosted, macOS, david-local]
```

Two self-hosted runners are online:

- Runner 1 has labels `self-hosted`, `macOS`, `david-local`.
- Runner 2 has labels `self-hosted`, `macOS`, `build-server`.

Which statement best describes what GitHub should do with that job?

**A)** Either runner is eligible because `self-hosted` and `macOS` are the only labels GitHub treats as routing constraints  
**B)** Runner 1 is eligible because a matching runner must satisfy the complete requested label set  
**C)** Runner 2 is preferred because custom labels are advisory metadata rather than routing criteria  
**D)** Both runners receive the job and GitHub keeps the result from whichever finishes first

## What Comes Next

After these checkpoints, learn in this order:

1. how a machine becomes registered as a runner;
2. how `runs-on` selects a runner;
3. what runner labels do;
4. what happens when no matching runner is online;
5. how filesystem and network access work;
6. why private/trusted repositories matter;
7. repository-level vs organisation-level runners;
8. how a Mac or VPS can become a controlled execution endpoint;
9. how to prove a job really executed on the intended machine.

## Related Course Evidence

- Module: `05-actions-automation/README.md`
- Real Mac experiment: GitHub Issue #137
- Current learner-driven course improvement: GitHub Issue #165
