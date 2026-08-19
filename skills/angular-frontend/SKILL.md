---
name: angular-frontend
description: >-
  Implements Angular UIs with standalone components, typed HTTP, and screen
  routes from the UID inventory. Use when building or changing Angular apps,
  forms, routing, or API integration in a Firebrand Agents project.
---

# Angular frontend

**Match the repo** if it already uses NgModules or a house style. Otherwise:

## Defaults

- **Standalone** components
- Typed models + dedicated `HttpClient` services (no untyped `any` payloads)
- One route per UID screen (`SCR-xxx`) when practical
- Reactive forms for non-trivial forms
- States: empty / loading / error / success as specified in `docs/uiux-design.md`

## API stubs

Use real contracts from BED/OpenAPI when they exist.

`TODO(api)` stubs **only** when `team-lead` explicitly allows them. Label them in code and in the reply. Do not invent request/response shapes.

## Accessibility minimum (touched flows)

- Form controls have labels
- Errors are visible and associated with fields
- Images: meaningful `alt` or decorative empty alt
- Keyboard reachability and visible focus on primary actions

Do not claim WCAG conformance unless A11Y/NFR scoped it.

## Rules

1. Read UID design + tech design + contracts; list blockers for PM/TL.
2. Implement the scoped WP only. Do not unilaterally change backend contracts.
3. Note deviations from UID in the reply.
4. After UI journeys change, recommend `qa-lead` then `playwright-tester`.

## Done

- In-scope SCRs match UID flows and analysis themes
- HTTP matches documented contracts (or stubs are explicit)
- Ready for TL review
