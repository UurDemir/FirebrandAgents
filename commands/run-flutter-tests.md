Run Flutter mobile tests for this project using the Firebrand Agents pack.

1. Follow skills `flutter-test` and `docs-contract` if available. This is **native Flutter** (widget + integration_test / Patrol). Do not use Playwright here; do not treat `docs/test-report.md` as mobile coverage.
2. Read `docs/test-strategy.md` (mobile rows), `docs/analysis.md`, `docs/uiux-design.md` mobile screens, and `docs/devops.md` for API URL / flavors.
3. Invoke the `flutter-tester` subagent to add or update tests for scoped FR/SCR/`T-` IDs. **Prove every in-scope API call** from the Service call matrix: widget tests with mocks for error/auth/validation cases; integration for Success (and 401 if feasible). Assert request method/path/body on critical writes. Mark Gap/N/A/Blocked in the report.
4. Run `flutter test` and integration/Patrol as the repo documents. If no emulator/device, run widget tests and mark integration **Blocked** with setup steps — do not invent a pass.
5. Write or update `docs/flutter-test-report.md`.
6. Triage failures: **product** vs **test** vs **env**. Fix test bugs; assign product bugs to MFD/BED/TL. Do not invent acceptance criteria.
7. End with commands run, **service call matrix summary**, triaged failures, and report path.
