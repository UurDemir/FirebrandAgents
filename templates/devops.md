# DevOps: [Project Name]

## Document control

| Field | Value |
|-------|-------|
| Status | Draft / Ready for QA |
| Author | devops-engineer |
| Inputs | `docs/technical-design.md`, README |

## Environments

| Name | Purpose | Base URL / notes |
|------|---------|------------------|
| dev | Local developer | |
| test | Playwright / Flutter QA | |
| prod | Production | Pending PM if unspecified |

## How to run locally

| Step | Command | Notes |
|------|---------|-------|
| 1. API | | Port: |
| 2. Web (Angular) | | Port: |
| 3. Mobile (Flutter) | | Optional |
| 4. DB | | |

**Start order:** API (and DB) before web. Playwright needs documented base URL. Flutter integration tests need API URL / flavor; widget tests can run without a device.

## Env vars (names only — no secret values)

| Name | Used by | Required | Notes |
|------|---------|----------|-------|
| | API / Web / CI | Yes / No | |

Never commit `.env` secrets, certificates, or connection strings with passwords.

## Containers / compose

| Artifact | Path | Purpose |
|----------|------|---------|
| Dockerfile | | |
| compose | | |

## CI / CD

| Pipeline | Trigger | Jobs |
|----------|---------|------|
| | PR / main | build / test / Playwright / Flutter test |

## Health checks

| Service | Path | Expected |
|---------|------|----------|
| API | /health | 200 |

## Secrets store

| Environment | Mechanism | Pending PM? |
|-------------|-----------|-------------|
| dev | User secrets / local env | |
| prod | | Yes / No |

## Blockers for PM

| ID | Question | Blocking? |
|----|----------|-----------|
| Q- | Hosting, domains, secrets store | Yes / No |
