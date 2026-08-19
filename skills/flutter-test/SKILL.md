---
name: flutter-test
description: >-
  Writes and runs Flutter widget and integration tests that verify every in-scope
  API/service call for success, validation, auth, and error cases. Reports in
  docs/flutter-test-report.md. Use after Flutter UI changes or when TL/QAL asks
  for mobile service-call evidence. Not for Angular Playwright.
---

# Flutter tests (UI + service calls)

Playwright does not cover native mobile.

## Service-call coverage

1. Read **Service call matrix** (mobile) in `docs/test-strategy.md`.
2. **Widget tests (mock):** inject mock HTTP/repository; for each user action assert request (method, path, body) and UI for Success, 400/422, 401, 403, 404, 5xx, empty responses.
3. **Integration_test:** real API for critical Success (+ 401 logged-out if feasible).
4. Report each cell: **Pass / Fail / Gap / N/A** in `docs/flutter-test-report.md`.

## Defaults

- Match repo (Patrol, flavors)
- Keys/semantics; independent tests
- No emulator → widget + mocks run; integration **Blocked** with steps

## Workflow

1. Inventory calls from MFD data layer + strategy.
2. Implement matrix rows; run tests.
3. Write report with **Service call coverage**.

## Failure triage

| Cause | Owner |
|-------|--------|
| Contract / API | BED / TL |
| Client wrong | MFD |
| Test bug | flutter-tester |
| Env | DO / QAL |
