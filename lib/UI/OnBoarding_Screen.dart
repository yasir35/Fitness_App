import 'package:fitness_app/constants.dart';
import 'package:fitness_app/extension.dart';
import 'package:fitness_app/UI/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = context.mediaQueryHeight;
    double screenWidth = context.mediaQueryWidth;

    return Scaffold(
      body: Container(
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() => isLastPage = index == 2);
          },
          children: [
            Container(
              color: kBackgroundColor,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/1.png',
                    fit: BoxFit.cover,
                    width: screenWidth,
                  ),
                  20.ph,
                  Text('Welcome to Fitness App', style: kAppBarTextStyle),
                  5.ph,
                  Text('Achieve your fitness goals with our app.',
                      style: GoogleFonts.rajdhani(
                        color: kTextColor,
                      ))
                ],
              ),
            ),
            Container(
              color: kBlueColor,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/2.png',
                    fit: BoxFit.cover,
                    width: screenWidth,
                  ),
                  20.ph,
                  Text('Track Your Progress', style: kAppBarTextStyle),
                  5.ph,
                  Text('Monitor your workouts and nutrition easily.',
                      style: GoogleFonts.rajdhani(
                        color: kTextColor,
                      ))
                ],
              ),
            ),
            Container(
              color: kBlueLightColor,
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/3.png',
                    fit: BoxFit.cover,
                    width: screenWidth,
                  ),
                  Text('Stay Fit, Stay Healthy', style: kAppBarTextStyle),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: kActiveIconColor,
                  minimumSize: Size.fromHeight(screenHeight * 0.08)),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              child: const Text(
                'Get Started',
                style: TextStyle(
                    fontSize: 24,
                    color: kTextColor,
                    fontWeight: FontWeight.w700),
              ))
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: screenHeight * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        controller.jumpToPage(2);
                      },
                      child: const Text('Skip')),
                  Center(
                    child:
                        SmoothPageIndicator(controller: controller, count: 3),
                  ),
                  TextButton(
                      onPressed: () {
                        controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                      child: const Text('Next'))
                ],
              ),
            ),
    );
  }
}
