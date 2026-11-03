# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository overview

Coursework for "Sovellusohjelmoinnin jatkokurssi" (Finnish: advanced application programming course). Work is organized by week in top-level directories (`week-1/`, `week-2/`, ...). The repo holds code only; written answers for the exercises are kept elsewhere.

Early weeks are standalone exercises, and each week's directory is self-contained. Later in the course the work becomes one larger project that is updated every week, so from then on new work builds on the existing code instead of starting fresh.

Code is either React Native (Expo) or Flutter, targeting Android and web (iOS is out of scope). A week can contain both frameworks, in `week-N/react/` and `week-N/flutter/`. When it does, the two apps implement the same exercise with matching behavior and UI text (week 1: a counter), so a change to one usually needs mirroring in the other.

## Commands

Node and the Flutter SDK are both installed locally. Run commands from inside the app directory.

React Native (`week-N/react/`):
- `npm install`, then `npx expo install --fix` (aligns dependency versions with the Expo SDK)
- `npm start` opens the Expo dev server (scan its QR code with Expo Go to run on a phone); `npm run android` opens it on an emulator or device
- `npx expo start --web` runs it in the browser (`react-native-web` is a dependency, but `package.json` has no `web` script)

Flutter (`week-N/flutter/`):
- New projects: `flutter create --platforms android,web .`. Week 1 has only `web/`; add Android to an existing project with `flutter create --platforms android .`
- `flutter pub get`, then `flutter run -d chrome` for web, or `flutter devices` and `flutter run -d <device>` for an Android phone or emulator
- `flutter analyze` runs the analyzer with `flutter_lints`

There are no test suites and no JS linter.

## Conventions

- UI strings are in Finnish; code comments are in English.
- Changes the student made on top of the course's template code are marked with an `// Own change: ...` comment (`{/* Own change: ... */}` in JSX).
- `.gitattributes` uses `* text=auto` (LF normalization). The development machine is Windows, so keep line endings consistent.
