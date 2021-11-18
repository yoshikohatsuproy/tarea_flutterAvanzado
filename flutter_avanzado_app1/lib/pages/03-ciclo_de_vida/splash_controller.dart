import 'package:flutter/material.dart';
import 'package:flutter_avanzado_app1/pages/02-id/contadorid_controller.dart';
import 'package:flutter_avanzado_app1/pages/02-id/contadorid_page.dart';
import 'package:flutter_avanzado_app1/pages/04-consumo_api/users_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    print('Print OnInit');
    super.onInit();
  }

  @override
  void onReady() {
    print('Print OnReady');
    /* Get.dialog(
        AlertDialog(
          title: Text('Mensaje'),
          content: FlutterLogo(
            size: 200,
          ),
        ),
        barrierColor: Colors.black54,
        barrierDismissible: false);
   */
    Future.delayed(Duration(seconds: 3), () {
      Get.off(() => UsersPage(),
          transition: Transition.rightToLeft, duration: Duration(seconds: 2));
    });
    super.onReady();
  }

  @override
  void onClose() {
    print('Print OnClose');
    super.onClose();
  }
}
