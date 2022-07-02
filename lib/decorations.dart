import 'package:flutter/material.dart';

class ScreenDecor extends StatelessWidget {
  const ScreenDecor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Decorations')),
    );
  }
}
