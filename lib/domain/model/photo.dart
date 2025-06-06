import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo.freezed.dart';

// ignore_for_file: annotate_overrides
@freezed
class Photo with _$Photo {
  final int id;
  final String tags;
  final String previewURL;
  final String user;
  final int views;

  Photo({
    required this.id,
    required this.tags,
    required this.previewURL,
    required this.user,
    required this.views,
  });
}
