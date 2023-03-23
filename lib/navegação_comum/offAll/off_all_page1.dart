import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'off_all_page2.dart';

class OffAllPage1 extends StatelessWidget {
  const OffAllPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('offAll Page 1'),
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
                      return const OffAllPage2();
                    }),
                  ),
                );
              },
              child: const Text(
                "Go to offAll pagina 2 com flutter Nativo",
              ),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => OffAllPage2());
              },
              child: const Text(
                "Got offAll to Pagina 2 com Get",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
