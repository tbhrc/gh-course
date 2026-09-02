# Security Policy

## Reporting a vulnerability

Do **not** post suspected vulnerabilities, leaked credentials, tokens, exploit details, or other sensitive security information in public Issues, Discussions, pull requests, or comments.

Use GitHub's private vulnerability reporting route for this repository from the **Security** tab when the **Report a vulnerability** option is available. That route creates a private security advisory instead of a public Issue; access is limited to the reporter and authorised repository participants or collaborators who have access to that advisory.

If the private-reporting option is not available, stop before disclosing any technical detail. If the repository owner or organisation profile publishes a private contact route, use that. Otherwise, open a normal public Issue containing only a request such as **"Private security reporting channel needed"**. Do not include vulnerability details, reproduction steps, affected paths, secret values, screenshots or exploit information. Ask the maintainer to establish an authenticated private channel, then continue the report only there.

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

## Course learning

The live policy is also a course case study. Module 08 teaches the operating model, evidence standard and student exercise in [`08-security-governance/vulnerability-reporting-and-secret-response.md`](08-security-governance/vulnerability-reporting-and-secret-response.md).

## Disclosure and response

Please allow maintainers a reasonable opportunity to investigate and remediate a valid report before public disclosure. Do not include real credentials, unnecessary personal data, or confidential third-party information in test cases or reports.

The repository follows least-privilege, reviewable-change, and evidence-based security practices. Security fixes remain subject to appropriate Issue/branch/PR/check/review governance unless emergency containment requires an explicitly documented exception.
