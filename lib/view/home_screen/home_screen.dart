import 'package:flutter/material.dart';
import 'package:food_recipee_app/utils/constants/color_constants.dart';
import 'package:food_recipee_app/view/global_widgets/custom_video_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //first section
            _titleSection(),
            //section 2 - trending now section
            _trendingNowSection()
          ],
        ),
      ),
    );
  }

  Column _trendingNowSection() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 12,
          ),
          //title section
          child: Row(
            children: [
              Text(
                "Trending Now 🔥",
                style: TextStyle(
                  color: ColorConstants.mainblack,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              Spacer(),
              Text(
                "See all",
                style: TextStyle(
                    color: ColorConstants.primarycolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 4,
              ),
              Icon(
                Icons.arrow_forward_outlined,
                color: ColorConstants.primarycolor,
              )
            ],
          ),
        ),
        SizedBox(height: 16),
        //video play section
        CustomVideoCard(),
      ],
    );
  }

  Column _titleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
          child: Text(
            "Find best recipes\nfor cooking",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: ColorConstants.mainblack),
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search recipes",
                  hintStyle: TextStyle(
                    color: ColorConstants.lightgrey,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorConstants.lightgrey),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorConstants.lightgrey),
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: ColorConstants.lightgrey,
                  )),
            )),
      ],
    );
  }
}
