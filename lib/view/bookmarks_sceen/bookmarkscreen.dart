import 'package:flutter/material.dart';
import 'package:food_recipee_app/view/dummy_db.dart';
import 'package:food_recipee_app/view/global_widgets/custom_video_card.dart';

class Bookmarkscreen extends StatelessWidget {
  const Bookmarkscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemBuilder: (context, index) => CustomVideoCard(
                width: double.infinity,
                rating: DummyDb.trendingNowList[index]["rating"],
                title: DummyDb.trendingNowList[index]["title"],
                duration: DummyDb.trendingNowList[index]["duration"],
                username: DummyDb.trendingNowList[index]["username"],
                profileimage: DummyDb.trendingNowList[index]["profileimage"],
                imageurl: DummyDb.trendingNowList[index]["imageurl"],
              ),
          separatorBuilder: (context, index) => SizedBox(
                height: 16,
              ),
          itemCount: 10),
    );
  }
}
