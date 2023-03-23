import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getrotas/navega%C3%A7%C3%A3o_comum/off/off_page2.dart';

class OffPage1 extends StatelessWidget {
  const OffPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 1'),
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
                      return const OffPage2();
                    }),
                  ),
                );
              },
              child: const Text(
                "Go to pagina 2 com flutter Nativo",
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => OffPage2());
              },
              child: const Text(
                "Got off to Pagina 2 com Get",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
