import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getrotas/navega%C3%A7%C3%A3o_comum/await_params/await_params_home_page.dart';
import 'package:getrotas/navega%C3%A7%C3%A3o_comum/back/back_home_page.dart';
import 'package:getrotas/navega%C3%A7%C3%A3o_comum/off/off_home_page.dart';
import 'package:getrotas/navega%C3%A7%C3%A3o_comum/send%20params/send_params_home_page.dart';
import 'package:getrotas/navega%C3%A7%C3%A3o_comum/to/to_home_page.dart';

import 'offAll/off_all_home_page.dart';

class NavegacaoComumHomePage extends StatelessWidget {
  const NavegacaoComumHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => const ToHomePage());
              },
              child: const Text('TO (Push)'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const BackHomePage());
              },
              child: const Text('Back Home Page (Pop)'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const OffHomePage());
              },
              child: const Text('Off (Replacement)'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const OffAllHomePage());
              },
              child: const Text('OffAll (PushAndRemoveUntil)'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => const SendParamsHomePage());
              },
              child: const Text('Enviado Parametros'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => AwaitParamsHomePage());
              },
              child: const Text('Aguardando Retorno Parametros'),
            ),
          ],
        ),
      ),
    );
  }
}
