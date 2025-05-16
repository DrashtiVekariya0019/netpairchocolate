import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netpairchocolate/Support/CommonTextStyle.dart';
import 'package:netpairchocolate/Utils/AppColors.dart';
import 'package:netpairchocolate/Utils/RouteData.dart';

class NavItem extends StatefulWidget {
  final String title;
  final VoidCallback onTap;

  const NavItem({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: InkWell(
          onTap: widget.onTap,
          hoverColor: Colors.grey.withOpacity(0.1),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              widget.title,
              style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: AppColors.brown,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavDropdownItem extends StatefulWidget {
  final String title;
  final List<String> items;

  const NavDropdownItem({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  State<NavDropdownItem> createState() => _NavDropdownItemState();
}

class _NavDropdownItemState extends State<NavDropdownItem> {
  // final NavigationController navigationController =
  // Get.put(NavigationController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // navigationController.onInit();
  }

  // void _handleNavigation(String item) {
  //   switch (widget.title) {
  //     case 'ABOUT US':
  //       switch (item) {
  //         case 'Our Team':
  //           Navigator.pushNamed(context, AppRoutes.aboutus, arguments: {
  //             'title': 'Our Team',
  //             // 'imagePath': 'assets/Images/mlai_1.png',
  //             // 'serviceData': navigationController.aiServicesData
  //           });
  //           break;
  //         case 'Production Facalities':
  //           Get.toNamed('/Production Facalities');
  //           break;
  //       }
  //       break;
  //
  //     case 'BRANDS':
  //       switch (item) {
  //         case 'Our Team':
  //           // Navigator.pushNamed(context, AppRoutes.Aboutus, arguments: {
  //           //   'title': 'Our Team',
  //           //   // 'imagePath': 'assets/Images/mlai_1.png',
  //           //   // 'serviceData': navigationController.aiServicesData
  //           // });
  //           break;
  //         case 'Production Facalities':
  //           Get.toNamed('/Production Facalities');
  //           break;
  //       }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: PopupMenuButton<String>(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Text(
              widget.title,
              style: GoogleFonts.montserrat(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: AppColors.black,
            ),
          ],
        ),
        itemBuilder: (context) => widget.items
            .map(
              (item) => PopupMenuItem(
                value: item,
                child: Text(
                  item,
                  style: GoogleFonts.montserrat(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
            )
            .toList(),
        // onSelected: (value) {
        //   setState(() {
        //     _handleNavigation(value);
        //   });
        // },
      ),
    );
  }
}
