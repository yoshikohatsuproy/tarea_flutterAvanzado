import 'dart:async';

import 'package:get/get.dart';
import 'package:faker/faker.dart';

class SocketController extends GetxController {
  @override
  void onInit() {
    _loadInfo();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  RxString mensaje = RxString('');
  Timer? _timer;

  _loadInfo() {
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      mensaje.value = faker.lorem.sentence();
    });
  }
}
