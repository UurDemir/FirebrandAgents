---
name: playwright-e2e
description: >-
  Writes and runs Playwright web E2E tests that assert every in-scope HTTP/API
  call for success, validation, auth, and error cases. Use after Angular/web UI
  changes, when validating FR/SCR journeys and service calls, or when TL/QAL
  asks for browser and network evidence. Not for native Flutter.
---

# Playwright E2E (web + service calls)

Native Flutter → `flutter-test` / `flutter-tester`.

## Service-call coverage

1. Read **Service call matrix** in `docs/test-strategy.md` (or build from OpenAPI + Angular services).
2. For each endpoint × applicable case, prove outcome:
   - Use `page.waitForResponse` / `expect(response.status())` and UI assertions
   - Use `request` / APIRequestContext when UI alone cannot reach the case
   - Use `page.route()` only when documented or BED provides fixtures
3. Report every cell: **Pass / Fail / Gap / N/A** in `docs/test-report.md`.

Standard cases: Success, 400/422, 401, 403, 404, 409 (if applicable), 5xx, empty list, no request when client invalid.

## UI defaults

- `@playwright/test` — match repo
- Role/label/text locators; independent tests; secrets in env

## Workflow

1. App start + config (`docs/devops.md`, OpenAPI).
2. Inventory calls from strategy + FED services.
3. Write/run tests; update `docs/test-report.md` including **Service call coverage**.

## Failure triage

| Cause | Owner |
|-------|--------|
| Wrong status/body/contract | BED / TL |
| UI wrong but API OK | FED |
| Test bug | playwright-tester |
| Env / seed | DO / QAL / PM |

Do not weaken assertions to greenwash failing APIs.
