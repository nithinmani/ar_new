import 'package:ar_app/Wallhangings.dart';
import 'package:ar_app/decorations.dart';
import 'package:ar_app/furniture.dart';
import 'package:ar_app/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenInterior extends StatelessWidget {
  const ScreenInterior({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  child: Text(
                    '<home',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Interior Design',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                borderRadius: BorderRadius.circular(28),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const ScreenFurniture()));
                  },
                  child: Column(children: [
                    Ink.image(
                      image: const AssetImage('assets/images/Image 612.png'),
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ]),
                ),
              ),
              Text('Furniture'),
              Material(
                borderRadius: BorderRadius.circular(28),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const ScreenWall()));
                  },
                  child: Column(children: [
                    Ink.image(
                      image: const AssetImage('assets/images/Image 612.png'),
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ]),
                ),
              ),
              Text('Wall Hangings'),
              Material(
                borderRadius: BorderRadius.circular(28),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const ScreenDecor()));
                  },
                  child: Column(children: [
                    Ink.image(
                      image: const AssetImage('assets/images/Image 612.png'),
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ]),
                ),
              ),
              Text('Decorations'),
            ],
          ),
        ),
      )),
    );
  }
}
