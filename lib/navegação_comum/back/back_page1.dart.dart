import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackPage1Dart extends StatelessWidget {
  const BackPage1Dart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "Voltar flutter Nativo",
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text(
                "Voltar com Get",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
