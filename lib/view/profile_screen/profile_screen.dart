import 'package:flutter/material.dart';
import 'package:food_recipee_app/utils/constants/color_constants.dart';
import 'package:food_recipee_app/view/profile_screen/widgets/custom_profile_data_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Profile",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: ColorConstants.mainblack,
            fontSize: 24,
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: Column(
        children: [
          _buildProfileImageSection(),
          _buildProfileDataSection(),
          Divider(),
          _buildTabSection()
        ],
      ),
    );
  }

  Widget _buildTabSection() => Column();

  Widget _buildProfileDataSection() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomProfileDataWidget(
                title: "Recipe",
                count: "30",
              ),
              CustomProfileDataWidget(
                title: "Videos",
                count: "55",
              ),
              CustomProfileDataWidget(
                title: "Followers",
                count: "140k",
              ),
              CustomProfileDataWidget(
                title: "Following",
                count: "120",
              ),
            ],
          ),
        ),
      );

  Widget _buildProfileImageSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600"),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorConstants.primarycolor)),
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                      color: ColorConstants.primarycolor,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
              )
            ],
          ),
          SizedBox(height: 16),
          Text(
            "Name",
            style: TextStyle(
                color: ColorConstants.mainblack,
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
          SizedBox(height: 12),
          Text(
            "Hello world I’m Alessandra Blair, I’m from Italy 🇮🇹 I love cooking so much!",
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: ColorConstants.greyshade2,
                fontWeight: FontWeight.normal,
                fontSize: 12),
          ),
        ],
      ),
    );
  }
}
