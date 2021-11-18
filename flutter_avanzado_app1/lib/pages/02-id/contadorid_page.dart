import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avanzado_app1/pages/02-id/contadorid_controller.dart';

class ContadorIdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContadorIdController>(
      init: ContadorIdController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Contador Id GetX'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You have pushed the button'),
                GetBuilder<ContadorIdController>(
                    id: "contador",
                    builder: (_) {
                      return Text("${_.counter}",
                          style: Theme.of(context).textTheme.headline4);
                    })
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
          ),
        );
      },
    );
  }
}
