import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netpairchocolate/Utils/RouteData.dart';
import 'package:netpairchocolate/View/Navigationpage/Components/NavItem.dart';

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // ✅ Items Centered
      children: [
        NavItem(
          title: '    HOME    ',
          onTap: () => Get.toNamed(AppRoutes.home),
        ),
        const SizedBox(width: 20),
        NavItem(
          title: 'CONTACT US',
          onTap: () => Get.toNamed(AppRoutes.contactus),
        ),
        const SizedBox(width: 20),
        NavItem(
          title: 'BULK ENQUIRY',
          onTap: () => Get.toNamed(AppRoutes.bulkenquiry),
        ),
      ],
    );
  }
}
