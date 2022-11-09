import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My profile'),
        centerTitle: true,
      ),
      body: Obx(
        (){
        return Column(
          children: [
            Center(
              child: Text(
                controller.count.toString(),
                style: TextStyle(fontSize: 20),
              ),
            ),
            MaterialButton(
              onPressed: () {
                controller.increment();
              },
              child: Text("1+"),
            )
          ],
        );
      }),
    );
  }
}
