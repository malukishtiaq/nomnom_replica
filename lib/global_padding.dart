import 'package:flutter/material.dart';

class GlobalPadding extends StatelessWidget {
  final Widget child;

  const GlobalPadding({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
        left: 2,
        right: 2,
        bottom: 0,
      ),
      child: child,
    );
  }
}
