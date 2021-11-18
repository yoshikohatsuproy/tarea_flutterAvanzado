import 'package:flutter_avanzado_app1/data/models/user_model.dart';
import 'package:flutter_avanzado_app1/data/providers/user_provider.dart';
import 'package:flutter_avanzado_app1/pages/05-detail-page/detail_page.dart';
import 'package:get/get.dart';

class UsersController extends GetxController {
  final _userProvider = UserProvider();
  List<UserModel> users = [];

  @override
  void onInit() {
    _loadUsers();
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

  gotoDetail(UserModel user) {
    Get.to(DetailPage(), arguments: user);
  }

  _loadUsers() async {
    try {
      users = await _userProvider.getUsers(page: 1);
      update(["users"]);
    } catch (e) {
      print(e.toString());
    }
  }
}
