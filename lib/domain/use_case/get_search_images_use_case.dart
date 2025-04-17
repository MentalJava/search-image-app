import 'package:search_image_app/domain/model/photo.dart';
import 'package:search_image_app/domain/repository/image_repository.dart';

class GetSearchImagesUseCase {
  final ImageRepository _imageRepository;

  GetSearchImagesUseCase({required ImageRepository imageRepository})
    : _imageRepository = imageRepository;

  Future<List<Photo>> excute(String query) async {
    final images = await _imageRepository.fetchImages(query);
    return images;
  }
}
