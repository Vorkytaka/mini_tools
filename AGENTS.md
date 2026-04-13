# AGENTS.md

## Project purpose
Flutter desktop developer-utilities app. Uses **mini_tea** (custom TEA architecture). Dart monorepo managed with Melos.

## Repository map
- App: `app/lib/`, tests: `app/test/`
- Packages: `packages/mini_tea*`

## Required commands
All commands use `fvm` prefix. Never use bare `flutter` or `dart`.

Run from repository root unless explicitly stated otherwise.

```bash
fvm dart pub run melos run test              # All tests (workspace)
fvm flutter test                             # Tests for current package
fvm dart run build_runner build --delete-conflicting-outputs  # Codegen (from app/)
```

Full verification before merge (CI runs these in order):
1. `fvm dart pub run melos format --set-exit-if-changed .`
2. `fvm flutter analyze .`
3. `fvm dart pub run melos run test`

After each meaningful change: format, analyze, run the narrowest relevant tests. Explain skipped tests. For risky changes, add or update tests.

## Workflow rules
- Before editing, read the relevant module and nearby tests.
- Make the smallest correct change. Match existing architecture and naming.
- Do not perform opportunistic refactors unless requested.
- Do not add dependencies without explaining why.
- Never edit generated files (`*.freezed.dart`, `*.g.dart`, `lib/i18n/**`). Regenerate with `fvm dart run build_runner build --delete-conflicting-outputs` from `app/`.

## Architecture
Each tool feature follows TEA:
```
features/<name>/
  <name>_tool_v2.dart
  domain/
    <name>_feature.dart
    <name>_update.dart
    <name>_effect_handler.dart
    state/<name>_state.dart
    message/<name>_message.dart
    effect/<name>_effect.dart
  presentation/
    <name>_screen.dart
```

Key types: `Feature<State, Msg, Effect>`, `Next<State, Effect> = (State?, List<Effect>)` (null State = no change). `@freezed` + `@immutable` on all state/message/effect classes.

## Code style
- Analyzer is exhaustive (~170 rules). Fix what it flags.
- Use relative imports within the same package, not `package:` URIs.
- Use `Log` class instead of `print`.
- Use `on Object catch (e, s)` -- never bare `catch`. Don't catch `Error` types.
- Use `provider` / `FeatureProvider` for DI -- no DI framework.

## Testing
- Mocking: `mocktail`.
- Use `mini_tea_test` helpers (`UpdateTest`, `EffectHandlerTest`) for TEA features.

## Agent memory
Before starting non-trivial work, read:
- `tasks/_active.md` -- current active tasks
- Latest file in `handoff/` -- last agent's handoff notes

After finishing non-trivial work, update:
- `tasks/_active.md` -- mark done, add new tasks
- `handoff/latest.md` -- what changed, current status, next step, blockers

Create these dirs/files on first use if they don't exist yet.

## Safety
- Ask before destructive ops, large renames, or editing secrets/CI credentials.
