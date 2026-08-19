# Firebrand Agents — Custom Cursor Subagent Pack

Reusable role-based Cursor **subagents**, **skills**, **rules**, and **commands** for multi-agent delivery on **ASP.NET Core**, **Angular**, and **Flutter**.

## Contents

| Path | Purpose |
|------|---------|
| [`agents/`](agents/) | 18 specialist subagents (copy into Cursor) |
| [`skills/`](skills/) | Auto-discovered skills (docs contract, stacks, review, greenfield) |
| [`rules/firebrand-agents-workflow.mdc`](rules/firebrand-agents-workflow.mdc) | Always-on docs contract and escalation |
| [`commands/`](commands/) | User commands: start project, review, run E2E / Flutter tests |
| [`templates/`](templates/) | Shared doc templates agents fill in target projects |
| [`docs/HOWTO-multi-agent-workflow.md`](docs/HOWTO-multi-agent-workflow.md) | How to run the pack together |
| [`docs/CATALOG.md`](docs/CATALOG.md) | What to use when (agents vs skills vs rules vs commands) |
| [`install.ps1`](install.ps1) | Copy agents, skills, commands, and rules into `~/.cursor/` |

## Agents (18)

| File | Cursor `name` | Role |
|------|---------------|------|
| `agents/project-manager.md` | `project-manager` | Client intake, plan, orchestration — **only role that talks to the client** |
| `agents/business-analyst.md` | `business-analyst` | Analysis, FR/NFR, open questions |
| `agents/team-lead.md` | `team-lead` | Tech design, work packages, sign-off review |
| `agents/uiux-designer.md` | `uiux-designer` | UI/UX design doc (SCR IDs) |
| `agents/database-engineer.md` | `database-engineer` | Schema, EF Core, `docs/data-design.md` |
| `agents/backend-developer.md` | `backend-developer` | ASP.NET Core APIs and contracts |
| `agents/devops-engineer.md` | `devops-engineer` | Local run, Docker, CI/CD, env vars |
| `agents/frontend-developer.md` | `frontend-developer` | Angular web UI |
| `agents/mobile-flutter-developer.md` | `mobile-flutter-developer` | Flutter mobile |
| `agents/qa-lead.md` | `qa-lead` | Test strategy, coverage map, triage |
| `agents/playwright-tester.md` | `playwright-tester` | Playwright E2E (**web only**) |
| `agents/flutter-tester.md` | `flutter-tester` | Flutter widget + integration_test (**mobile**) |
| `agents/accessibility-specialist.md` | `accessibility-specialist` | Keyboard, semantics, WCAG notes |
| `agents/security-reviewer.md` | `security-reviewer` | Auth, secrets, injection, PII |
| `agents/code-reviewer.md` | `code-reviewer` | Diff quality, merge recommendation |
| `agents/performance-engineer.md` | `performance-engineer` | Latency, queries, bundle/jank — **when NFRs** |
| `agents/technical-writer.md` | `technical-writer` | README and operator/API docs |
| `agents/localization-engineer.md` | `localization-engineer` | i18n, translation keys, locale files, RTL |

Default order: **PM → BA → UID+TL → DBE → BED+DO → FED/MFD → QAL → playwright-tester / flutter-tester → L10N → A11Y → SEC+CR → TL → TW**. Invoke PERF when NFRs demand it.

## Skills

| Skill folder | When |
|--------------|------|
| `skills/firebrand-agents-delivery/` | Routing table, docs paths, default agent order |
| `skills/escalate-requirements/` | Never invent FRs; Blockers for PM |
| `skills/docs-contract/` | `docs/` owners and stable IDs (FR/NFR/SCR/WP/T/Q) |
| `skills/dotnet-backend/` | ASP.NET layering, DTOs, ProblemDetails, EF |
| `skills/angular-frontend/` | Standalone, typed HTTP, SCR routes, a11y min |
| `skills/flutter-mobile/` | Feature-first, typed client, secure tokens |
| `skills/flutter-test/` | Widget + integration_test, `docs/flutter-test-report.md` |
| `skills/playwright-e2e/` | Role locators, independent tests, test-report |
| `skills/code-review-checklist/` | Diff review, Critical/Warning/Suggestion |
| `skills/start-greenfield/` | Create `docs/`, PM first, wait for client Qs |

