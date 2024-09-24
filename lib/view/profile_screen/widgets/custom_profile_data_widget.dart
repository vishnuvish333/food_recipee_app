import 'package:flutter/material.dart';
import 'package:food_recipee_app/utils/constants/color_constants.dart';

class CustomProfileDataWidget extends StatelessWidget {
  const CustomProfileDataWidget({
    super.key,
    required this.title,
    required this.count,
  });
  final String title;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              color: ColorConstants.greyshade2,
              fontWeight: FontWeight.normal,
              fontSize: 12),
        ),
        SizedBox(height: 2),
        Text(
          count,
          style: TextStyle(
              color: ColorConstants.mainblack,
              fontWeight: FontWeight.w600,
              fontSize: 20),
        )
      ],
    );
  }
}
