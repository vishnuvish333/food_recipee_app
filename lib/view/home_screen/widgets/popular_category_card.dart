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
            padding: EdgeInsets.all(12),
            height: 176,
            decoration: BoxDecoration(
                color: ColorConstants.greyshade3,
                borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Pepper sweetcorn ramen",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: ColorConstants.mainblack,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Time",
                          style: TextStyle(
                              fontSize: 12, color: ColorConstants.greyshade1),
                        ),
                        Text(
                          "20 mins",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: ColorConstants.mainblack),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: ColorConstants.mainwhite,
                      child: Icon(
                        Icons.bookmark_border,
                        size: 16,
                      ),
                    )
                  ],
                )
              ],
            ),
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
