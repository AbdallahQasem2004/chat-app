import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String email;
  final VoidCallback onTap;

  const ChatTile({
    super.key,
    required this.name,
    required this.email,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        child: Text(name[0].toUpperCase()),
      ),
      title: Text(name),
      subtitle: Text(email),
    );
  }
}
