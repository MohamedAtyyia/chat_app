import 'package:chat_app/util/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget  {
  const CustomTabBar({super.key});
  @override
  Size get preferredSize =>  Size.fromHeight(50.h);
  @override
  Widget build(BuildContext context) {
    return  AppBar(
              elevation: 0,
              backgroundColor: backgroundColor,
              title:const Text(
                    'ChatApp',
                    style: TextStyle(color: textColor),
                  ),
            
            );
    
    
  }
}