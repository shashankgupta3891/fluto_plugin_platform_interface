library fluto_plugin_platform_interface;

import 'package:fluto_plugin_platform_interface/model/plugin_configuration.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'model/developer_details.dart';

abstract class Pluggable {
  final String devIdentifier;
  Pluggable({required this.devIdentifier});
  DeveloperDetails? get developerDetails => GenericDeveloperDetails();
  PluginConfiguration get pluginConfiguration;
  void onTriggerInit();
  Widget? get buildWidget;
  // PluginType get pluginType;

  GlobalKey<NavigatorState>? get globalNavigatorKey => _globalNavigatorKey;
  GlobalKey<NavigatorState>? _globalNavigatorKey;
  BuildContext? get context => _globalNavigatorKey?.currentContext;

  @mustCallSuper
  void setupAndLaunch(GlobalKey<NavigatorState> globalKey) {
    _globalNavigatorKey = globalKey;
    onPluginInstalled();
  }

  void launchScreen(Widget screen) {
    _globalNavigatorKey?.currentState?.push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) => screen,
      ),
    );
  }

  void onPluginInstalled();

  bool get isEnable => _isEnable;
  bool _isEnable = true;
  void setEnable(bool isEnable) {
    _isEnable = isEnable;
  }
}

class GenericDeveloperDetails extends DeveloperDetails {
  GenericDeveloperDetails() : super(website: kWebsite);
}

// abstract class ManageNagivationKey {
//   setNagivationKey(GlobalKey<NavigatorState> key);
// }

// class Plugin {
//   Plugin({
//     this.widget,
//     required this.pluginType,
//   });

//   final Widget? widget;

//   factory Plugin.screen({
//     required Widget widget,
//   }) {
//     return Plugin(
//       pluginType: PluginType.screen,
//       widget: widget,
//     );
//   }

//   factory Plugin.widget({
//     required Widget widget,
//   }) {
//     return Plugin(
//       pluginType: PluginType.widget,
//       widget: widget,
//     );
//   }

//   final PluginType pluginType;
// }

// enum PluginType {
//   screen,
//   widget,
//   onTap,
// }
