import 'package:flutter/material.dart';
import 'package:food_recipee_app/utils/constants/color_constants.dart';
import 'package:food_recipee_app/view/global_widgets/custom_button.dart';

class RecipeeDetailsScreen extends StatelessWidget {
  RecipeeDetailsScreen(
      {super.key,
      required this.recipeeTitle,
      required this.image,
      required this.rating,
      required this.profileimage,
      required this.username});
  String recipeeTitle;
  String image;
  String rating;
  String username;
  String profileimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recipeeTitle,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.mainblack,
                  fontSize: 24),
            ),
            SizedBox(height: 24),
            Container(
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(image))),
              child: Center(
                child: CircleAvatar(
                  backgroundColor: ColorConstants.lightBlack.withOpacity(.3),
                  child: Icon(
                    Icons.play_arrow,
                    color: ColorConstants.mainwhite,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: ColorConstants.goldenyellow,
                  size: 20,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "$rating",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.mainblack,
                      fontSize: 14),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  "(300 reviews)",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.greyshade2,
                      fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                CircleAvatar(
                  radius: 20.5,
                  backgroundImage: NetworkImage(profileimage),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.mainblack,
                          fontSize: 20),
                    ),
                    Row(
                      children: [
                        Icon(
                          size: 16,
                          Icons.location_on_rounded,
                          color: ColorConstants.primarycolor,
                        ),
                        SizedBox(width: 7),
                        Text(
                          "Bali, Indonasia",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: ColorConstants.greyshade2,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                CustomButton(
                  text: "Follow",
                  onButtonPressed: () {
                    
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
