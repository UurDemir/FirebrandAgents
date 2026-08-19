# Test Report: [Project Name]

## Document control

| Field | Value |
|-------|-------|
| Status | Pass / Fail / Blocked |
| Author | playwright-tester |
| Related | `docs/test-strategy.md`, `docs/analysis.md`, `docs/uiux-design.md` |
| Date | |

## Scope tested

| ID | Journey / screen | Source (FR/SCR) | Result |
|----|------------------|-----------------|--------|
| T-001 | | | Pass / Fail / Skip |

## Service call coverage

From `docs/test-strategy.md` matrix. **Pass** = test proved status + UI; **Gap** = applicable but untested; **N/A** = not applicable.

| Endpoint | Method | Case | Expected | Actual | Result |
|----------|--------|------|----------|--------|--------|
| /api/... | GET | Success | 200 + list | | Pass / Fail / Gap / N/A |
| /api/... | POST | 400 validation | 422 + field errors in UI | | |

### Summary

| Metric | Count |
|--------|-------|
| Cells Pass | |
| Cells Fail | |
| Cells Gap | |
| Cells N/A | |

## Environment

| Item | Value |
|------|-------|
| Base URL | |
| Browser(s) | |
| Branch / commit | |
| App start command | |

## Commands

```bash
# e.g. npx playwright test
```

## UI summary

| Metric | Count |
|--------|-------|
| Passed | |
| Failed | |
| Skipped | |

## Failures

| Test / call | Case | Symptom | Likely cause | Owner |
|-------------|------|---------|--------------|-------|
| | | | Product / Test / Env | FED / BED / TL |

## Gaps / not covered

-

## Blockers for PM / TL

-

## Next actions

1.
