/* 

              Copyright (c) 2021 divshekhar (Divyanshu Shekhar). 
                            All rights reserved.

The plugin is governed by the BSD-3-clause License. Please see the LICENSE file
for more details.

*/

import 'dart:async';

import 'package:flutter_shortcuts_new/src/platform/flutter_shortcuts_platform.dart';
import 'package:flutter_shortcuts_new/src/helper/helper.dart';

export 'package:flutter_shortcuts_new/src/helper/helper.dart';

class FlutterShortcuts {
  /// [initialize] initializes the flutter_shortcuts_new plugin.
  Future<void> initialize({bool debug = true}) async {
    FlutterShortcutsPlatform.instance.initialize(debug);
  }

  /// [listenAction] performs action when shortcut is initiated.
  Future<void> listenAction(ShortcutAction action) async {
    FlutterShortcutsPlatform.instance.listenAction(action);
  }

  /// [getMaxShortcutLimit] returns the maximum number of static or dynamic
  /// shortcuts that each launcher icon can have at a time.
  Future<int?> getMaxShortcutLimit() {
    return FlutterShortcutsPlatform.instance.getMaxShortcutLimit();
  }

  /// [getIconProperties] returns the "maxHeight" and "maxWidth" of the shortcut icon.
  /// Example: {"maxHeight": 250, "maxWidth": 200}
  Future<Map<String, int>> getIconProperties() {
    return FlutterShortcutsPlatform.instance.getIconProperties();
  }

  /// [setShortcutItems] will set all the shortcut items.
  Future<void> setShortcutItems(
      {required List<ShortcutItem> shortcutItems}) async {
    return FlutterShortcutsPlatform.instance.setShortcutItems(shortcutItems);
  }

  /// [clearShortcutItems] will remove all the shortcut items.
  Future<void> clearShortcutItems() async {
    return FlutterShortcutsPlatform.instance.clearShortcutItems();
  }

  /// [pushShortcutItem] will push a new shortcut item.
  /// If there is already a dynamic or pinned shortcut with the same ID,
  /// the shortcut will be updated and pushed at the end of the shortcut list.
  Future<void> pushShortcutItem({required ShortcutItem shortcut}) async {
    return FlutterShortcutsPlatform.instance.pushShortcutItem(shortcut);
  }

  /// [pushShortcutItems] updates dynamic or pinned shortcuts with same IDs
  /// and pushes new shortcuts with different IDs.
  Future<void> pushShortcutItems(
      {required List<ShortcutItem> shortcutList}) async {
    return FlutterShortcutsPlatform.instance.pushShortcutItems(shortcutList);
  }

  /// [updateShortcutItems] updates shortcut items.
  /// If the IDs of the shortcuts are not same, no changes will be reflected.
  Future<void> updateShortcutItems(
      {required List<ShortcutItem> shortcutList}) async {
    return FlutterShortcutsPlatform.instance.updateShortcutItems(shortcutList);
  }

  /// [updateShortcutItem] updates a single shortcut item based on id.
  /// If the ID of the shortcut is not same, no changes will be reflected.
  Future<void> updateShortcutItem({required ShortcutItem shortcut}) async {
    return FlutterShortcutsPlatform.instance.updateShortcutItem(shortcut);
  }

  /// [changeShortcutItemIcon] will change the icon of the shortcut based on id.
  /// If the ID of the shortcut is not same, no changes will be reflected.
  Future<void> changeShortcutItemIcon(
      {required String id, required String icon}) async {
    return FlutterShortcutsPlatform.instance.changeShortcutItemIcon(id, icon);
  }
}
