import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'reactive_controller.dart';

class ReactivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReactiveController>(
      init: ReactiveController(),
      builder: (_) {
        return Scaffold(
            appBar: AppBar(
              title: Text("Reactive Getx"),
              actions: [
                Obx(
                  () => CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text("${_.counter}"),
                  ),
                ),
                SizedBox(width: 15)
              ],
            ),
            body: Obx(
              () => _.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: _.users.length,
                      itemBuilder: (context, index) {
                        final user = _.users[index];

                        return ListTile(
                            title: Text("${user.firstName} ${user.lastName}"),
                            subtitle: Text("${user.email}"),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage("${user.avatar}"),
                            ),
                            trailing: Obx(
                              () => GestureDetector(
                                  onTap: (() => {_.onFavorite(index)}),
                                  child: user.isFavorite.value
                                      ? Icon(
                                          Icons.favorite,
                                          color: Colors.pink,
                                        )
                                      : Icon(Icons.favorite_outline)),
                            ));
                      },
                    ),
            ));
      },
    );
  }
}

  /*
  Widget build(BuildContext context) {
    return GetBuilder<ReactiveController>(
      init: ReactiveController(),
      builder: (_) {
        return Scaffold(
            appBar: AppBar(
              title: Text("Reactive Getx"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('You have pushed the button'),
                  Obx(() => Text('${_.counter.value}')),
                ],
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: _.decrement,
                  tooltip: 'Decrement',
                  child: Icon(Icons.minimize_outlined),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: _.increment,
                  tooltip: 'Decrement',
                  child: Icon(Icons.add),
                ),
              ],
            ));
      },
    );
  }
}
*/