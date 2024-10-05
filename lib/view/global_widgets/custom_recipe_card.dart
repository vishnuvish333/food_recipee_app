import 'package:flutter/material.dart';
import 'package:food_recipee_app/utils/constants/color_constants.dart';

class CustomRecipeCard extends StatelessWidget {
  const CustomRecipeCard(
      {super.key,
      required this.rating,
      required this.title,
      required this.imageurl});
  final String rating;
  final String title;
  final String imageurl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 223,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(imageurl))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: ColorConstants.lightBlack.withOpacity(.3)),
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: ColorConstants.mainwhite,
                    ),
                    Text(
                      rating,
                      style: TextStyle(
                          color: ColorConstants.mainwhite,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    )
                  ],
                ),
              ),
              Spacer(),
              CircleAvatar(
                backgroundColor: ColorConstants.mainwhite,
                child: Icon(
                  Icons.more_horiz,
                  color: ColorConstants.primarycolor,
                ),
              )
            ],
          ),
          Spacer(),
          SizedBox(
            width: 162,
            child: Text(
              title,
              maxLines: 3,
              style: TextStyle(
                  color: ColorConstants.mainwhite,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "12 ingredients | 40 min",
            style: TextStyle(
                color: ColorConstants.mainwhite,
                fontWeight: FontWeight.normal,
                fontSize: 12),
          ),
        ],
      ),
    );
  }
}
