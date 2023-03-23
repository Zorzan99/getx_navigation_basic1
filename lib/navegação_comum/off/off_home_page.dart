import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getrotas/navega%C3%A7%C3%A3o_comum/off/off_page1.dart';

class OffHomePage extends StatelessWidget {
  const OffHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off Home'),
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
                      return const OffPage1();
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
                Get.to(() => OffPage1());
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
