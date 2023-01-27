import 'package:flutter/material.dart';

class PluginConfiguration {
  final String name;
  final IconData icon;

  PluginConfiguration({
    required this.name,
    required this.icon,
  });

  String get identifier => name.toLowerCase().replaceAll(" ", "_");

  @override
  String toString() => 'PluginConfiguration(name: $name, icon: $icon)';

  @override
  bool operator ==(Object other) {
    return other is PluginConfiguration && other.identifier == identifier;
  }

  @override
  int get hashCode => identifier.hashCode;
}
