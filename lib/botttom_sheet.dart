import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Botttomsh extends StatelessWidget {
  const Botttomsh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton( child: Text('Bottom text'),onPressed: (){
              Get.bottomSheet(
                Container(
                  child: Wrap(
                    children:<Widget> [
                      ListTile(
                        leading: Icon(Icons.wb_sunny_outlined),
                        title: Text('Light Theme'),
                        onTap: () =>{Get.changeTheme(ThemeData.light())},
                      ),
                      ListTile(
                        leading: Icon(Icons.wb_sunny),
                        title: Text('Dark Theme'),
                        onTap: () =>{Get.changeTheme(ThemeData.dark())},
                      ),
                    ],
                  ),
                ),
                barrierColor: Colors.greenAccent[100],
                backgroundColor: Colors.purpleAccent,
                isDismissible: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0,
                  )
                )

              );
            })
          ],
        ),
      ),
    );
  }
}