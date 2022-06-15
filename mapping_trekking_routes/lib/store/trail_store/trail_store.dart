import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:mapping_trekking_routes/data/api_repo.dart';
import 'package:mapping_trekking_routes/model/trail.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'trail_store.g.dart';

class TrailStore = _TrailStore with _$TrailStore;

abstract class _TrailStore with Store {
  SharedPreferences? sharedPreferences;
/**********************************************************************************/
  ///OBSERVER

  @observable
  ObservableFuture<List<Trail>?> trails = ObservableFuture.value(null);

  @observable
  List<Trail> topTrails = [];

  @observable
  List<Trail> cities = [];

  @observable
  List<Trail> regions = [];

  @observable
  bool flag = false;

  @observable
  String? name;
/**********************************************************************************/
  ///ACTIONS

  @action
  getTrails() async {
    dynamic response = await ApiRepository.getTrailsData();
    List<Trail> trailData = [];

    if(response != null) {
      for (var e in response) {
        print(e);
        trailData.add(Trail.fromJson(e));
      }

      trails = ObservableFuture.value(trailData);
      _setData();
    } else {
      flag = true;
    }
  }

  @action
  void setName() async {
    sharedPreferences = await  SharedPreferences.getInstance();
    name = sharedPreferences!.getString('name');
  }

  void _setData() {
    copyRangeForTopTrails(0, 9);
    copyRangeForCities(10, 19);
    copyRangeForRegions(20, 29);
  }
/**********************************************************************************/
  ///HELPER METHODS

  void copyRangeForTopTrails(int start, int end) {
    for(int i = start; i <= end; i++) {
      topTrails.add(trails.value![i]);
    }
  }
  void copyRangeForCities(int start, int end) {
    for(int i = start; i <= end; i++) {
      cities.add(trails.value![i]);
    }
  }
  void copyRangeForRegions(int start, int end) {
    for(int i = start; i <= end; i++) {
      regions.add(trails.value![i]);
    }
  }
}
