import 'package:flutter/material.dart';

import 'package:get/get.dart';

class UnnamedRoutes extends StatelessWidget {
  const UnnamedRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Get.to(
                Home(),
              );
            }, child: Text('Go to home'))
          ],
        ),
      ),
    );
  }
}