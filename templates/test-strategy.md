# Test Strategy: [Project Name]

## Document control

| Field | Value |
|-------|-------|
| Status | Draft / Ready for execution |
| Author | qa-lead |
| Inputs | `docs/analysis.md`, `docs/uiux-design.md`, `docs/technical-design.md`, OpenAPI |

## Goals

- Map every Must FR to tests **including its service calls**
- Every in-scope API endpoint has applicable cases defined before E2E runs
- Playwright = web UI + network proof; Flutter widget mocks = all client error cases; BED = API integration where efficient

## Test pyramid

| Level | Owner agent | What |
|-------|-------------|------|
| API integration | BED | Endpoint × case (status, body, authz) |
| Unit | BED / FED / MFD | Domain, parsers, widgets |
| Web E2E + network | playwright-tester | SCR journeys; assert each HTTP call |
| Mobile widget + integration | flutter-tester | Mock all call cases; integration for critical paths |

## Service call matrix

List **every endpoint** used by in-scope web/mobile clients. Mark **Y** = must test, **N/A** = not applicable, **—** = defer (reason in notes).

| Endpoint | Method | Trigger (SCR/action) | Success | 400/422 | 401 | 403 | 404 | 409 | 5xx | Empty | Owner |
|----------|--------|----------------------|---------|---------|-----|-----|-----|-----|-----|-------|-------|
| /api/... | GET | SCR-001 load | Y | N/A | Y | Y | Y | N/A | Y | Y | BED + Playwright |

## Coverage map

| ID | FR / SCR | Service calls covered | Level | Owner | Priority |
|----|----------|----------------------|-------|-------|----------|
| T-001 | FR-001 / SCR-001 | GET /api/... | E2E + API | | Must |

## Playwright scope (web)

| ID | Journey | Calls asserted | Env |
|----|---------|----------------|-----|
| T- | | | test |

## Flutter scope (mobile)

| ID | Journey | Calls (mock / live) | Layer | Env |
|----|---------|---------------------|-------|-----|
| T- | | | Widget / Integration | |

## Environments & data

| Item | Value |
|------|-------|
| Base URL | `docs/devops.md` |
| Test users (roles) | e.g. admin, user, forbidden-role |
| Seed data for 404/409/validation | |

## Failure triage

| Class | Owner |
|-------|--------|
| API contract / status wrong | BED / TL |
| UI wrong, API OK | FED / MFD |
| Test bug | playwright-tester / flutter-tester |
| Env / seed | DO / QAL |

## Blockers

| ID | Question | Blocking? |
|----|----------|-----------|
| Q- | Missing role user, OpenAPI, error shape | Yes / No |

## Next invoke

```text
Use the backend-developer subagent to add API integration tests for rows marked BED in the service call matrix.
```

```text
Use the playwright-tester subagent to execute web T-… and prove every Y cell for Playwright columns in the service call matrix. Write docs/test-report.md.
```

```text
Use the flutter-tester subagent to execute mobile T-… with widget mocks for every error case and integration for Success paths. Write docs/flutter-test-report.md.
```
