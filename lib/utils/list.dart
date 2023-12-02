import 'package:flutter/material.dart';

/// The base class for the different types of items the list can contain.
abstract class ListItem {
  /// The title line to show in a list item.
  Widget buildTitle(BuildContext context);

  /// The subtitle line, if any, to show in a list item.
  Widget buildSubtitle(BuildContext context);
}

/// A ListItem that contains data to display a heading.
class OptionHeading implements ListItem {
  final String heading;

  OptionHeading(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme
          .of(context)
          .textTheme
          .headlineSmall,
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
}

/// A ListItem that contains data to display a message.
class Option implements ListItem {
  final String value;
  final String title;
  final String sTitle;

  Option(this.value, this.title, this.sTitle);

  @override
  Widget buildTitle(BuildContext context) => Text(title);

  @override
  Widget buildSubtitle(BuildContext context) => Text(sTitle);

}
