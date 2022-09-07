// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/pages/sign_in_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;

  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together',
  ];

  List<String> subtitles = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/img_onboarding1.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/img_onboarding2.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/img_onboarding3.png',
                  height: 331,
                ),
              ],
              options: CarouselOptions(
                height: 331,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      currentIndex = index;
                    },
                  );
                },
              ),
              carouselController: carouselController,
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 24,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: Column(
                children: [
                  Text(
                    titles[currentIndex],
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semibold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 26),
                  Text(
                    subtitles[currentIndex],
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: currentIndex == 2 ? 38 : 50),
                  currentIndex == 2
                      ? Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: TextButton(
                                onPressed: () {
                                  carouselController.nextPage();
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: purpleColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(56),
                                  ),
                                ),
                                child: Text(
                                  'Get Started',
                                  style: whiteTextStyle.copyWith(
                                    fontWeight: semibold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 24,
                              width: double.infinity,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignInPage(),
                                    ),
                                  );
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  'Sign In',
                                  style: greyTextStyle.copyWith(
                                    fontWeight: regular,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 0 ? blueColor : lightBackgroundColor,
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 1 ? blueColor : lightBackgroundColor,
                              ),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentIndex == 2 ? blueColor : lightBackgroundColor,
                              ),
                            ),
                            Spacer(),
                            SizedBox(
                              height: 50,
                              width: 150,
                              child: TextButton(
                                onPressed: () {
                                  carouselController.nextPage();
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: purpleColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(56),
                                  ),
                                ),
                                child: Text(
                                  'Continue',
                                  style: whiteTextStyle.copyWith(
                                    fontWeight: semibold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
