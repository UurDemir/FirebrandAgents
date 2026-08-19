---
name: dotnet-backend
description: >-
  Implements ASP.NET Core backends with layered APIs, DTOs, validation, and
  EF Core. Use when building or changing .NET APIs, auth, OpenAPI contracts,
  or migrations in a Firebrand Agents project.
---

# .NET backend

**Match the repo** if conventions already exist. Otherwise use the defaults below.

## Defaults

- ASP.NET Core Web API, REST JSON
- Layering: API / Application / Domain / Infrastructure (or the repo’s equivalent)
- **DTOs at the boundary — not entities** on the wire
- FluentValidation or DataAnnotations on input DTOs
- `ProblemDetails` (or the repo’s equivalent) for errors; no stack traces or secrets in responses
- AuthZ on every sensitive endpoint (not UI-only)
- OpenAPI/Swagger enabled for FED/MFD
- EF Core migrations for schema changes; no ad-hoc prod SQL unless TL scoped it
- **No secrets** in source, appsettings committed files, or logs

## Implementation rules

1. Implement only the invoked WP. Read `docs/technical-design.md` and `docs/analysis.md`.
2. If business rules or contracts are missing: **Blockers for PM/TL** — do not invent.
3. Publish method, path, auth, request/response shapes in the reply.
4. Do not change Angular/Flutter apps unless explicitly coordinating a contract fix with FED/MFD.

## Security baseline

- Validate all inputs; parameterized data access
- Least-privilege roles/policies
- User secrets / env vars for connection strings and keys

## Done

- Scoped FRs implemented; clients can call documented shapes
- Migrations explained (risk: data loss / backfill)
- Ready for TL / `code-reviewer` / `security-reviewer` when auth or PII is touched
