import 'package:flutter/material.dart';
import 'package:food_recipee_app/utils/constants/color_constants.dart';
import 'package:food_recipee_app/view/dummy_db.dart';
import 'package:food_recipee_app/view/global_widgets/custom_recipe_card.dart';
import 'package:food_recipee_app/view/global_widgets/custom_video_card.dart';
import 'package:food_recipee_app/view/recipee_details_screen/recipee_details_screen.dart';

class Bookmarkscreen extends StatelessWidget {
  const Bookmarkscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.transparent,
            title: Text(
              "Saved recipes",
              style: TextStyle(
                  color: ColorConstants.mainblack, fontWeight: FontWeight.w600),
            ),
            bottom: TabBar(
              padding: EdgeInsets.symmetric(horizontal: 20),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: ColorConstants.mainwhite,
              unselectedLabelColor: ColorConstants.primarycolor,
              dividerHeight: 0,
              indicator: BoxDecoration(
                  color: ColorConstants.primarycolor,
                  borderRadius: BorderRadius.circular(10)),
              tabs: [
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Video"),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Recipee"),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [_buildVideosTab(), _buildRecipeesTab()])),
    );
  }

  ListView _buildRecipeesTab() {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        itemBuilder: (context, index) => CustomRecipeCard(
              title: DummyDb.trendingNowList[index]["title"],
              imageurl: DummyDb.trendingNowList[index]["imageurl"],
              rating: DummyDb.trendingNowList[index]["rating"],
            ),
        separatorBuilder: (context, index) => SizedBox(
              height: 16,
            ),
        itemCount: 10);
  }

  ListView _buildVideosTab() {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        itemBuilder: (context, index) => CustomVideoCard(
              onCardTaped: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecipeeDetailsScreen(
                        recipeeTitle: DummyDb.trendingNowList[index]["title"],
                        imageurl: DummyDb.trendingNowList[index]["imageurl"],
                        rating: DummyDb.trendingNowList[index]["rating"],
                        profileimage: DummyDb.trendingNowList[index]
                            ["profileimage"],
                        username: DummyDb.trendingNowList[index]["username"],
                      ),
                    ));
              },
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
        itemCount: 10);
  }
}
