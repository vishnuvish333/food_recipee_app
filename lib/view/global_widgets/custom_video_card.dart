import 'package:flutter/material.dart';
import 'package:food_recipee_app/utils/constants/color_constants.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 180,
      width: 280,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.pexels.com/photos/1527603/pexels-photo-1527603.jpeg?auto=compress&cs=tinysrgb&w=600"))),
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
                      "4,5",
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
                "15:10",
                style: TextStyle(
                    color: ColorConstants.mainwhite,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}