import 'package:chat_app/home/screens/widget/list_tile_chat.dart';
import 'package:chat_app/profile/data/model/profile_model.dart';
import 'package:flutter/widgets.dart';

class CustomListViewToShowAllUser extends StatelessWidget {
  const CustomListViewToShowAllUser({
    super.key,
    required this.allUseres,
  });
  final List<ProfileModel> allUseres;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allUseres.length,
      itemBuilder: (context, index) => ListTileChate(
        oneUser: allUseres[index],
      ),
    );
  }

  // ListView _buildListViewToShowAllUsers(
  //     {required List<ProfileModel> allUseres}) {
  //   return ListView.builder(
  //       itemCount: allUseres.length,
  //       itemBuilder: (context, index) => ListTileChate(
  //             oneUser: allUseres[index],
  //           ));
  // }
}
