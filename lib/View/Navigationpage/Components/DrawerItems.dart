import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // GoogleFonts के लिए जरूरी
import 'package:netpairchocolate/Utils/AppColors.dart';


class DrawerItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const DrawerItem({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.montserrat(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: AppColors.brown,
        ),
      ),
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
      title: Text(
        title,
        style: GoogleFonts.montserrat(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: AppColors.brown,
        ),
      ),
      children: children
          .map((child) => ListTile(
        title: Text(
          child,
          style: GoogleFonts.montserrat(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: AppColors.brown,
          ),
        ),
      ))
          .toList(),
    );
  }
}
