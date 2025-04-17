import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_image_app/domain/model/photo.dart';

part 'home_state.freezed.dart';

// ignore_for_file: annotate_overrides
@freezed
class HomeState with _$HomeState {
  final List<Photo> photos;
  final bool isLoading;

  HomeState({this.photos = const [], this.isLoading = false});
}
