# Diagnostic 001 — David

**Date:** 27 August 2026  
**Type:** Initial GitHub operator diagnostic  
**Status:** Completed

This file preserves the substance of the initial question-and-answer diagnostic. It is intentionally separate from the coach's interpreted baseline.

## Questions and David's Starting Answers

### 1. Git vs GitHub

**David's answer:** Git was understood as the local repository on the hard drive; GitHub as the cloud location where the repository is pushed and stored.

**Coach note:** practical local/remote intuition is useful; formal distinction requires correction because Git is the version-control system.

### 2. Repository

**David's answer:** a repository is like a box, hard drive or container holding a folder structure and files.

**Assessment:** broadly correct mental model.

### 3. Commit

**David's answer:** commits create version history so individual changes can be rolled back; multiple smaller commits are preferable to one giant commit. Initial rule: one commit per feature.

**Coach note:** strong motivation; refine to one logical change per commit. Commit is local Git history, not a transfer to GitHub.

### 4. Branch

**David's answer:** a branch is an isolated sideline for developing a feature and later merging it into `main`.

**Assessment:** correct foundation.

### 5. Merge

**David's answer:** once branch development is complete, merge the feature branch into the main branch.

**Assessment:** correct foundation.

### 6. Clone / Pull / Push

**David's answer:** clone copies an existing repository; pull updates local from the remote; push sends local updates to the cloud repository.

**Assessment:** broadly correct.

### 7. `main`

**David's answer:** normally the default main branch; has also encountered `master`.

**Assessment:** correct.

### 8. `.gitignore`

**David's answer:** used to keep runtime/build/local operational files and secrets from being tracked or uploaded.

**Coach note:** useful operational intuition; critical correction that `.gitignore` is not a security boundary and does not erase already committed secrets.

### 9. Pull Request

**David's answer:** initially described it as pulling from the web to local Git.

**Assessment:** misconception; major learning target.

### 10. GitHub Issue

**David's answer:** basically a task tracker.

**Assessment:** correct starting intuition, but no operational experience.

### 11–15. Workflow Tools

**David's answer:** no meaningful operational knowledge of labels, milestones, assignees, Projects, Issue-to-branch-to-PR workflows or closing keywords. Agents have done some of this work on his behalf.

### Revert vs Reset

**David's answer:** did not know the difference.

### `git blame`

**David's answer:** did not know.

### Diff

**David's answer:** has used diffs/work-tree history and finds them very useful for seeing how files changed between commits/states.

**Assessment:** demonstrated practical capability.

### Concurrent Changes

**David's answer:** did not know what would happen if three agents modified the same file simultaneously.

### GitHub Feature Awareness

**David's answer:** had heard of several GitHub features but had not operationally used Issues, Pull Requests, Projects, Actions, Wikis or similar platform features. GitHub had effectively been used as cloud storage plus repository browsing.

### GitHub Actions

**David's answer:** no knowledge.

### GitHub Projects

**David's answer:** never used.

### GitHub Wiki

**David's answer:** never used; guessed that Wiki may create linked/machine-readable knowledge or memory-like connections.

### AI Agents + GitHub

**David's answer:** uses Claude Code, Codex, ChatGPT and GitHub Copilot in development environments, particularly VS Code, but has not used GitHub-native agent workflows.

### Organisations

**David's answer:** already has GitHub organisations associated with both companies.

### Desired End State

**David's answer:** GitHub should become a foundational operating platform for **Talent Bridge**, **iMPLEMENTAi** and **FolderDesk** if its native capabilities prove as powerful and underutilised as expected.

## Diagnostic Conclusion

David is not a GitHub beginner in the sense of never having used repositories. He is an AI-assisted operator with useful Git foundations whose largest gap is the professional GitHub platform layer.

The curriculum should therefore avoid generic introductory developer training and concentrate on practical GitHub operation, governance, automation and AI-agent workflows.