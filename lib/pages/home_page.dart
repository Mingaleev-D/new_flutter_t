/*
* @author : Mingaleev D
* @data : 15.12.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_flutter_t/components/post_item.dart';

import '../components/app_toolbar.dart';
import '../style/app_colors.dart';
import '../style/app_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUserFromServer();
    return Scaffold(
      appBar: AppToolbar(
        title: '5munitesflutter',
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svg/ic_location.svg'))
        ],
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return PostItem(user: users[index]);
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 24,
          );
        },
      ),
    );
  }

  mockUserFromServer() {
    for (int i = 0; i < 1000; i++) {
      users.add('User $i');
    }
  }
}
