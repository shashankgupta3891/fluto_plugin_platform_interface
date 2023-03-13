import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class PluginRegister {
  final GlobalKey<NavigatorState> globalNavigatorKey;
  final AsyncValueSetter<String?> savePluginData;
  final AsyncValueGetter<String?> loadPluginData;
  PluginRegister({
    required this.globalNavigatorKey,
    required this.savePluginData,
    required this.loadPluginData,
  });
}
