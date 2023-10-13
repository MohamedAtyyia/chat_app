
import 'package:chat_app/auth/screens/widget/phone_login_body.dart';
import 'package:chat_app/util/color.dart';
import 'package:flutter/material.dart';

class PhoneLoginScreen extends StatelessWidget {
  const PhoneLoginScreen({super.key, });
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          backgroundColor: backgroundColor,
          body: PhoneLoginScreenBody(controller: TextEditingController(),)
           ),
    );
  }

 
}





