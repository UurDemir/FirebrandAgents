---
name: docs-contract
description: >-
  Creates and keeps a shared docs/ contract with stable IDs for Firebrand Agents
  delivery. Use when starting a project, writing analysis/design/test docs, or
  when an owner might rewrite another agent's requirements.
---

# Docs contract

Create a `docs/` folder in the **application** repo (not only this pack folder). Fill from `E:\AI\MyAgents\templates` when present.

## Owned paths

| Path | Owner | Others may |
|------|-------|------------|
| `docs/project-plan.md` | PM | Read; suggest changes via PM |
| `docs/analysis.md` | BA | Read; **do not silently rewrite FRs/NFRs/BRs** |
| `docs/uiux-design.md` | UID | Read; FED/MFD note deviations in their reply |
| `docs/technical-design.md` | TL | Read; propose API/WP edits to TL |
| `docs/data-design.md` | DBE | BED implements; no silent schema meaning changes |
| `docs/devops.md` | DO | Read run/env notes |
| `docs/test-strategy.md` | QAL | Playwright / flutter-tester execute listed cases |
| `docs/test-report.md` | playwright-tester | Web E2E; QAL/TL triage |
| `docs/flutter-test-report.md` | flutter-tester | Mobile tests; QAL/TL triage |
| `docs/security-review.md` | SEC | Owners fix findings, do not edit verdicts away |

If a specialist needs a change to BA FRs: list it as **Blockers for PM** / question for BA. Do not replace FR text in place.

## Stable IDs (do not recycle)

| Prefix | Meaning | Example |
|--------|---------|---------|
| `FR-` | Functional requirement | `FR-001` |
| `NFR-` | Non-functional requirement | `NFR-001` |
| `SCR-` | Screen | `SCR-001` |
| `WP-` | Work package (`WP-BED-01`) | `WP-FED-02` |
| `T-` | Test case | `T-001` |
| `Q-` | Open question | `Q-001` |

Also used: `BR-` business rules. Keep IDs stable across doc versions; mark obsolete IDs **deprecated**, do not reuse numbers.

## Cross-links

- SCR rows cite source `FR-xxx`
- WP rows cite FR/SCR and done criteria
- `T-` rows cite FR/SCR
- Client questions stay `Q-` until PM resolves them

## Create on first run

If `docs/` is missing: create it and seed the artifacts in scope from templates. Do not invent FR text — leave placeholders and escalate to PM/BA.
