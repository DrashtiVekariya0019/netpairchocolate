import 'package:flutter/material.dart';
import 'package:netpairchocolate/Utils/RouteData.dart';
import 'package:netpairchocolate/View/Navigationpage/Components/DrawerItems.dart';
import 'package:get/get.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // 🔹 Logo at top (aligned to the start)
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Align(
              alignment: Alignment.topLeft, // Align the logo to the top-left
              child: Image.asset(
                "assets/Images/NPChocolate01.png",
                height: 80,
              ),
            ),
          ),

          const SizedBox(height: 10),
          DrawerItem(title: 'HOME',  onTap: () => Get.toNamed(AppRoutes.home),),
          DrawerItem(title: 'CONTACT US',  onTap: () => Get.toNamed(AppRoutes.contactus),),
          DrawerItem(title: 'BULK ENQUIRY',onTap: () => Get.toNamed(AppRoutes.bulkenquiry),),
        ],
      ),
    );
  }
}
