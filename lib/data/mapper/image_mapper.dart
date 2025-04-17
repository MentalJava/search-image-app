import 'package:search_image_app/data/dto/image_dto.dart';
import 'package:search_image_app/domain/model/image.dart';

extension ImageMapper on ImageDto {
  Image toImage() {
    return Image(
      id: id?.toInt() ?? -1,
      tags: tags ?? '',
      previewURL: previewURL ?? '',
    );
  }
}
