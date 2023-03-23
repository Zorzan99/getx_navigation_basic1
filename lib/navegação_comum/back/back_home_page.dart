import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getrotas/navega%C3%A7%C3%A3o_comum/back/back_page1.dart.dart';
import 'package:getrotas/navega%C3%A7%C3%A3o_comum/to/page1.dart';

class BackHomePage extends StatelessWidget {
  const BackHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) {
                      return const BackPage1Dart();
                    }),
                  ),
                );
              },
              child: const Text(
                "Go to Page com flutter Nativo",
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => BackPage1Dart());
              },
              child: const Text(
                "Got to Page com Get",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
