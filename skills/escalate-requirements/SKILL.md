---
name: escalate-requirements
description: >-
  Escalates missing product rules to the Project Manager instead of inventing
  them. Use when a specialist lacks business rules, acceptance criteria, or
  client decisions, or when tempted to guess FRs, auth, pricing, or data ownership.
---

# Escalate requirements

**Never invent business rules.** If the client did not state it and `docs/analysis.md` does not record it, do not treat it as fact.

## Who asks the client

Only `project-manager` asks the client. Every other agent reports gaps for PM.

## When something is missing

1. Stop implementing the unclear part (narrow stubs only if TL already allowed).
2. List **Blockers for PM** — numbered, answerable questions (yes/no, enum, concrete value).
3. Mark any working guess as **Assumption (pending PM)** in the reply and in the doc you own.
4. Do not silently rewrite BA FRs, NFRs, or business rules.

## Blockers for PM format

```markdown
## Blockers for PM
1. [Blocking?] Question — why it blocks which FR/WP
2. ...
```

Mark each item **Blocking** or **Non-blocking**. Blocking means design or the current WP cannot finish correctly.

## Assumptions

```markdown
**Assumption (pending PM):** <statement>. Used so <WP-id> can proceed; revert if the client disagrees.
```

Do not present assumptions as decided requirements.

## Do not invent

- Who may see whose data, roles, approvals
- Pricing, SLAs, retention, legal/WCAG level unless already in analysis
- Extra features, screens, or API fields “that products usually have”
- Undocumented endpoints or DTO shapes (coordinate BED/TL instead)

## After PM answers

PM updates `docs/project-plan.md` and asks BA/TL to refresh analysis/tech design. Then resume the WP against the updated docs.