Do **not** set `disable-model-invocation` — skills are meant for auto-discovery.

## Rules

| File | Apply |
|------|--------|
| `rules/firebrand-agents-workflow.mdc` | `alwaysApply: true` — docs contract, PM-only client Qs, stacks, no invented FRs |

**Per-project context:** Run `/init-project-context` (or `/start-project`) in your app repo to create `.cursor/rules/project-context.mdc`. This file stores source control, CI, hosting, auth, stacks, locales, and conventions so you never repeat yourself across chats.

## Commands

| File | Cursor command | Does |
|------|----------------|------|
| `commands/start-project.md` | `/start-project` | Greenfield: `docs/` + PM, then wait for client |
| `commands/review-changes.md` | `/review-changes` | CR (+ SEC / Playwright / Flutter tests when needed) |
| `commands/run-e2e.md` | `/run-e2e` | Playwright web E2E + `docs/test-report.md` |
| `commands/run-flutter-tests.md` | `/run-flutter-tests` | Flutter tests + `docs/flutter-test-report.md` |
| `commands/init-project-context.md` | `/init-project-context` | Scaffold `.cursor/rules/project-context.mdc` for per-project settings |

## Templates

| Template | Target in app repo |
|----------|--------------------|
| `templates/project-plan.md` | `docs/project-plan.md` |
| `templates/analysis.md` | `docs/analysis.md` |
| `templates/uiux-design.md` | `docs/uiux-design.md` |
| `templates/technical-design.md` | `docs/technical-design.md` |
| `templates/data-design.md` | `docs/data-design.md` |
| `templates/devops.md` | `docs/devops.md` |
| `templates/test-strategy.md` | `docs/test-strategy.md` |
| `templates/test-report.md` | `docs/test-report.md` |
| `templates/flutter-test-report.md` | `docs/flutter-test-report.md` |
| `templates/security-review.md` | `docs/security-review.md` |
| `templates/localization.md` | `docs/localization.md` |
| `templates/project-context.mdc` | `.cursor/rules/project-context.mdc` |

## Install (all your Cursor projects)

From this repo:

```powershell
Set-Location "E:\AI\MyAgents"
.\install.ps1
```

`install.ps1` copies:

- `agents\*.md` → `$env:USERPROFILE\.cursor\agents\`
- each `skills\*` folder → `$env:USERPROFILE\.cursor\skills\<name>\`
- `commands\*.md` → `$env:USERPROFILE\.cursor\commands\`
- `rules\*.mdc` → `$env:USERPROFILE\.cursor\rules\`

Invoke subagents with:

```text
Use the project-manager subagent to ...
```

## Install (one project / share with team)

```powershell
$src = "E:\AI\MyAgents"
Copy-Item "$src\agents\*.md" ".\.cursor\agents" -Force
Copy-Item "$src\rules\*.mdc" ".\.cursor\rules" -Force
# Skills: copy each skills\<name> folder to .\.cursor\skills\<name>\
Get-ChildItem "$src\skills" -Directory | ForEach-Object {
  $dst = ".\.cursor\skills\$($_.Name)"
  New-Item -ItemType Directory -Force -Path $dst | Out-Null
  Copy-Item "$($_.FullName)\*" $dst -Recurse -Force
}
Copy-Item "$src\commands\*.md" ".\.cursor\commands" -Force
```

Commit `.cursor/agents/` (and skills/rules/commands if you share them). Project agents override user agents when names collide.

## Optional: templates in a target app

When starting a new product repo, copy templates into `docs/`, or run `/start-project` / the `start-greenfield` skill so agents seed `docs/` themselves.

```powershell
New-Item -ItemType Directory -Force -Path .\docs | Out-Null
Copy-Item "E:\AI\MyAgents\templates\*.md" .\docs\ -Force
```

## Updating

Edit files under `E:\AI\MyAgents\`, then re-run `.\install.ps1` so `~/.cursor` stays in sync.

## Full workflow

See [docs/HOWTO-multi-agent-workflow.md](docs/HOWTO-multi-agent-workflow.md) and [docs/CATALOG.md](docs/CATALOG.md).
