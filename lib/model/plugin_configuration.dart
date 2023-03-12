import 'package:flutter/material.dart';

class PluginConfiguration {
  final String name;
  final IconData icon;
  final String description;
  final bool showEnablePluginButton;

  final ValueNotifier<bool> enable = ValueNotifier<bool>(true);

  PluginConfiguration({
    required this.name,
    required this.icon,
    required this.description,
    showEnablePluginButton = true,
    bool isInitialEnabled = true,
  }): enable.value = isEnabled;

  String get identifier => name.toLowerCase().replaceAll(" ", "_");

  @override
  bool operator ==(Object other) {
    return other is PluginConfiguration && other.identifier == identifier;
  }

  @override
  int get hashCode => identifier.hashCode;

  @override
  String toString() =>
      'PluginConfiguration(name: $name, icon: $icon, description: $description)';
}
