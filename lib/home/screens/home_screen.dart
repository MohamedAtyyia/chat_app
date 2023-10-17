import 'package:chat_app/home/manager/cubit/users_cubit.dart';
import 'package:chat_app/home/screens/widget/custom_appbar.dart';
import 'package:chat_app/home/screens/widget/home_page_body.dart';
import 'package:chat_app/story/cubit/story_cubit.dart';
import 'package:chat_app/story/view/screen/story_screen.dart';
import 'package:chat_app/util/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UsersCubit()..getAllUsers(),
        ),
        BlocProvider(
          create: (context) => StoryCubit(),
        ),
      ],
      child: const SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: backgroundColor,
            appBar: CustomTabBar(),
            body: TabBarView(
              children: [HomeBageBody(), StoryScreen()],
            ),
          ),
        ),
      ),
    );
  }
}
