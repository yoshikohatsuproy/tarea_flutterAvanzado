import 'package:flutter/material.dart';
import 'package:flutter_avanzado_app1/pages/05-detail-page/detail_controller.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      init: DetailController(),
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Detail'),
            actions: [
              CircleAvatar(
                backgroundImage: NetworkImage("${_.user.avatar}"),
              ),
              SizedBox(width: 15)
            ],
          ),
          body: Center(
            child: Text('${_.user.firstName} ${_.user.lastName}'),
          ),
        );
      },
    );
  }
}
