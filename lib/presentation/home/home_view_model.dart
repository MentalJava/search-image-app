import 'package:flutter/foundation.dart';
import 'package:search_image_app/domain/use_case/get_search_images_use_case.dart';
import 'package:search_image_app/domain/use_case/result.dart';
import 'package:search_image_app/presentation/home/home_state.dart';

class HomeViewModel with ChangeNotifier {
  final GetSearchImagesUseCase _getSearchImagesUseCase;

  HomeViewModel({required GetSearchImagesUseCase getSearchImagesUseCase})
    : _getSearchImagesUseCase = getSearchImagesUseCase;

  HomeState _state = HomeState();
  HomeState get state => _state;

  Future<void> fetchImages(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();
    final result = await _getSearchImagesUseCase.excute(query);

    switch (result) {
      case Success(:final data):
        _state = state.copyWith(photos: data, isLoading: false);
        break;
      case Error(:final error):
        _state = state.copyWith(
          photos: [],
          isLoading: false,
          errorMessage: error.toString(),
        );
    }
    notifyListeners();
  }
}
