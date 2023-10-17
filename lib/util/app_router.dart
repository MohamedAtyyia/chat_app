import 'package:chat_app/home/screens/chat.dart';
import 'package:chat_app/home/screens/home_screen.dart';
import 'package:chat_app/profile/data/model/profile_model.dart';
import 'package:chat_app/profile/data/repo/home_repo_imple.dart';
import 'package:chat_app/profile/manager/cubit/profile_cubit.dart';
import 'package:chat_app/profile/screens/profile_screen.dart';
import 'package:chat_app/auth/screens/otp_screen.dart';
import 'package:chat_app/auth/screens/phone_login_screen.dart';
import 'package:chat_app/auth/screens/screen_agree_to_condation.dart';
import 'package:chat_app/story/cubit/story_cubit.dart';
import 'package:chat_app/story/view/screen/add_story_text_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static const String screenAgreeToCondation = '/screenAgreeToCondation';
  static const String phoneLoginScreen = '/honeLoginScreen';
  static const String otpScreen = '/otpScreen';
  static const String profileScreen = '/profileScreen';
  static const String homeScreen = '/homescreen';
  static const String chatScreen = '/chatscreen';
  static const String storyTextMakerScreen = '/storyTextMakerScreen';

  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case screenAgreeToCondation:
        return MaterialPageRoute(
            builder: (_) => const ScreenAgreeToCondation());
      case phoneLoginScreen:
        return MaterialPageRoute(builder: (_) => const PhoneLoginScreen());
      case otpScreen:
      final phoneNumber = settings.arguments as String;
        return MaterialPageRoute(builder: (_) =>  OTOScreen(phoneNumberl: phoneNumber,));
      case profileScreen:
            final phoneNumber = settings.arguments as String;

        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => ProfileCubit(
                    HomeRepoImple(),
                  ),
              child:  ProfileScreen(phoneNumber: phoneNumber,)),
        );
      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case chatScreen:
      final user = settings.arguments as ProfileModel;
        return MaterialPageRoute(builder: (_) =>   ChatScreen(dataofUser: user,));
        case storyTextMakerScreen:
        return MaterialPageRoute(builder: (_) =>  BlocProvider(
          create: (context) => StoryCubit(),
          child: StoryTextMakerScreen()));
    }
    
  }
}
