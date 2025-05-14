import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const DrawerItem({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
    );
  }
}

class DrawerExpansionItem extends StatelessWidget {
  final String title;
  final List<String> children;

  const DrawerExpansionItem({super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      children: children
          .map((child) => ListTile(
        title: Text(child),
        onTap: () {},
      ))
          .toList(),
    );
  }
}
