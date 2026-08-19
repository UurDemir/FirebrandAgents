---
name: code-review-checklist
description: >-
  Reviews a diff against work-package scope and analysis using
  Critical/Warning/Suggestion severity and an explicit merge recommendation.
  Use after a developer WP, before merge, or when TL asks for a code review.
---

# Code review checklist

Read-only unless the invoke prompt asks for fixes.

## 1. Collect the diff

- `git status`, unstaged/staged diff, and branch vs main when needed
- Review **changed files** plus necessary callers — not the whole repo

## 2. Scope vs analysis

- Matches the invoked WP and `docs/analysis.md` / tech design
- Flag scope creep for `team-lead`
- No invented FRs; leftover `TODO(api)` on paths claimed done is a finding

## 3. Review lens

- Logic bugs and edge cases
- Validation, authz, error handling, no secrets
- Layering (API vs domain vs UI); DTOs not entities on the wire
- Tests covering the change, or an explicit gap
- Match existing ASP.NET / Angular / Flutter conventions

## 4. Findings format

- **Critical** — must fix before merge
- **Warning** — should fix in this WP
- **Suggestion** — optional

Include a concrete fix sketch for Critical/Warning.

## 5. Merge recommendation

End with **approve** or **request changes**. No vague “looks fine” without a rec.

## 6. Invoke others when needed

- Auth, PII, uploads, secrets, injections → `security-reviewer`
- Web journeys changed → `playwright-tester` + check **Service call coverage** in report
- Mobile journeys changed → `flutter-tester` + check **Service call coverage** in report
- Missing product rules → **Blockers for PM** via `project-manager`

## Output

1. Files reviewed  
2. Findings by severity  
3. Test/lint evidence (run existing commands if cheap)  
4. Merge recommendation  
