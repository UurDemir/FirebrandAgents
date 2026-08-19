# Data Design: [Project Name]

## Document control

| Field | Value |
|-------|-------|
| Status | Draft / Ready for BED |
| Author | database-engineer |
| Inputs | `docs/analysis.md`, `docs/technical-design.md` |

## Store choice

| Item | Value |
|------|-------|
| Engine | SQL Server / PostgreSQL / SQLite / other |
| Access | EF Core / other |
| Notes | Match repo; do not switch stores without TL/PM |

## Logical → physical

| Logical entity (analysis) | Table / collection | Notes |
|---------------------------|--------------------|-------|
| | | |

## Tables

| Table | PK | Unique | Indexes | Soft delete |
|-------|----|--------|---------|-------------|
| | | | | |

## Relationships

| From | To | Cardinality | On delete |
|------|----|-------------|-----------|
| | | | Restrict / Cascade / Set null |

## Columns of concern

| Table | Column | Type | PII | Notes |
|-------|--------|------|-----|-------|
| | | | Yes / No | UTC timestamps unless existing convention differs |

## Migrations

| ID | Purpose | Breaking? | Backfill |
|----|---------|-----------|----------|
| | | Yes / No | |

## Seed / test data

| Dataset | Purpose | Owner |
|---------|---------|-------|
| | | |

## Risks

| Risk | Impact | Mitigation |
|------|--------|------------|
| | | |

## Blockers for PM / TL

| ID | Question | Blocking? |
|----|----------|-----------|
| Q- | | Yes / No |

## Handoff to BED

- DbContext / bounded context:
- Mapping notes:
- Queries to avoid (N+1):
