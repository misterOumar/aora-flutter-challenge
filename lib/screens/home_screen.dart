import 'package:aora/theme/app_pallete.dart';
import 'package:aora/widgets/post_item.dart';
import 'package:aora/widgets/search_input-field.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // variables
  int activeIndex = 0;
  final urlImagesSlider = [
    'assets/images/carrousel_slider1.png',
    'assets/images/carrousel_slider2.png',
    'assets/images/carrousel_slider3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Welcome Back",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14)),
                            ),
                            Text(
                              "jsmastery",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24)),
                            ),
                          ],
                        ),
                        Image.asset('assets/logo/logo-icon.png')
                      ],
                    ),
                    const SizedBox(height: 15),
                    const SearchInput(),
                    const SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Trending Videos",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: AppPallete.whiteColorShade1,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CarouselSlider.builder(
                itemCount: urlImagesSlider.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImagesSlider[index];
                  return buildImage(urlImage, index);
                },
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 0.4,
                  enlargeCenterPage: true,
                  height: 270,
                  onPageChanged: (index, reason) => setState(() {
                    activeIndex = index;
                  }),
                ),
              ),
              const SizedBox(height: 25),
              buildIndicator(),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    PostItem(
                      userName: "Brandon Etter",
                      userAvatar: "avatar-user-2.png",
                      videoTitle: "Woman walks down a Tokyo...",
                      thumbnailImage: "video-preview-1.png",
                    ),
                    SizedBox(height: 45),
                    PostItem(
                      userName: "Brandon Etter",
                      userAvatar: "avatar-user-2.png",
                      videoTitle: "Woman walks down a Tokyo...",
                      thumbnailImage: "video-preview-2.png",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
      effect: const ExpandingDotsEffect(
        dotWidth: 8,
        dotHeight: 6,
        activeDotColor: AppPallete.borderColor,
      ),
      activeIndex: activeIndex,
      count: urlImagesSlider.length);
}

Widget buildImage(String urlImage, int index) => Container(
      width: 175,
      height: 270,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(urlImage), fit: BoxFit.cover),
          color: AppPallete.borderColor,
          borderRadius: BorderRadius.circular(14)),
      margin: const EdgeInsets.symmetric(horizontal: 5),
    );
