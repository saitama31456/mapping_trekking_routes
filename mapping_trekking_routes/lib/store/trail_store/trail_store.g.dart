// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TrailStore on _TrailStore, Store {
  late final _$trailsAtom = Atom(name: '_TrailStore.trails', context: context);

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

  late final _$topTrailsAtom =
      Atom(name: '_TrailStore.topTrails', context: context);

  @override
  List<Trail> get topTrails {
    _$topTrailsAtom.reportRead();
    return super.topTrails;
  }

  @override
  set topTrails(List<Trail> value) {
    _$topTrailsAtom.reportWrite(value, super.topTrails, () {
      super.topTrails = value;
    });
  }

  late final _$citiesAtom = Atom(name: '_TrailStore.cities', context: context);

  @override
  List<Trail> get cities {
    _$citiesAtom.reportRead();
    return super.cities;
  }

  @override
  set cities(List<Trail> value) {
    _$citiesAtom.reportWrite(value, super.cities, () {
      super.cities = value;
    });
  }

  late final _$regionsAtom =
      Atom(name: '_TrailStore.regions', context: context);

  @override
  List<Trail> get regions {
    _$regionsAtom.reportRead();
    return super.regions;
  }

  @override
  set regions(List<Trail> value) {
    _$regionsAtom.reportWrite(value, super.regions, () {
      super.regions = value;
    });
  }

  late final _$flagAtom = Atom(name: '_TrailStore.flag', context: context);

  @override
  bool get flag {
    _$flagAtom.reportRead();
    return super.flag;
  }

  @override
  set flag(bool value) {
    _$flagAtom.reportWrite(value, super.flag, () {
      super.flag = value;
    });
  }

  late final _$getTrailsAsyncAction =
      AsyncAction('_TrailStore.getTrails', context: context);

  @override
  Future getTrails() {
    return _$getTrailsAsyncAction.run(() => super.getTrails());
  }

  @override
  String toString() {
    return '''
trails: ${trails},
topTrails: ${topTrails},
cities: ${cities},
regions: ${regions},
flag: ${flag}
    ''';
  }
}
