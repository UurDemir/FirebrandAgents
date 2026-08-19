# Flutter Test Report: [Project Name]

## Document control

| Field | Value |
|-------|-------|
| Status | Pass / Fail / Blocked |
| Author | flutter-tester |
| Related | `docs/test-strategy.md`, `docs/analysis.md`, `docs/uiux-design.md` |
| Date | |

## Scope tested

| ID | Journey / screen | Source (FR/SCR) | Layer | Result |
|----|------------------|-----------------|-------|--------|
| T-001 | | | Widget / Integration | Pass / Fail / Skip / Blocked |

## Service call coverage

From mobile rows in `docs/test-strategy.md`. Widget = mock; Integration = live API.

| Endpoint | Method | Case | Layer | Request verified | UI verified | Result |
|----------|--------|------|-------|------------------|-------------|--------|
| /api/... | GET | Success | Integration | | | Pass / Fail / Gap |
| /api/... | POST | 403 | Widget mock | | | |

### Summary

| Metric | Count |
|--------|-------|
| Cells Pass | |
| Cells Fail | |
| Cells Gap | |
| Cells Blocked (no device/API) | |

## Environment

| Item | Value |
|------|-------|
| Device / emulator | |
| Flutter / Dart | |
| Flavor / dart-define | |
| API base URL | |
| Branch / commit | |

## Commands

```bash
# e.g. flutter test
# e.g. flutter test integration_test
```

## Failures

| Test / call | Case | Symptom | Owner |
|-------------|------|---------|-------|
| | | | MFD / BED / TL |

## Gaps / not covered

-

## Blockers for PM / TL

-

## Next actions

1.
