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
