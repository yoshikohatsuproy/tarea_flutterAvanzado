import 'package:get/get.dart';

class ContadorIdController extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update(["contador"]);
  }

  void decrement() {
    counter--;
    update(["contador"]);
  }
}
