import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  const Separator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 0.74,
      endIndent: 10,
      indent: 30,
    );
  }
}
