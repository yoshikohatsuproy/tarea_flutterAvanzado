import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_avanzado_app1/pages/01-contador/contador_controller.dart';

class ContadorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContadorController>(
      init: ContadorController(),
      builder: (controller) {
        return Scaffold(
            appBar: AppBar(
              title: Text('Contador GetX'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('You have pushed the button'),
                  Text('${controller.counter}',
                      style: Theme.of(context).textTheme.headline4)
                ],
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: controller.decrement,
                  tooltip: 'Decrement',
                  child: Icon(Icons.minimize_outlined),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: controller.increment,
                  tooltip: 'Decrement',
                  child: Icon(Icons.add),
                ),
              ],
            ));
      },
    );
  }
}
