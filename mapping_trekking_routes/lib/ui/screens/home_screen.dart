import 'package:flutter/material.dart';
import 'package:mapping_trekking_routes/constants/classes.dart';
import 'package:mapping_trekking_routes/constants/colors.dart';
import 'package:mapping_trekking_routes/constants/dimension.dart';
import 'package:mapping_trekking_routes/store/trail_store/trail_store.dart';
import 'package:mapping_trekking_routes/widget/mountain_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TrailStore _trailStore;

  @override
  void initState() {
    super.initState();
    _trailStore = TrailStore();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BG_COLOR,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: RefreshIndicator(
          color: AppColors.GREEN_COLOR,
          strokeWidth: Dimension.scaleWidth(2, context),
          onRefresh: () => _refreshPage(),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            padding: EdgeInsets.only(
                left: Dimension.scaleWidth(10, context),
                right: Dimension.scaleWidth(10, context),
                bottom: Dimension.scaleHeight(10, context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: Dimension.scaleHeight(20, context),
                ),
                Text(
                  "Good Morning Ashik,",
                  style: TextStyle(
                      fontSize: Dimension.scaleHeight(30, context), fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Dimension.scaleHeight(5, context),
                ),
                Text(
                  "Lets find you a trail for the day...",
                  style: TextStyle(
                      fontSize: Dimension.scaleHeight(15, context), fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: Dimension.scaleHeight(10, context),
                ),
                Container(
                  width: Dimension.screenWidth(context),
                  height: Dimension.scaleHeight(1, context),
                  decoration: BoxDecoration(
                      color: AppColors.BLACK_COLOR.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(Dimension.scaleRadius(2, context))),
                ),
                SizedBox(
                  height: Dimension.scaleHeight(20, context),
                ),
                Text(
                  "Top Trails",
                  style: TextStyle(
                      fontSize: Dimension.scaleHeight(24, context), fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Dimension.scaleHeight(10, context),
                ),
                Container(
                  height: Dimension.scaleHeight(200, context),
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Classes.detailScreen);
                            },
                            child: MountainCard(
                              name: "Ashik",
                              location: "India",
                              starCnt: 4,
                              image:
                                  'https://firebasestorage.googleapis.com/v0/b/mapping-trekking-routes.appspot.com/o/Thumbnails%2FTriund%20Trek%20Loop.jpg?alt=media&token=f09c16d7-6f43-4656-8fbe-374253449b76',
                            ));
                      }),
                ),
                SizedBox(
                  height: Dimension.scaleHeight(20, context),
                ),
                Text(
                  "Regions",
                  style: TextStyle(
                      fontSize: Dimension.scaleHeight(24, context), fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Dimension.scaleHeight(10, context),
                ),
                Container(
                  height: Dimension.scaleHeight(200, context),
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Classes.detailScreen);
                            },
                            child: MountainCard(
                              name: "Ashik",
                              location: "India",
                              starCnt: 4,
                              image:
                                  'https://firebasestorage.googleapis.com/v0/b/mapping-trekking-routes.appspot.com/o/Thumbnails%2FTriund%20Trek%20Loop.jpg?alt=media&token=f09c16d7-6f43-4656-8fbe-374253449b76',
                            ));
                      }),
                ),
                SizedBox(
                  height: Dimension.scaleHeight(20, context),
                ),
                Text(
                  "Cities",
                  style: TextStyle(
                      fontSize: Dimension.scaleHeight(24, context), fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Dimension.scaleHeight(10, context),
                ),
                Container(
                  height: Dimension.scaleHeight(200, context),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, Classes.detailScreen);
                          },
                          child: MountainCard(
                            name: "Ashik",
                            location: "India",
                            starCnt: 4,
                            image:
                                'https://firebasestorage.googleapis.com/v0/b/mapping-trekking-routes.appspot.com/o/Thumbnails%2FTriund%20Trek%20Loop.jpg?alt=media&token=f09c16d7-6f43-4656-8fbe-374253449b76',
                          ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _refreshPage() {}
}
