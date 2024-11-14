import 'package:flutter/material.dart';
import '../models/user.dart';

class UserDetailScreen extends StatelessWidget {
  final User user;

  const UserDetailScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${user.name}',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'E-mail: ${user.email}',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
