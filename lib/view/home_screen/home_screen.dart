import 'package:flutter/material.dart';
import 'package:food_recipee_app/utils/constants/color_constants.dart';
import 'package:food_recipee_app/view/dummy_db.dart';
import 'package:food_recipee_app/view/global_widgets/custom_video_card.dart';
import 'package:food_recipee_app/view/home_screen/widgets/popular_category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainwhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //first section
              _titleSection(),
              //section 2 - trending now section
              _trendingNowSection(),
              //section 3 - popular catagory section
              _popularCategorySection()
            ],
          ),
        ),
      ),
    );
  }

  Widget _popularCategorySection() {
    return DefaultTabController(
      length: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Popular Category",
                style: TextStyle(
                  color: ColorConstants.mainblack,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TabBar(
              padding: EdgeInsets.symmetric(horizontal: 20),
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: ColorConstants.mainwhite,
              unselectedLabelColor: ColorConstants.primarycolor,
              dividerHeight: 0,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              indicator: BoxDecoration(
                  color: ColorConstants.primarycolor,
                  borderRadius: BorderRadius.circular(10)),
              tabs: [
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Salad"),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Breakfast"),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Appetizer"),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Noodle"),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Lunch"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 231,
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => PopularCategoryCard(),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 16,
                      ),
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }

  Widget _trendingNowSection() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 12,
          ),
          //title section
          child: Row(
            children: [
              Text(
                "Trending Now 🔥",
                style: TextStyle(
                  color: ColorConstants.mainblack,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              Spacer(),
              Text(
                "See all",
                style: TextStyle(
                    color: ColorConstants.primarycolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 4,
              ),
              Icon(
                Icons.arrow_forward_outlined,
                color: ColorConstants.primarycolor,
              )
            ],
          ),
        ),
        SizedBox(height: 16),
        //video play list section

        SizedBox(
          height: 256,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomVideoCard(
                    rating: DummyDb.trendingNowList[index]["rating"],
                    title: DummyDb.trendingNowList[index]["title"],
                    duration: DummyDb.trendingNowList[index]["duration"],
                    username: DummyDb.trendingNowList[index]["username"],
                    profileimage: DummyDb.trendingNowList[index]
                        ["profileimage"],
                        imageurl: DummyDb.trendingNowList[index]["imageurl"],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 16,
                  ),
              itemCount: 10),
        ),
      ],
    );
  }

  Widget _titleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
          child: Text(
            "Find best recipes\nfor cooking",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: ColorConstants.mainblack),
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search recipes",
                  hintStyle: TextStyle(
                    color: ColorConstants.greyshade1,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorConstants.greyshade1),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorConstants.greyshade1),
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: ColorConstants.greyshade1,
                  )),
            )),
      ],
    );
  }
}
