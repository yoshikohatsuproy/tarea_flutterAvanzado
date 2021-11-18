import 'package:flutter_avanzado_app1/data/models/user_model.dart';
import 'package:flutter_avanzado_app1/data/providers/user_provider.dart';
import 'package:get/get.dart';

class ReactiveController extends GetxController {
  final _userProvider = UserProvider();
  RxList<UserModel> users = RxList<UserModel>([]);
  RxBool isLoading = RxBool(true);
  RxInt counter = RxInt(0);

  _loadUsers() async {
    try {
      users.value = await _userProvider.getUsers(page: 1);
      isLoading.value = false;
    } catch (e) {
      print(e.toString());
    }
  }

  onFavorite(int index) {
    print(index);
    users[index].isFavorite.value = !users[index].isFavorite.value;
    counter.value = users.where((user) => user.isFavorite.value == true).length;
  }

  /*
  RxInt counter = RxInt(0);

  void increment() {
    counter.value++;
  }

  void decrement() {
    counter.value--;
  }
*/
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
}
