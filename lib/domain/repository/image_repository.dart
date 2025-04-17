import 'package:search_image_app/domain/model/image.dart';

abstract interface class ImageRepository {
  Future<List<Image>> fetchImages(String query);
}
