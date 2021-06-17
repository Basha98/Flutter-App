import 'package:get/get.dart';

class Page1Controler extends GetxController{
  var isloading=false.obs;
  var text="it is false".obs;
  void change (){
    if(isloading.value==true)
      {
        isloading.value=false;
        text.value="it is false";
        update();
      }
    else{
      isloading.value=true;
      text.value="it is true";
      update();
    }
  }
}