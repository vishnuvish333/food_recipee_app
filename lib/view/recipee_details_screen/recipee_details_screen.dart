import 'package:flutter/material.dart';
import 'package:food_recipee_app/utils/constants/color_constants.dart';
import 'package:food_recipee_app/view/global_widgets/custom_button.dart';
import 'package:food_recipee_app/view/global_widgets/custom_list_tile.dart';

class RecipeeDetailsScreen extends StatelessWidget {
  RecipeeDetailsScreen(
      {super.key,
      required this.recipeeTitle,
      required this.imageurl,
      required this.rating,
      required this.profileimage,
      required this.username});
  String recipeeTitle;
  String imageurl;
  String rating;
  String username;
  String profileimage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTitleSection(),
              SizedBox(
                height: 26,
              ),
              _buildIngredientsSection(),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildIngredientsSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Incredients",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: ColorConstants.mainblack),
            ),
            Text(
              "5 items",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: ColorConstants.greyshade2),
            )
          ],
        ),
        ListView.separated(
            padding: EdgeInsets.symmetric(vertical: 16),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => CustomListTile(
                  haveArrow: false,
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 12,
                ),
            itemCount: 10)
      ],
    );
  }

  Column _buildTitleSection() {
    return Column(
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
                  fit: BoxFit.cover, image: NetworkImage(imageurl))),
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
              onButtonPressed: () {},
            )
          ],
        )
      ],
    );
  }
}
