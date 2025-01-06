import 'package:flutter/material.dart';
import 'package:food_recipe/presentation/presentation.dart';

class HomeProvider extends ChangeNotifier {
  HomeState _state = HomeState.initial();

  HomeState get state => _state;

  void onSelectCategory(HomeCategory category) {
    _state = _state.copyWith(selectedCategory: category);
    notifyListeners();
  }
}
