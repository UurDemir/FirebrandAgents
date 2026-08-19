# Firebrand Agents catalog — what to use when

Short guide for choosing an **agent**, **skill**, **rule**, or **command**. Details: [HOWTO-multi-agent-workflow.md](HOWTO-multi-agent-workflow.md).

## Prefer this order of tools

1. **Rule** — already on (`firebrand-agents-workflow`): docs paths, PM-only client Qs, no invented FRs, .NET/Angular/Flutter.
2. **Command** — if you want a canned prompt (`/start-project`, `/review-changes`, `/run-e2e`).
3. **Skill** — how-to for the current task (routing, stack, escalation). Auto-discovered; you can also name it.
4. **Agent** — a specialist that owns an artifact or a WP. Invoke with **full context** (paths + IDs).

## When to use which agent

| Situation | Agent |
|-----------|--------|
| New intake, status, client questions | `project-manager` |
| Turn goals into FR/NFR/journeys | `business-analyst` |
| Screens, IA, visual tokens | `uiux-designer` |
| Architecture, WPs, sign-off | `team-lead` |
| Schema, EF migrations | `database-engineer` |
| ASP.NET APIs / DTOs | `backend-developer` |
| Run locally, Docker, CI, env names | `devops-engineer` |
| Angular UI | `frontend-developer` |
| Flutter app | `mobile-flutter-developer` |
| What to test / coverage map | `qa-lead` |
| Browser E2E (not native mobile) | `playwright-tester` |
| Flutter widget / integration tests | `flutter-tester` |
| Keyboard, labels, contrast | `accessibility-specialist` |
| Auth, secrets, injection, PII | `security-reviewer` |
| Diff quality, merge rec | `code-reviewer` |
| Latency / N+1 / bundle / jank | `performance-engineer` |
| README, how to run, API notes | `technical-writer` |
| i18n, translation keys, locale files, RTL | `localization-engineer` |

Skip agents whose platform is out of scope. **PERF** only when NFRs (or slowness) need it. **L10N** only when the product supports multiple languages.

## When to use which skill

| Situation | Skill |
|-----------|--------|
| Who next, docs table, invoke pattern | `firebrand-agents-delivery` |
| Greenfield: docs/ then PM, wait, BA, UID+TL | `start-greenfield` |
| Tempted to guess a business rule | `escalate-requirements` |
| Creating or editing `docs/` IDs | `docs-contract` |
| Building .NET API | `dotnet-backend` |
| Building Angular | `angular-frontend` |
| Building Flutter | `flutter-mobile` |
| Writing/running Playwright | `playwright-e2e` |
| Writing/running Flutter tests | `flutter-test` |
| Reviewing a diff | `code-review-checklist` |

Skills teach the **parent** (and specialists) how to work. They do not replace invoking the owner agent for the artifact.

## When to use which command

| Command | Use when |
|---------|----------|
| `/start-project` | New product or empty `docs/`; **stops for client questions** |
| `/review-changes` | Before merge; CR + SEC/Playwright/Flutter tests if needed |
| `/run-e2e` | After web UI changes; writes `docs/test-report.md` |
| `/run-flutter-tests` | After Flutter changes; writes `docs/flutter-test-report.md` |
| `/init-project-context` | Set up `.cursor/rules/project-context.mdc` so agents remember project settings |

## Rule (always)

`rules/firebrand-agents-workflow.mdc` — use the docs contract, only PM asks the client, stacks are .NET/Angular/Flutter, do not invent FRs.

## Do not

- Invent FRs or rewrite BA analysis silently
- Ask the client as BED/FED/MFD/QA — escalate to PM
- Treat Playwright green as Flutter sign-off
- Implement the entire product in one agent pass
