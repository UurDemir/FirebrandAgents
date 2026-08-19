Review current code changes with the Firebrand Agents pack before merge.

1. Follow skills `code-review-checklist`, `docs-contract`, and `escalate-requirements` if available. Read `docs/analysis.md` and `docs/technical-design.md` when they exist.
2. Collect the diff (`git status`, `git diff`, branch vs main if needed). Review only changed files plus necessary callers.
3. Invoke the `code-reviewer` subagent on that diff. Report **Critical / Warning / Suggestion** and an explicit merge recommendation (approve / request changes).
4. If auth, PII, uploads, secrets, or injection surfaces changed, also invoke `security-reviewer` and update `docs/security-review.md`.
5. If Angular/web journeys changed, recommend (or invoke) `playwright-tester` to refresh `docs/test-report.md`.
6. If Flutter journeys changed, recommend (or invoke) `flutter-tester` to refresh `docs/flutter-test-report.md`.
7. Flag scope vs analysis for `team-lead`. Missing product rules → **Blockers for PM** only; do not invent FRs.
8. End with files reviewed, findings by severity, test/lint evidence, and merge rec.
