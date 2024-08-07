import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dialog'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
               // Get.defaultDialog();
                Get.defaultDialog(
                  title: "Dialog title",
                  titleStyle: TextStyle(
                    fontSize: 25
                  ),
                  middleText: "This is middle text",
                  middleTextStyle: TextStyle(fontSize: 20),
                  backgroundColor: Colors.red[200],
                  radius: 80,
                  content: Row(
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(child: Text('Data loading'),
                      ),
                    ],
                  ),
                  textCancel: "Cancel",
                  cancelTextColor: Colors.white,
                  textConfirm: "Confirm",
                  confirmTextColor: Colors.white,
                  onCancel: (){

                  },
                  buttonColor: Colors.green,
                  cancel: Text(
                    "Cancels",
                    style: TextStyle(color: Colors.white),
                  ),
                  confirm: Text(
                    "Confirms",
                    style: TextStyle(color: Colors.white),
                  ),
                  actions: [
                    ElevatedButton(onPressed: (){
                      Get.back();
                    }, child: Text('Action - 1')),
                    ElevatedButton(onPressed: (){

                    }, child: Text('Action'))
                  ]
                );
              }, child: Text('Show Dialog')),

            ],
          ),
        ),
      );
    
  }
}