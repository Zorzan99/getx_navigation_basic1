import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getrotas/navega%C3%A7%C3%A3o_comum/send%20params/send_params_page1.dart';

class SendParamsHomePage extends StatelessWidget {
  const SendParamsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enviado Parametros'),
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
                        return const SendParamsPage1();
                      }),
                      settings: const RouteSettings(
                          arguments: 'Parametro pelo flutter nativo')),
                );
              },
              child: const Text(
                "Parametro pelo flutter nativo",
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => SendParamsPage1(),
                    arguments: 'Parametro pelo getX');
              },
              child: const Text(
                "Parametro pelo getX",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
