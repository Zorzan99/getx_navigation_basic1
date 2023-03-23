import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getrotas/navega%C3%A7%C3%A3o_comum/offAll/off_all_page3.dart';

class OffAllPage2 extends StatelessWidget {
  const OffAllPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('offAll Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: ((context) {
                      return const OffAllPage3();
                    }),
                  ),
                  ((route) => false),
                );
              },
              child: const Text(
                "Go to pagina 3 com flutter Nativo e excluindo toda navegação",
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: ((context) {
                      return const OffAllPage3();
                    }),
                  ),
                  ModalRoute.withName('/OffAllHomePage'),
                );
              },
              child: const Text(
                "Go to pagina 3 com flutter Nativo e excluindo PARTE!! navegação",
              ),
            ),
            TextButton(
              onPressed: () {
                Get.offAll(
                  const OffAllPage3(),
                );
              },
              child: const Text(
                "Got off to Pagina 3 com Get e excluindo toda navegação",
              ),
            ),
            TextButton(
              onPressed: () {
                Get.offAll(
                  const OffAllPage3(),
                  predicate: ModalRoute.withName('/OffAllHomePage'),
                );
              },
              child: const Text(
                "Got off to Pagina 3 com Get e excluindo parte da navegação",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
