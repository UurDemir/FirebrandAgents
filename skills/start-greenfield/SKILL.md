---
name: start-greenfield
description: >-
  Starts a greenfield product by creating docs/, invoking the Project Manager,
  waiting for client answers, then BA and UID+TL. Use when beginning a new
  .NET/Angular/Flutter app or when asked to scaffold a whole product.
---

# Start greenfield

Do **not** implement the whole product in one pass. Docs and client answers first; then scoped WPs.

## 1. Create `docs/` and project context

In the **application** workspace, create `docs/` if missing.

Copy structure from `E:\AI\MyAgents\templates` when that folder exists (plan, analysis, uiux, technical-design, data-design, devops, test-strategy, test-report, flutter-test-report, security-review, localization). If templates are absent, use the same headings.

If `.cursor/rules/project-context.mdc` does not exist, copy it from `E:\AI\MyAgents\templates\project-context.mdc` and ask the user to fill in key fields (source control, CI, hosting, auth, stacks, locales). This file is auto-loaded in every future chat so agents never need to re-ask.

Do not fill FR tables with invented rules.

## 2. Invoke PM first

```text
Use the project-manager subagent to create docs/project-plan.md for <product>.
Client wants: <goals>. Platforms: Angular web, Flutter mobile, .NET API (omit if out of scope).
Do not invent requirements. List Client questions.
```

## 3. Wait for client answers

Stop after PM’s **Client questions**. Only PM talks to the client. Apply answers into the plan, then continue.

## 4. Then BA

```text
Use the business-analyst subagent to create docs/analysis.md from docs/project-plan.md.
Resolve nothing by guessing — list Q- IDs for PM.
```

## 5. Then UID + TL (parallel)

```text
Use the uiux-designer subagent to create docs/uiux-design.md from docs/analysis.md.
```

```text
Use the team-lead subagent to create docs/technical-design.md and work packages
(DBE, BED, DO, FED, MFD, QAL, Playwright, flutter-tester).
```

## 6. Only then implement

Follow `firebrand-agents-delivery` order: DBE → BED+DO → FED/MFD → QAL → playwright-tester and/or flutter-tester → A11Y → SEC+CR → TL → TW. One WP per developer invoke. **PERF** only if NFRs require it.
