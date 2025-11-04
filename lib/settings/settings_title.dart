import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({required this.callback,required this.title,required this.icon,super.key});

  final Icon icon;
  final String title;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title),
      onTap: callback,
    );
  }
}

