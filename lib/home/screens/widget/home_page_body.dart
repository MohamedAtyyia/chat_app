import 'package:chat_app/home/manager/cubit/users_cubit.dart';
import 'package:chat_app/home/screens/widget/list_view_to_show_all_users.dart';
import 'package:chat_app/util/widget/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBageBody extends StatelessWidget {
  const HomeBageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersCubit, UsersState>(
      builder: (context, state) {
        if (state is GetAllUserSuccess) {
          return CustomListViewToShowAllUser(
            allUseres: state.allUsers,
          );
        } else if (state is UsersIsEmpty) {
          return Center(
            child: Text(
              'There is Not Users ',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          );
        } else {
          return const Loading();
        }
      },
    );

  }
}
