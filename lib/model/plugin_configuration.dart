import 'package:flutter/material.dart';

class PluginConfiguration {
  final String name;
  final IconData icon;
  final String version;

  PluginConfiguration({
    required this.name,
    required this.icon,
    required this.version,
  });

  String get identifier => name.toLowerCase().replaceAll(" ", "_");

  @override
  String toString() =>
      'PluginConfiguration(name: $name, icon: $icon, version: $version)';

  @override
  bool operator ==(Object other) {
    return other is PluginConfiguration && other.identifier == identifier;
  }

  @override
  int get hashCode => identifier.hashCode;
}
