import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mapping_trekking_routes/constants/classes.dart';
import 'package:mapping_trekking_routes/constants/colors.dart';
import 'package:mapping_trekking_routes/constants/dimension.dart';
import 'package:mapping_trekking_routes/store/trail_store/trail_store.dart';
import 'package:mapping_trekking_routes/widget/mountain_card.dart';
import 'package:mobx/mobx.dart';

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
    _trailStore.getTrails();
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
          onRefresh: () => _trailStore.getTrails(),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            padding: EdgeInsets.only(
                left: Dimension.scaleWidth(10, context),
                right: Dimension.scaleWidth(10, context),
                bottom: Dimension.scaleHeight(10, context)),
            child: Observer(builder: (context) {
              final FutureStatus _status = _trailStore.trails.status;
              switch (_status) {
                case FutureStatus.pending:
                  return const CircularProgressIndicator(
                    color: AppColors.GREEN_COLOR,
                    strokeWidth: 2.0,
                  );
                case FutureStatus.rejected:
                  return const Center(
                    child: Text("Something went wrong"),
                  );
                case FutureStatus.fulfilled:
                  if (_trailStore.trails == null) {
                    return const Center(
                      heightFactor: 500,
                      child:  CircularProgressIndicator(
                        color: AppColors.GREEN_COLOR,
                        strokeWidth: 2.0,
                      ),
                    );
                  } else if (_trailStore.flag || _trailStore.trails.value == null) {
                    return const Center(
                      child:  CircularProgressIndicator(
                        color: AppColors.GREEN_COLOR,
                        strokeWidth: 2.0,
                      ),
                    );
                  } else if (_trailStore.trails != null && _trailStore.trails.value!.isNotEmpty) {
                    return _showData();
                  }

                  return const Center(
                    child: Text("Something went wrong"),
                  );
              }
            }),
          ),
        ),
      ),
    );
  }

  Widget _showData() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: Dimension.scaleHeight(20, context),
        ),
        _staticData(),
        SizedBox(
          height: Dimension.scaleHeight(20, context),
        ),
        _topTails(),
        SizedBox(
          height: Dimension.scaleHeight(20, context),
        ),
        _regions(),
        SizedBox(
          height: Dimension.scaleHeight(20, context),
        ),
        _cities(),
        SizedBox(
          height: Dimension.scaleHeight(20, context),
        ),
        _allTrails(),
      ],
    );
  }

  Widget _topTails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Top Trails",
          style:
              TextStyle(fontSize: Dimension.scaleHeight(24, context), fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: Dimension.scaleHeight(10, context),
        ),
        Observer(builder: (context) {
          return SizedBox(
            height: Dimension.scaleHeight(220, context),
            child: ListView.builder(
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                scrollDirection: Axis.horizontal,
                itemCount: _trailStore.topTrails.length,
                itemBuilder: (_, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Classes.detailScreen,
                            arguments: _trailStore.topTrails[index]);
                      },
                      child: MountainCard(
                        name: _trailStore.topTrails[index].name,
                        location: _trailStore.topTrails[index].location,
                        starCnt: _trailStore.topTrails[index].starCnt,
                        image: _trailStore.topTrails[index].image,
                      ));
                }),
          );
        }),
      ],
    );
  }

  Widget _regions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Regions",
          style:
              TextStyle(fontSize: Dimension.scaleHeight(24, context), fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: Dimension.scaleHeight(10, context),
        ),
        Observer(builder: (context) {
          return SizedBox(
            height: Dimension.scaleHeight(220, context),
            child: ListView.builder(
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                scrollDirection: Axis.horizontal,
                itemCount: _trailStore.regions.length,
                itemBuilder: (_, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Classes.detailScreen,
                            arguments: _trailStore.topTrails[index]);
                      },
                      child: MountainCard(
                        name: _trailStore.regions[index].name,
                        location: _trailStore.regions[index].location,
                        starCnt: _trailStore.regions[index].starCnt,
                        image: _trailStore.regions[index].image,
                      ));
                }),
          );
        }),
      ],
    );
  }

  Widget _cities() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Cities",
          style:
              TextStyle(fontSize: Dimension.scaleHeight(24, context), fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: Dimension.scaleHeight(10, context),
        ),
        Observer(builder: (context) {
          return SizedBox(
            height: Dimension.scaleHeight(220, context),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              scrollDirection: Axis.horizontal,
              itemCount: _trailStore.cities.length,
              itemBuilder: (_, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Classes.detailScreen,
                          arguments: _trailStore.topTrails[index]);
                    },
                    child: MountainCard(
                      name: _trailStore.cities[index].name,
                      location: _trailStore.cities[index].location,
                      starCnt: _trailStore.cities[index].starCnt,
                      image: _trailStore.cities[index].image,
                    ));
              },
            ),
          );
        }),
      ],
    );
  }

  Widget _staticData() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Good Morning Ashik,",
          style: TextStyle(
              fontSize: Dimension.scaleHeight(30, context),
              fontWeight: FontWeight.bold,
              foreground: Paint()..shader = AppColors.linearGradient),
        ),
        SizedBox(
          height: Dimension.scaleHeight(5, context),
        ),
        Text(
          "Lets find you a trail for the day...",
          style:
              TextStyle(fontSize: Dimension.scaleHeight(15, context), fontStyle: FontStyle.italic),
        ),
        SizedBox(
          height: Dimension.scaleHeight(10, context),
        ),
        Container(
          width: Dimension.screenWidth(context),
          height: Dimension.scaleHeight(1, context),
          decoration: BoxDecoration(
              color: AppColors.BLACK_COLOR.withOpacity(0.1),
              borderRadius: BorderRadius.circular(Dimension.scaleRadius(2, context))),
        ),
      ],
    );
  }

  Widget _allTrails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "All Trails",
          style:
              TextStyle(fontSize: Dimension.scaleHeight(24, context), fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: Dimension.scaleHeight(10, context),
        ),
        Observer(builder: (context) {
          if (_trailStore.trails.value!.isNotEmpty) {
            return SizedBox(
              height: Dimension.scaleHeight(220, context),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                scrollDirection: Axis.horizontal,
                itemCount: _trailStore.trails.value!.length,
                itemBuilder: (_, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Classes.detailScreen,
                            arguments: _trailStore.topTrails[index]);
                      },
                      child: MountainCard(
                        name: _trailStore.trails.value![index].name,
                        location: _trailStore.trails.value![index].location,
                        starCnt: _trailStore.trails.value![index].starCnt,
                        image: _trailStore.trails.value![index].image,
                      ));
                },
              ),
            );
          }

          return const Center(
            child: Text("Something went wrong"),
          );
        }),
      ],
    );
  }
}
