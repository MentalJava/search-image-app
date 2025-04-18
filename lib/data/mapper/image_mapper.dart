import 'package:search_image_app/data/dto/image_dto.dart';
import 'package:search_image_app/domain/model/photo.dart';

extension ImageMapper on ImageDto {
  Photo toImage() {
    return Photo(
      id: id?.toInt() ?? -1,
      tags: tags ?? '',
      previewURL: previewURL ?? '',
      user: user ?? '유저 정보 없음',
      views: views?.toInt() ?? -1,
    );
  }
}
