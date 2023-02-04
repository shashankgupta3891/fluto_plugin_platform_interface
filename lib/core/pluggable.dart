import 'package:fluto_plugin_platform_interface/core/fluto_storage.dart';
import 'package:fluto_plugin_platform_interface/core/navigation.dart';
import 'package:fluto_plugin_platform_interface/model/developer_details.dart';
import 'package:fluto_plugin_platform_interface/model/plugin_configuration.dart';
import 'package:flutter/widgets.dart';

abstract class Pluggable {
  final String devIdentifier;
  final DeveloperDetails? developerDetails;
  Pluggable({
    required this.devIdentifier,
    this.developerDetails = const GenericDeveloperDetails(),
  });
  PluginConfiguration get pluginConfiguration;

  GlobalKey<NavigatorState>? get globalNavigatorKey => _globalNavigatorKey;
  GlobalKey<NavigatorState>? _globalNavigatorKey;
  BuildContext? get context => _globalNavigatorKey?.currentContext;

  FlutoStorage? get flutoStorage => _flutoStorage;
  FlutoStorage? _flutoStorage = const NoFlutoStorage();

  @mustCallSuper
  void setup(GlobalKey<NavigatorState> globalKey,
      {FlutoStorage? flutoStorage}) {
    try {
      _flutoStorage = flutoStorage;
      _globalNavigatorKey = globalKey;
      onSetupDone?.call();
    } catch (e) {}
  }

  Navigation get navigation;

  VoidCallback? onSetupDone;

  bool get isEnable => _isEnable;
  bool _isEnable = true;
  void setEnable(bool isEnable) {
    _isEnable = isEnable;
  }
}
