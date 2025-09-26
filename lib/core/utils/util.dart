import 'package:flutter/material.dart';

Color defaultBackground(BuildContext context) {
  return Theme.of(context).colorScheme.surface;
}

Color defaultContainer(BuildContext context) {
  return Theme.of(context).colorScheme.surfaceContainer;
}

Color defaultTitleColor(BuildContext context) {
  return Theme.of(context).textTheme.titleMedium!.color!;
}
