# fluto_plugin_platform_interface

This package provides a base class for fluto plugins.

Fluto Plugins implementations should extend this abstract classes `Pluggable` rather than implement it as
newly. Extending a platform
interface ensures that subclasses will get the default implementations from the base class.

## Sample usage:

```dart
class FlutoSharedPreferencesViewerPlugin extends Pluggable {
  FlutoSharedPreferencesViewerPlugin({required super.devIdentifier});

  @override
  PluginConfiguration get pluginConfiguration => PluginConfiguration(
        icon: Icons.data_object,
        name: "Shared Preferences Viewer",
      );

  @override
  Navigation get navigation => Navigation.byScreen(
        globalNavigatorKey: globalNavigatorKey,
        screen: const SharedPreferencesView(),
      );
}
```
The class which extends `Pluggable` can be added as a `Fluto Plugin`.


## Issues

Please file any issues, bugs or feature requests as an issue on our [GitHub](https://github.com/shashankgupta3891/fluto_plugin_platform_interface/issues) page. Commercial support is available, you can contact us at <shashankgupta3891@gmail.com>.

## Want to contribute

If you would like to contribute to the plugin (e.g. by improving the documentation, solving a bug or adding a cool new feature), please send us your [pull request](https://github.com/shashankgupta3891/fluto_plugin_platform_interface/pulls).

## Author


This Geolocator plugin for Flutter is developed by [Shashank Gupta](https://github.com/shashankgupta3891).