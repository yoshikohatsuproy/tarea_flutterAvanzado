import 'package:flutter_avanzado_app1/data/models/user_model.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  UserModel _user = new UserModel();
  UserModel get user => _user;

  @override
  void onInit() {
    super.onInit();
    this._user = Get.arguments as UserModel;

    print("${this.user}");
  }
}
