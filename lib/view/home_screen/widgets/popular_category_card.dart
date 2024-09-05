import 'package:flutter/material.dart';
import 'package:food_recipee_app/utils/constants/color_constants.dart';

class PopularCategoryCard extends StatelessWidget {
  const PopularCategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 231,
          width: 150,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 176,
            decoration: BoxDecoration(
                color: ColorConstants.greyshade3,
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/27402124/pexels-photo-27402124/free-photo-of-summerfood.jpeg?auto=compress&cs=tinysrgb&w=600"),
            backgroundColor: ColorConstants.primarycolor,
            radius: 55,
          ),
        ),
      ],
    );
  }
}
