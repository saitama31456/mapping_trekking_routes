import 'package:flutter/material.dart';
import 'package:mapping_trekking_routes/data/api_repo.dart';
import 'package:mapping_trekking_routes/model/trail.dart';
import 'package:mobx/mobx.dart';

part 'search_store.g.dart';

class SearchStore = _SearchStore with _$SearchStore;

abstract class _SearchStore with Store { 

  TextEditingController textEditingController = TextEditingController();

/**********************************************************************************/
///OBSERVER

  @observable
  ObservableList<Trail> searchedTrail = ObservableList.of([]);

  @observable
  ObservableFuture<List<Trail>?> trails = ObservableFuture.value(null);
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
    } 
  }

  @action
  void searchTrail(String value) {
    print(value);
    searchedTrail = ObservableList.of([]);
    List<Trail> t = [];

    for (var element in trails.value!) {
      // print(element.name);
      if(element.name!.toLowerCase().contains(value.toLowerCase())) {
        t.add(element);
      }
    }

    searchedTrail = ObservableList.of(t);
  }
/**********************************************************************************/
///HELPER METHODS
}