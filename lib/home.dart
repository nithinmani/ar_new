import 'package:ar_app/Interior.dart';
import 'package:ar_app/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 231, 190, 206),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                List;
              },
              icon: const Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                signout(context);
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 231, 190, 206),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 14, right: 14, bottom: 5),
          child: SingleChildScrollView(
            child: Column(children: [
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hi,",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 3,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Let's build your idea",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const ScreenInterior()));
                      },
                      child: Column(children: [
                        Ink.image(
                          image: const AssetImage(
                              'assets/images/interior design pic.jpg'),
                          height: 250,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        const Text('Interior Design',
                            style: const TextStyle(fontSize: 16)),
                      ]),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black26,
                      onTap: () {},
                      child: Column(children: [
                        Ink.image(
                          image:
                              const AssetImage('assets/images/Education1.jpg'),
                          height: 250,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        const Text('Education',
                            style: const TextStyle(fontSize: 16)),
                      ]),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Our Recommendations>',
                  style: const TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Material(
                borderRadius: BorderRadius.circular(28),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                  splashColor: Colors.black26,
                  onTap: () {},
                  child: Column(children: [
                    Ink.image(
                      image: const AssetImage('assets/images/Image 612.png'),
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ]),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

  signout(BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => ScreenLogin()), (route) => false);
  }
}
