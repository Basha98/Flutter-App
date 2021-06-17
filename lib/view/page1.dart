import 'package:flutter/material.dart';
import 'package:flutterapp3/controler/page1_cotroler.dart';
import 'package:get/get.dart';

class Page1 extends StatefulWidget {
 @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Page1> {
 // Page1Controler controler=Get.find();
  Page1Controler controler=new Page1Controler();
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
        title: Text("GetX"),
      ),
      body: Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(
                    ()=>controler.isloading.value==true? Column(
            children: [
                CircularProgressIndicator(),
            Text(controler.text.value)
          ],
       ):Text(controler.text.value)

         ),

    RaisedButton(
    child:Text("enter"),
    onPressed: (){
    controler.change();
    },
    )
          ],
        ),
      ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


