import 'package:flutter/material.dart';

import 'place.dart';
import 'place_tracker_app.dart';
import 'stub_data.dart';

class AppState {
  const AppState({
    this.places = StubData.places,
    this.selectedCategory = PlaceCategory.favorite,
    this.viewType = PlaceTrackerViewType.map,
  }) : assert(places != null),
        assert(selectedCategory != null);

  final List<Place> places;
  final PlaceCategory selectedCategory;
  final PlaceTrackerViewType viewType;

  AppState copyWith({
    List<Place> places,
    PlaceCategory selectedCategory,
    PlaceTrackerViewType viewType,
  }) {
    return AppState(
      places: places ?? this.places,
      selectedCategory: selectedCategory ?? this.selectedCategory,
      viewType: viewType ?? this.viewType,
    );
  }

  static AppState of(BuildContext context) => AppModel.of<AppState>(context);

  static void update(BuildContext context, AppState newState) {
    AppModel.update<AppState>(context, newState);
  }

  static void updateWith(
    BuildContext context,
    {List<Place> places,
    PlaceCategory selectedCategory,
    PlaceTrackerViewType viewType,
  }) {
    update(
      context,
      AppState.of(context).copyWith(
        places: places, selectedCategory: selectedCategory, viewType: viewType,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other))
      return true;
    if (other.runtimeType != runtimeType)
      return false;
    final AppState otherAppState = other;
    return otherAppState.places == places
        && otherAppState.selectedCategory == selectedCategory
        && otherAppState.viewType == viewType;
  }

  @override
  int get hashCode => hashValues(places, selectedCategory, viewType);
}

class _AppModelScope<T> extends InheritedWidget {
  const _AppModelScope({
    Key key,
    this.appModelState,
    Widget child
  }) : super(key: key, child: child);

  final _AppModelState<T> appModelState;

  @override
  bool updateShouldNotify(_AppModelScope oldWidget) => true;
}

class AppModel<T> extends StatefulWidget {
  AppModel({
    Key key,
    @required this.initialState,
    this.child,
  }) : assert(initialState != null),
        super(key: key);

  final T initialState;
  final Widget child;

  _AppModelState<T> createState() => _AppModelState<T>();

  static _typeOf<T>() => T;

  static T of<T>(BuildContext context) {
    final Type appModelScopeType = _typeOf<_AppModelScope<T>>();
    final _AppModelScope<T> scope = context.inheritFromWidgetOfExactType(appModelScopeType);
    return scope.appModelState.currentState;
  }

  static void update<T>(BuildContext context, T newState) {
    final Type appModelScopeType = _typeOf<_AppModelScope<T>>();
    final _AppModelScope<T> scope = context.inheritFromWidgetOfExactType(appModelScopeType);
    scope.appModelState.updateState(newState);
  }
}

class _AppModelState<T> extends State<AppModel<T>> {
  @override
  void initState() {
    super.initState();
    currentState = widget.initialState;
  }

  T currentState;

  void updateState(T newState) {
    if (newState != currentState) {
      setState(() {
        currentState = newState;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _AppModelScope<T>(
      appModelState: this,
      child: widget.child,
    );
  }
}
