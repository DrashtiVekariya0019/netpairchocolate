import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  final List<Map<String, String>> slides = [
    {
      'text':'We are a planter, procurer,\nand maker of pure & Tropical chocolates\nfor over 3 decades.',
      'image':'assets/Images/homepage.jpg',
    },
    {
     'text':'We are renowned in our industry\nfor our wide range of shapes and fillings,\nmade to world-class standards.',
      'image':'assets/Images/chocolate3.jpg',
    },
    {
    'text':'The finest chocolate comes from\ntechnical expertise and manufacturing excellence.',
    'image':'assets/Images/homepage3.jpg',
    },

  ];
  final List<Map<String, String>> services = [
    {
      'image': 'assets/Images/productionfacilities.jpg',
      'title': 'Production Facilities',
    },
    {
      'image': 'assets/Images/chocolate3.jpg',
      'title': 'Private and White Labels',
    },
    {
      'image': 'assets/Images/Corporate-Gifting.jpg',
      'title': 'Corporate Gifting',
    },
  ];



  RxInt currentIndex = 0.obs;
  int currentIndex2 = 0;
  final CarouselSliderController carouselController =
  CarouselSliderController();
}
