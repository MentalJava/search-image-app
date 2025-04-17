import 'package:search_image_app/data/dto/image_dto.dart';

abstract interface class ImageDataSource {
  Future<List<ImageDto>> fetchImages(String query);
}
