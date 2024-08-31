import 'package:flutter/material.dart';
import 'package:food_recipee_app/utils/constants/color_constants.dart';
import 'package:food_recipee_app/utils/constants/image_constsants.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //first section - for building the background image
          _buildBackgroundImage(),

          //second section - gradient with start cooking button
          _buildGradientSection(),
        ],
      ),
    );
  }

  Widget _buildGradientSection() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 64, vertical: 60),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.transparent, ColorConstants.mainblack],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Let's Cooking",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 56,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            Text(
              "Find best recipes for cooking",
              style: TextStyle(
                  color: ColorConstants.mainwhite,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.primarycolor,
              ),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Start Cooking",
                    style: TextStyle(
                        color: ColorConstants.mainwhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: ColorConstants.mainwhite,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(ImageConstsants.ONBOARDING_SCREEN_BG))),
    );
  }
}
