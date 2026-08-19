Run Playwright web E2E for this project using the Firebrand Agents pack.

1. Follow skills `playwright-e2e` and `docs-contract` if available. Playwright is **web-only** (typically Angular). Do not treat this as native Flutter coverage.
2. Read `docs/test-strategy.md` (QAL), `docs/analysis.md`, `docs/uiux-design.md`, and `docs/devops.md` / README for base URL and start order (API then web).
3. Invoke the `playwright-tester` subagent to add or update tests for scoped FR/SCR/`T-` IDs. **Prove every in-scope service call** from `docs/test-strategy.md` Service call matrix for every applicable case (Success, 400/422, 401, 403, 404, 5xx, empty, etc.) using network assertions (`waitForResponse`) and/or APIRequestContext. Mark Gap/N/A in the report when a case cannot run.
4. Run the suite. Write or update `docs/test-report.md`.
5. Triage failures: **product** vs **test** vs **env**. Fix test bugs; assign product bugs to FED/BED/TL; env issues to DO/QAL. Do not invent acceptance criteria.
6. End with commands run, UI counts, **service call matrix summary** (Pass/Fail/Gap/N/A), triaged failures, and report path.
