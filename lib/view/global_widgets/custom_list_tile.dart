import 'package:flutter/material.dart';
import 'package:food_recipee_app/utils/constants/color_constants.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.haveArrow = false,
  });
  final bool haveArrow;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorConstants.greyshade3),
      child: Row(
        children: [
          Container(
            height: 52,
            width: 52,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.mainwhite),
            child: Icon(Icons.coffee),
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            "Eggs",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ColorConstants.mainblack),
          ),
          Spacer(),
          Text(
            "200g",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: ColorConstants.greyshade2),
          ),
          SizedBox(width: 8),
          haveArrow
              ? Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(Icons.arrow_forward_outlined),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
