---
name: firebrand-agents-delivery
description: >-
  Routes Firebrand Agents work through shared docs paths and the default specialist
  order. Use when starting, continuing, or handing off multi-agent delivery in
  a .NET / Angular / Flutter project, or when choosing which subagent to invoke next.
---

# Firebrand Agents delivery routing

Subagents start with a **clean context**. Every invoke must include: goal, WP/FR/SCR IDs, and `docs/` paths. Do not assume prior chat is visible.

## Docs paths (create `docs/` if missing)

| Artifact | Path | Owner |
|----------|------|-------|
| Project plan | `docs/project-plan.md` | `project-manager` |
| Analysis | `docs/analysis.md` | `business-analyst` |
| UI/UX design | `docs/uiux-design.md` | `uiux-designer` |
| Technical design | `docs/technical-design.md` | `team-lead` |
| Data design | `docs/data-design.md` | `database-engineer` |
| DevOps | `docs/devops.md` | `devops-engineer` |
| Test strategy | `docs/test-strategy.md` | `qa-lead` |
| Test report (web) | `docs/test-report.md` | `playwright-tester` |
| Test report (Flutter) | `docs/flutter-test-report.md` | `flutter-tester` |
| Security review | `docs/security-review.md` | `security-reviewer` |
| Localization | `docs/localization.md` | `localization-engineer` |

Optional: `docs/a11y-review.md` (A11Y), `docs/perf-notes.md` (PERF), `docs/review-notes.md` (CR).

Templates: `E:\AI\MyAgents\templates` when present.

## Default agent order

1. **PM** `project-manager` — plan, client Qs only
2. **BA** `business-analyst` — FRs/NFRs
3. **UID + TL** `uiux-designer` and `team-lead` (parallel after analysis)
4. **DBE** `database-engineer` — persistence
5. **BED + DO** `backend-developer` and `devops-engineer` (API + runnable env)
6. **FED / MFD** `frontend-developer` and/or `mobile-flutter-developer`
7. **QAL** `qa-lead` — strategy, then **playwright-tester** (web) and/or **flutter-tester** (mobile)
8. **L10N** `localization-engineer` (when multi-language in scope)
9. **A11Y** `accessibility-specialist` (web)
10. **SEC + CR** `security-reviewer` and `code-reviewer`
11. **TL** sign-off, then **TW** `technical-writer` as needed

**PERF** `performance-engineer` only when NFRs demand it (or slowness is reported).

Skip a role only when that platform/artifact is out of scope. Do not implement the whole product in one pass.

## Rules

- Only **PM** talks to the client. Other agents list **Blockers for PM**.
- Playwright covers **web** (typically Angular). Native Flutter is covered by `flutter-tester`, not Playwright.
- Match existing repo conventions; pack defaults are ASP.NET Core, Angular standalone, Flutter.

## Invoke pattern

```text
Use the <agent-name> subagent to <scoped task>.
Context: docs/analysis.md FR-…, docs/technical-design.md WP-…, docs/uiux-design.md SCR-….
Done when: <acceptance>. Do not invent requirements; escalate gaps to project-manager.
```
