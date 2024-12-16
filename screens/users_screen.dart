import 'package:flutter/material.dart';
import 'package:rest_api/widgets/users_widget.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) {
          return const UsersWidget();
        },
      ),
    );
  }
}
