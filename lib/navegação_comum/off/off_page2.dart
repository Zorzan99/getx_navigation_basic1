import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getrotas/navega%C3%A7%C3%A3o_comum/off/off_page3.dart';

class OffPage2 extends StatelessWidget {
  const OffPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: ((context) {
                      return const OffPage3();
                    }),
                  ),
                );
              },
              child: const Text(
                "Go to Page3 com flutter Nativo",
              ),
            ),
            TextButton(
              onPressed: () {
                Get.off(() => OffPage3());
              },
              child: const Text(
                "Got to Page3 com Get",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
