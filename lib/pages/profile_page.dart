/*
* @author : Mingaleev D
* @data : 15.12.2023
*/

import 'package:flutter/material.dart';
import 'package:new_flutter_t/style/app_text.dart';

import '../components/app_toolbar.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppToolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed('/edit_page');
                  break;
                case ProfileMenu.logout:
                  print('logout');
                  break;
                default:
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: ProfileMenu.edit,
                  child: Text('Edit'),
                ),
                const PopupMenuItem(
                  value: ProfileMenu.logout,
                  child: Text('Log out'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(90),
            child: Image.asset(
              'assets/temp/user1.png',
              width: 90,
              height: 90,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Mahdi Mirzakhani',
            style: AppText.header2,
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'Madagascar',
            style: AppText.subtitle3,
          ),
          const SizedBox(
            height: 12,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '333',
                    style: AppText.header2,
                  ),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '33',
                    style: AppText.header2,
                  ),
                  Text('Posts'),
                ],
              ),
              Column(
                children: [
                  Text(
                    '33',
                    style: AppText.header2,
                  ),
                  Text('Following'),
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
