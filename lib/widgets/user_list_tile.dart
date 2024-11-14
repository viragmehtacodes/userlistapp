import 'package:flutter/material.dart';
import '../models/user.dart';

class UserListTile extends StatelessWidget {
  final User user;
  final VoidCallback onTap;

  const UserListTile({super.key, required this.user, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.name),
      subtitle: Text(user.email),
      onTap: onTap,
    );
  }
}
