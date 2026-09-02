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

### Two permission systems to keep separate

For a self-hosted runner, ask two different questions:

```text
1. What may this workflow do to GitHub?
   → controlled by GitHub workflow/token permissions

2. What may this runner process do on the host machine?
   → controlled by the operating-system account and host configuration
```

For example:

```yaml
permissions:
  contents: read
```

limits the workflow's GitHub token authority over repository contents. It does **not** by itself prevent the runner process from reading a local Mac file that its macOS account is allowed to read.

This is why a production self-hosted runner should normally use a deliberately restricted account rather than casually running with broad administrator or personal-user access.

### Dedicated runner account = a real security boundary

If the self-hosted runner runs as a dedicated non-admin operating-system account, it does **not** automatically inherit the permissions of the owner's normal personal account.

Example:

```text
personal account
→ can read ~/Documents/client-data.txt

runner account
→ cannot read that file

workflow executes as runner account
→ read attempt fails
```

Repository trust and GitHub authentication do not grant extra local filesystem rights. The runner receives only the host permissions of the account/process under which it runs, unless the host has separately been configured to grant more.

## How `runs-on` Routes a Job

A workflow job declares the runner requirements it needs through `runs-on`.

Example:

```yaml
runs-on: [self-hosted, macOS, david-local]
```

Think of this as an **AND requirement** for label matching:

```text
self-hosted
AND macOS
AND david-local
```

A runner that has only some of those labels is not eligible for that job. A matching runner must satisfy the complete requested label set. If more than one eligible runner is available, GitHub can assign the job to an available matching runner.

This lets an operator deliberately route work, for example:

```text
[self-hosted, macOS, david-local]
→ David's Mac class of runner

[self-hosted, Linux, production-vps]
→ production VPS class of runner
```

Labels are therefore not merely descriptive tags; they can form part of the execution-routing boundary.

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

## Beginner Checkpoint 3

A self-hosted Mac runner operates under a macOS account called `github-runner`. The workflow has:

```yaml
permissions:
  contents: read
```

The job then tries to read a local business file on the Mac. What most directly determines whether that local file can be read?

**A)** The workflow's `contents: read` permission, because GitHub permissions govern the whole runner session  
**B)** Repository visibility, because private repositories inherit local filesystem privileges  
**C)** The macOS permissions granted to the `github-runner` operating-system account  
**D)** Runner labels, because labels define routing and host filesystem privileges

## Beginner Checkpoint 4

A self-hosted Mac runner uses a dedicated non-admin macOS account. A workflow from a trusted private repository runs:

```bash
cat ~/Documents/client-data.txt
```

The file exists, but only the owner's normal personal macOS account can read it. What is the most likely outcome?

**A)** The command succeeds because trusted private repositories inherit the owner's local permissions  
**B)** The command fails because the runner process does not inherit the personal account's filesystem permissions  
**C)** GitHub temporarily elevates the runner account for authenticated workflows  
**D)** The command succeeds only if the workflow also has `contents: write`

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
