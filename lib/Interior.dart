import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenInterior extends StatelessWidget {
  const ScreenInterior({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interior Design'),
      ),
      body: SafeArea(
          child: Column(
        children: [],
      )),
    );
  }
}
