import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mapping_trekking_routes/constants/classes.dart';
import 'package:mapping_trekking_routes/constants/colors.dart';
import 'package:mapping_trekking_routes/constants/dimension.dart';
import 'package:mapping_trekking_routes/store/search_store/search_store.dart';
import 'package:mapping_trekking_routes/store/trail_store/trail_store.dart';
import 'package:mapping_trekking_routes/widget/mountain_card.dart';
import 'package:mapping_trekking_routes/widget/search_card.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late SearchStore _searchStore;

  @override
  void initState() {
    super.initState();
    _searchStore = SearchStore();
    _searchStore.getTrails();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.BG_COLOR,
      body: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top + 20,
            left: Dimension.scaleWidth(10, context),
            right: Dimension.scaleWidth(10, context),
            bottom: Dimension.scaleHeight(10, context)),
        child: Container(
          width: Dimension.screenWidth(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _searchStore.textEditingController,
                showCursor: true,
                decoration: InputDecoration(
                  hintText: 'Search for your trail',
                  hintStyle: const TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onChanged: (value) {
                  _searchStore.searchTrail(value);
                },
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
              SizedBox(
                height: Dimension.scaleHeight(10, context),
              ),
              Text(
                "Searched Results",
                style: TextStyle(
                    fontSize: Dimension.scaleHeight(18, context), fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              SizedBox(
                height: Dimension.scaleHeight(15, context),
              ),
              Observer(builder: (context) {
                return Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                        itemCount: _searchStore.searchedTrail.length,
                        itemBuilder: (_, index) {
                          print("asdfasdfadfasdfasdfadsfadf${_searchStore.searchedTrail.length}");
                          if (_searchStore.searchedTrail.isEmpty) {
                            return const Center(
                              child: CircularProgressIndicator(
                                color: AppColors.GREEN_COLOR,
                                strokeWidth: 2.0,
                              ),
                            );
                          }

                          return GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, Classes.detailScreen,
                                    arguments: _searchStore.searchedTrail[index]);
                              },
                              child: SearchMountainCard(
                                name: _searchStore.searchedTrail[index].name,
                                location: _searchStore.searchedTrail[index].location,
                                starCnt: _searchStore.searchedTrail[index].starCnt,
                                image: _searchStore.searchedTrail[index].image,
                              ));
                        }));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
