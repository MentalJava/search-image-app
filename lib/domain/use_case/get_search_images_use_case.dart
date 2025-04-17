import 'package:search_image_app/domain/model/photo.dart';
import 'package:search_image_app/domain/repository/image_repository.dart';
import 'package:search_image_app/domain/use_case/result.dart';

class GetSearchImagesUseCase {
  final ImageRepository _imageRepository;

  GetSearchImagesUseCase({required ImageRepository imageRepository})
    : _imageRepository = imageRepository;

  Future<Result<List<Photo>, Object>> excute(String query) async {
    try {
      final images = await _imageRepository.fetchImages(query);
      return Result.success(images);
    } catch (e) {
      return Result.error(e);
    }
  }
}
