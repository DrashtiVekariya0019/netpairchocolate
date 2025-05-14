import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netpairchocolate/Controller/HomePageController.dart';
import 'package:get/get.dart';
import 'package:netpairchocolate/Support/CommonTextStyle.dart';
import 'package:netpairchocolate/Support/Footer.dart';
import 'package:netpairchocolate/Utils/AppColors.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final isDesktop = constraints.maxWidth > 1200;
      final isTablet =
          constraints.maxWidth > 600 && constraints.maxWidth <= 1200;
      final titleFontSize = isDesktop ? 26.0 : (isTablet ? 20.0 : 14.0);

      double getImageHeight() {
        if (isDesktop) return 330;
        if (isTablet) return 200;
        return 220;
      }

      double getImageWidth() {
        if (isDesktop) {
          return constraints.maxWidth * 0.6;
        }
        return constraints.maxWidth;
      }

      return SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0), // Adjust the value as needed
                  child: CarouselSlider(
                    carouselController: homePageController.carouselController,
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height - 150,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        homePageController.currentIndex.value = index;
                      },
                    ),
                    items: homePageController.slides.map((slide) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(slide['image']!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Center(
                                  child: Text(
                                    slide['text']!,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.white,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 5.0,
                                          color: Colors.black54,
                                          offset: Offset(2, 2),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),

                Positioned(
                  left: 20,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      onPressed: () {
                        homePageController.carouselController.previousPage();
                      },
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      color: Colors.white,
                      onPressed: () {
                        homePageController.carouselController.nextPage();
                      },
                    ),
                  ),
                ),
              ],
            ),
            Obx(() => Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: homePageController.slides.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => homePageController.carouselController
                        .jumpToPage(entry.key),
                    child: Container(
                      width: 10,
                      height: 10,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: homePageController.currentIndex.value == entry.key
                            ? const Color(0xFF000000)
                            : Colors.grey,
                      ),
                    ),
                  );
                }).toList(),
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GetBuilder<HomePageController>(
                builder: (controller) {
                  if (controller.services.isEmpty) {
                    return Center(
                      child: Text(
                        "No Services Available",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    );
                  }
                  return LayoutBuilder(
                    builder: (context, constraints) {
                      int crossAxisCount = isDesktop ? 3 : (isTablet ? 2 : 1);
                      double gridHeight = constraints.maxWidth / crossAxisCount * 1.2;
                      return GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: crossAxisCount,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          childAspectRatio: 0.75,
                        ),
                        itemCount: controller.services.length,
                        itemBuilder: (context, index) {
                          final service = controller.services[index];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: gridHeight * 0.6,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage(service['image'] ??
                                        'assets/Images/placeholder.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                service['title'] ?? "No Title",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.brown,
                                ),
                              ),


                            ],
                          );

                          
                        },
                      );

                    },
                  );
                },
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Image.asset(
                  'assets/Images/Made-with-passion-and-love.png',
                  width: MediaQuery.of(context).size.width * 0.8,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                Text(
                  'Made with passion and love from the pioneers of gourmet chocolate products in the country',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColors.brown,
                  ),
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 16.0,
                  runSpacing: 10.0,
                  alignment: WrapAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.brown),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                      ),
                      child: Text(
                        'PURE CHOCOLATES →',
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: AppColors.brown,
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.brown),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12),
                      ),
                      child: Text(
                        'TROPICAL CHOCOLATES →',
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: AppColors.brown,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            websitefooter(),
          ],
        ),
      );
    });
  }
}