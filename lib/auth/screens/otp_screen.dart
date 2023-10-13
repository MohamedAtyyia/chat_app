import 'package:chat_app/auth/manager/cubit/phone_auth_cubit.dart';
import 'package:chat_app/util/widget/custom_bottom.dart';
import 'package:chat_app/auth/screens/widget/custom_pin_code.dart';
import 'package:chat_app/util/app_router.dart';
import 'package:chat_app/util/color.dart';
import 'package:chat_app/util/flutter_tost.dart';
import 'package:chat_app/util/widget/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTOScreen extends StatelessWidget {
  const OTOScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Enter Code ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: const CustomPinCode()),
          const Expanded(
              child: SizedBox(
            height: 12,
          )),
          BlocConsumer<PhoneAuthCubit, PhoneAuthState>(
              builder: (contextm, state) {
                if (state is StateIsLoading) {
                  return const Loading();
                } else {
                  return _customBottom(context);
                }
              },
              listener: (context,state){
                if(state is PhoneOTPInValid){
                  flutterTost(state.erroeMessage);
                }else if (state is PhoneOTPValid){
                  Navigator.pushReplacementNamed(context, AppRouter.profileScreen);
                }
              })
        ],
      ),
    ));
  }

  CustomBottom _customBottom(BuildContext context) {
    return CustomBottom(
        text: 'enter code',
        width: 120.w,
        onPressed: () {
          if (BlocProvider.of<PhoneAuthCubit>(context).smscode == null) {
            flutterTost('Enter sms');
          } else if (BlocProvider.of<PhoneAuthCubit>(context).smscode!.length !=
              6) {
            flutterTost('valid sms');
          } else {
            BlocProvider.of<PhoneAuthCubit>(context).enterOTP();
          }
        });
  }
}
