# Security Policy

## Reporting a vulnerability

Do **not** post suspected vulnerabilities, leaked credentials, tokens, exploit details, or other sensitive security information in public Issues, Discussions, pull requests, or comments.

Use GitHub's private vulnerability reporting route for this repository from the **Security** tab when the **Report a vulnerability** option is available. That route creates a private security advisory visible only to the repository's authorised maintainers and the reporter.

If the private-reporting option is not available, stop before disclosing technical details publicly and contact the repository owner through an existing private, authenticated business channel so a private reporting route can be established.

## Credential or secret exposure

If a credential may have been exposed:

1. **Revoke or rotate it first.** Do not wait for a repository cleanup.
2. Remove the exposed value from the current working surface.
3. Assess whether it entered Git history, Actions logs, artifacts, caches, external systems, or downstream integrations.
4. Rewrite or remove historical exposure only where required after rotation/revocation.
5. Review the cause and add the smallest preventive control that would stop recurrence.

Deleting a file or commit alone does not make an exposed credential safe again.

## Scope

This policy covers the GitHub Professional Operator course repository, including its documentation, GitHub Actions, Pages/Wiki publishing, Project automation, and AI-agent integration surfaces.

Security reports should focus on vulnerabilities in this repository or its configured automation. General GitHub platform vulnerabilities should be reported through GitHub's own security channels.

## Disclosure and response

Please allow maintainers a reasonable opportunity to investigate and remediate a valid report before public disclosure. Do not include real credentials, unnecessary personal data, or confidential third-party information in test cases or reports.

The repository follows least-privilege, reviewable-change, and evidence-based security practices. Security fixes remain subject to appropriate Issue/branch/PR/check/review governance unless emergency containment requires an explicitly documented exception.