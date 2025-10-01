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

Color lightBorderColor() {
  return const Color(0xFFEFF2F5);
}

Color darkBorderColor() {
  return const Color(0xFF212D3B);
}

Color customDarkContainer() {
  return Color(0xFF1B232D);
}

Color customDarkOnContainer() {
  return Color(0xFF8EA3BE);
}

Color customLightContainer() {
  return Color(0xFFF1F5F9);
}

Color customLightOnContainer() {
  return Color(0xFF64748B);
}

Color defaultPrimaryContainer(BuildContext context) {
  return Theme.of(context).colorScheme.primaryContainer;
}

Color defaultOnPrimaryContainer(BuildContext context) {
  return Theme.of(context).colorScheme.onPrimaryContainer;
}
