import 'package:ecommerce_app/widgets/ElevatedButton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  void logout() async{
    Get.defaultDialog(
      title: "Logout",
      middleText: "Are you sure you want to logout?",
      textConfirm: "Yes",
      textCancel: "No",
      confirmTextColor: Colors.white,
      onConfirm: () {
        FirebaseAuth.instance.signOut();
        Get.offAllNamed('/');
      },
      onCancel: () {
        Get.back();
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("welcome"),
        ),
      body: Center(
        child: Elevated_button(
          path: (){
            logout();
          },
          text: "Logout",
          color: Colors.white,
          backcolor: Colors.red,
          width: 200,
          height: 20,
          radius: 10,
          padding: 10,
        ),
      ),
    );
  }
}