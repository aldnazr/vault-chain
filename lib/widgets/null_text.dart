import 'package:flutter/material.dart';

class NullText extends StatelessWidget {
  const NullText({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 40,
      height: 20,
      child: Card(
        elevation: 0.5,
        margin: EdgeInsets.all(0),
        child: Center(
          child: Text('Null', style: TextStyle(fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}
