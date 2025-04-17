import 'package:search_image_app/domain/model/photo.dart';

abstract interface class ImageRepository {
  Future<List<Photo>> fetchImages(String query);
}
