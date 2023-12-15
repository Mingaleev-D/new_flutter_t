/*
* @author : Mingaleev D
* @data : 15.12.2023
*/

import 'package:flutter/material.dart';
import 'package:new_flutter_t/components/post_item.dart';

import '../style/app_colors.dart';
import '../style/app_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUserFromServer();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text(
          '5minuteflutter',
          style: TextStyle(color: AppColors.white),
        ),
        centerTitle: false,
        actions: const [
          Icon(
            Icons.location_on_outlined,
            color: AppColors.white,
          ),
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
