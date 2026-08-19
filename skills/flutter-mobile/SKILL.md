---
name: flutter-mobile
description: >-
  Implements Flutter apps feature-first with a typed API client and secure
  token storage. Use when building or changing Flutter screens, navigation, or
  mobile API integration in a Firebrand Agents project.
---

# Flutter mobile

**Match the repo** folder layout if one exists. Otherwise **feature-first** (UI / state / data per feature).

## Defaults

- Flutter (Dart)
- Typed API client (`dio` or `http` — match the project)
- Loading / empty / error states on touched flows
- Auth tokens in **secure storage** (existing plugin if present; do not store tokens in plaintext prefs)
- Align DTO field names and auth headers with BED contracts used by Angular when both clients exist

## Flutter tests

After a mobile WP, invoke `flutter-tester` (skill `flutter-test`). Playwright does **not** cover native iOS/Android. Do not treat a green `docs/test-report.md` as mobile sign-off.

## Stubs

`TODO(api)` only with TL allowance. Do not invent endpoints.

## Rules

1. Read analysis, tech design, UID mobile notes, contracts.
2. List **Blockers for PM/TL** for missing mobile scope or APIs.
3. Implement only the scoped WP. Do not modify .NET/Angular unless asked to coordinate a shared contract.
4. Keep platform channels/plugins minimal.

## Done

- In-scope journeys match analysis (and UID mobile notes)
- API usage matches contracts; no secrets in source
- Ready for `flutter-tester` then TL review
