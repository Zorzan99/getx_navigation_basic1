import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getrotas/navega%C3%A7%C3%A3o_comum/await_params/await_params_page1.dart';

class AwaitParamsHomePage extends StatelessWidget {
  const AwaitParamsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Await params'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                final result = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) {
                      return const AwaitParamsPage1();
                    }),
                  ),
                );
                debugPrint(result);
              },
              child: const Text(
                "Retornar parametro flutter nativo",
              ),
            ),
            TextButton(
              onPressed: () async {
                final result = await Get.to(AwaitParamsPage1());
                debugPrint(result);
              },
              child: const Text(
                "Reetornar parametro Getx",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
