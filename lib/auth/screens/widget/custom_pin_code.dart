import 'package:chat_app/auth/manager/cubit/phone_auth_cubit.dart';
import 'package:chat_app/util/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCode extends StatelessWidget {
  const CustomPinCode({super.key});


  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 6,
      
      autoFocus: true,
      cursorColor: tabColor,
      keyboardType: TextInputType.number,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box, // تغيير الشكل إلى خطوط
        fieldHeight: 35.h,
        fieldWidth: 30.w,

        inactiveColor: lightBlue,
        inactiveFillColor: lightBlue,
        activeFillColor: lightBlue,
        selectedColor: lightBlue,
        selectedFillColor: lightBlue,

        activeColor: lightBlue,
      ),
      animationDuration: Duration(milliseconds: 300),
      enableActiveFill: true,
      
   
      onChanged:(String otp) {
        BlocProvider.of<PhoneAuthCubit>(context).smscode = otp;
      } ,
    );
  }
}
