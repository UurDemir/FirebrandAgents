# Technical Design: [Project Name]

## Document control

| Field | Value |
|-------|-------|
| Status | Draft / Ready for build |
| Author | team-lead |
| Inputs | `docs/analysis.md`, `docs/project-plan.md`, `docs/uiux-design.md` |

## Architecture overview

[Short narrative + high-level components]

```
[Client apps] → [API] → [Services] → [Data store]
```

## Stack decisions

| Layer | Choice | Rationale |
|-------|--------|-----------|
| Backend | ASP.NET Core / C# | |
| Web frontend | Angular | |
| Mobile | Flutter | |
| Data | | |
| Auth | | |

## Solution structure

| Project / package | Responsibility |
|-------------------|----------------|
| | |

## API design

### Conventions

- Style: REST
- Versioning:
- Errors:
- Auth:

### Endpoints (initial)

| Method | Path | Purpose | Auth | Request | Response |
|--------|------|---------|------|---------|----------|
| GET | /api/... | | | | |

### Contracts

- OpenAPI / Swagger path:
- Shared DTO notes:

## Data design

| Store | Entity / table | Notes |
|-------|----------------|-------|
| | | |

## Security

- AuthN / AuthZ:
- Secrets:
- Input validation:
- CORS / mobile considerations:

## Cross-cutting

| Concern | Approach |
|---------|----------|
| Logging | |
| Config | |
| Errors | |
| Testing | |

## Work packages for developers

| ID | Owner | Description | Depends on | Done when |
|----|-------|-------------|------------|-----------|
| WP-DBE-01 | database-engineer | Schema + migrations | Analysis | `docs/data-design.md` |
| WP-BED-01 | backend-developer | API + DTOs | DBE | Contracts published |
| WP-DO-01 | devops-engineer | Local run / CI | BED skeleton | `docs/devops.md` |
| WP-FED-01 | frontend-developer | Web UI | UID + API | |
| WP-MFD-01 | mobile-flutter-developer | Mobile UI | Analysis + API | |
| WP-QAL-01 | qa-lead | Test strategy | Tech design | `docs/test-strategy.md` |
| WP-QA-01 | playwright-tester | Playwright E2E | FED + runnable app | `docs/test-report.md` Pass |
| WP-FLT-01 | flutter-tester | Flutter widget + integration | MFD + API | `docs/flutter-test-report.md` Pass or Blocked with env |
| WP-SEC-01 | security-reviewer | Security review | Implementation | No Critical open |

## Review checklist (TL)

- [ ] Matches `docs/analysis.md` scope
- [ ] Security-sensitive paths identified
- [ ] API contracts usable by FED/MFD
- [ ] No invented client requirements
