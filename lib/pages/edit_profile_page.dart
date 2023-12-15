import 'package:flutter/material.dart';
import 'package:new_flutter_t/components/app_textfield.dart';
import 'package:new_flutter_t/components/app_toolbar.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppToolbar(
        title: 'Edit profile',
        actions: [],
      ),
      body: Column(
        children: [
          AppTextField(hiltText: 'First name'),
          AppTextField(hiltText: 'Last name'),
          AppTextField(hiltText: 'Phone number'),
          AppTextField(hiltText: 'Location'),
        ],
      ),
    );
  }
}
