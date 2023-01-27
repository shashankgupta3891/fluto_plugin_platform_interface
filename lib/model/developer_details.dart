import 'package:fluto_plugin_platform_interface/core/constants.dart';

class DeveloperDetails {
  final String? vcsLink;
  final String? website;
  final String? twitter;
  const DeveloperDetails({
    this.vcsLink,
    this.website,
    this.twitter,
  });
}

class GenericDeveloperDetails extends DeveloperDetails {
  const GenericDeveloperDetails() : super(website: kWebsite);
}
