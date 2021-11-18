import 'package:flutter/material.dart';
import 'package:flutter_avanzado_app1/pages/07-sockets/socket_controller.dart';
import 'package:get/get.dart';

class SocketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SocketController>(
      init: SocketController(),
      builder: (_) {
        return Scaffold(
            appBar: AppBar(
              title: Text('Socket IO'),
            ),
            body: Center(
              child: Obx(() => Text(
                    "${_.mensaje}",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
            ));
      },
    );
  }
}
