import 'package:flutter/material.dart';
import 'package:netpairchocolate/Utils/AppColors.dart';
import 'package:netpairchocolate/View/Navigationpage/DesktopNavbar.dart';
import 'package:netpairchocolate/View/Navigationpage/MobileDrawer.dart';

class Appbar extends StatelessWidget {
  final Widget body;

  const Appbar({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: AppBar(
                backgroundColor: AppColors.darkbrown,
                elevation: 0,
                centerTitle: true,
                // title: Image.asset(
                //   "assets/Images/NPChocolate01.png",
                //   height: 40,
                //   // fit: BoxFit.contain,
                // ),
                iconTheme: const IconThemeData(color: Colors.black),
              ),
            ),
            drawer: const MobileDrawer(),
            body: SafeArea(child: body),
          );
        } else {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(80),
              child: SafeArea(
                child: Container(
                  color: AppColors.darkbrown,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/Images/NPChocolate01.png",
                        height: 80,
                        // fit: BoxFit.contain,
                      ),
                      Expanded(
                        child: Center(
                          child: DesktopNavbar(),
                        ),
                      ),
                      const SizedBox(width: 60),
                    ],
                  ),
                ),
              ),
            ),
            body: body, // ✅ No nested scroll
          );
        }
      },
    );
  }
}
