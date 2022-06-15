// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SearchStore on _SearchStore, Store {
  late final _$searchedTrailAtom =
      Atom(name: '_SearchStore.searchedTrail', context: context);

  @override
  ObservableList<Trail> get searchedTrail {
    _$searchedTrailAtom.reportRead();
    return super.searchedTrail;
  }

  @override
  set searchedTrail(ObservableList<Trail> value) {
    _$searchedTrailAtom.reportWrite(value, super.searchedTrail, () {
      super.searchedTrail = value;
    });
  }

  late final _$trailsAtom = Atom(name: '_SearchStore.trails', context: context);

  @override
  ObservableFuture<List<Trail>?> get trails {
    _$trailsAtom.reportRead();
    return super.trails;
  }

  @override
  set trails(ObservableFuture<List<Trail>?> value) {
    _$trailsAtom.reportWrite(value, super.trails, () {
      super.trails = value;
    });
  }

  late final _$getTrailsAsyncAction =
      AsyncAction('_SearchStore.getTrails', context: context);

  @override
  Future getTrails() {
    return _$getTrailsAsyncAction.run(() => super.getTrails());
  }

  late final _$_SearchStoreActionController =
      ActionController(name: '_SearchStore', context: context);

  @override
  void searchTrail(String value) {
    final _$actionInfo = _$_SearchStoreActionController.startAction(
        name: '_SearchStore.searchTrail');
    try {
      return super.searchTrail(value);
    } finally {
      _$_SearchStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
searchedTrail: ${searchedTrail},
trails: ${trails}
    ''';
  }
}
