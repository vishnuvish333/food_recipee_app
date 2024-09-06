import 'package:flutter/material.dart';
import 'package:food_recipee_app/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  String rating;
  double width;
  String title;
  String duration;
  String username;
  String profileimage;
  String imageurl;
  CustomVideoCard({
    this.width = 280,
    required this.rating,
    required this.title,
    required this.duration,
    required this.username,
    required this.profileimage,
    required this.imageurl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            height: 180,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage("$imageurl"))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            "$rating",
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
                      child: Icon(Icons.bookmark_outline),
                    )
                  ],
                ),
                CircleAvatar(
                  backgroundColor: ColorConstants.lightBlack.withOpacity(.3),
                  child: Icon(
                    Icons.play_arrow,
                    color: ColorConstants.mainwhite,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ColorConstants.lightBlack.withOpacity(.3)),
                    child: Text(
                      "$duration",
                      style: TextStyle(
                          color: ColorConstants.mainwhite,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$title",
                style: TextStyle(
                    color: ColorConstants.mainblack,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Icon(Icons.more_horiz)
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage("$profileimage"),
                radius: 16,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "$username",
                style: TextStyle(
                    color: ColorConstants.greyshade2,
                    fontSize: 12,
                    fontWeight: FontWeight.normal),
              )
            ],
          )
        ],
      ),
    );
  }
}
