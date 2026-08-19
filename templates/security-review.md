# Security Review: [Project Name]

## Document control

| Field | Value |
|-------|-------|
| Status | Open / Critical closed / Ready for TL |
| Author | security-reviewer |
| Inputs | Diff, `docs/analysis.md` NFRs, `docs/technical-design.md` |
| Date | |

## Scope

| Surface | In scope? | Notes |
|---------|-----------|-------|
| AuthN / AuthZ | | |
| APIs touched | | |
| Angular / Flutter clients | | |
| Secrets / CI / Docker | | |
| PII / uploads | | |

## Findings

| ID | Severity | Location | Issue | Owner |
|----|----------|----------|-------|-------|
| | Critical / High / Medium / Low / Info | file or symbol | | BED / FED / MFD / DO / DBE |

## Checklist (what exists)

| Check | Result | Notes |
|-------|--------|-------|
| No hardcoded secrets | Pass / Fail / N/A | |
| AuthN where analysis requires it | | |
| AuthZ on sensitive APIs (not only UI) | | |
| Input validation / parameterized access | | |
| CORS / CSRF / cookie flags | | |
| Errors do not leak internals | | |
| File upload / path / SSRF if present | | |
| Mobile token storage if MFD in scope | | |

## Counts

| Severity | Count |
|----------|-------|
| Critical | |
| High | |
| Medium | |
| Low / Info | |

## Residual risk

-

## Blockers for PM

| ID | Question (threat / data ownership) | Blocking? |
|----|-------------------------------------|-----------|
| Q- | | Yes / No |

## TL gate

- [ ] No Critical open before release
- [ ] High assigned with WP IDs
