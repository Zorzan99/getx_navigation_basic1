import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsPage1 extends StatelessWidget {
  const AwaitParamsPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pop('Retornando parametro por flutter nativo');
              },
              child: const Text(
                "Retornando com o parametro com o flutter nativo ",
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back(result: 'Retornando parametro por getx');
              },
              child: const Text(
                "Retornando com o parametro com Get",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
