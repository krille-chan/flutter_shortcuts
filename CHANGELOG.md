## v2.1.0

- feat: add support for agp 9
- refactor: Rename to correct plugin

## v2.0.0

- Plugin forked to `flutter_shortcuts_new` due to original plugin was no longer maintained
- Added namespace to become compatible with newer gradle versions
- Use pushDynamicShortcut for addShortcut to dynamically add shortcuts even if already existing

## v1.4.0

- **New Feature** Generate icon from JPEG images in memory (Uint8List) `ShortcutIconAsset.memoryAsset`

## v1.3.0

- **Breaking Change** renamed `FlutterShortcutsItem` to `ShortcutItem`
- Extra fields added in ShortcutItem
- `(bool) conversationShortcut` make conversation shortcuts
- `(bool) isImportant` set conversation shortcut importance
- `(bool) isBot` set is conversation shortcut bot

## v1.2.2

- Compatibility added in Readme

## v1.2.1

- **Optimised Shortcuts**
- Readme updated

## v1.2.0

- **Breaking Change** renamed `initialize` to `listenAction`.
- **Breaking Change** `initialize` takes bool debug.

## v1.1.0

- **Breaking Change** `updateShortcutItem` doesn't take id.
- **Breaking Change** `changeShortcutItemIcon` icon property is by default set to `ShortcutIconAsset.flutterAsset`.
- **New Feature** `FlutterShortcutItem` new field `shortcutIconAsset`.

## v1.0.1

- Demo provided in README

## v1.0.0

- Initial Development Release
