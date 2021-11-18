import 'package:flutter/material.dart';
import 'package:flutter_avanzado_app1/pages/04-consumo_api/users_controller.dart';
import 'package:get/get.dart';

class UsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UsersController>(
        init: UsersController(),
        builder: (_) {
          return Scaffold(
              appBar: AppBar(
                title: Text('Users'),
              ),
              body: GetBuilder<UsersController>(
                  id: 'users',
                  builder: (_) {
                    return ListView.builder(
                        itemCount: _.users.length,
                        itemBuilder: (context, index) {
                          final user = _.users[index];
                          print(user);
                          return ListTile(
                            onTap: () => _.gotoDetail(user),
                            title: Text("${user.firstName} ${user.lastName}"),
                            subtitle: Text("${user.email}"),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage("${user.avatar}"),
                            ),
                          );
                        });
                  }));
        });
  }
}
