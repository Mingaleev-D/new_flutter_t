/*
* @author : Mingaleev D
* @data : 15.12.2023
*/

import 'package:flutter/material.dart';

import '../style/app_text.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key, required this.user});

  final String user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/account_header.png',
                height: 40,
                width: 40,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Image.asset(
            'assets/temp/post1.jpg',
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'На картинке изображён городской пейзаж Токио - одного из самых крупных и густонаселённых городов мира',
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}
