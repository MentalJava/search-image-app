import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';

// ignore_for_file: annotate_overrides
@freezed
class Image with _$Image {
  final int id;
  final String tags;
  final String previewURL;

  Image({required this.id, required this.tags, required this.previewURL});
}
