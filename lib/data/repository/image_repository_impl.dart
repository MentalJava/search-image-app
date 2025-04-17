import 'package:search_image_app/data/data_source/image_data_source.dart';
import 'package:search_image_app/data/mapper/image_mapper.dart';
import 'package:search_image_app/domain/model/photo.dart';
import 'package:search_image_app/domain/repository/image_repository.dart';

class ImageRepositoryImpl implements ImageRepository {
  final ImageDataSource _dataSource;

  ImageRepositoryImpl(this._dataSource);

  @override
  Future<List<Photo>> fetchImages(String query) async {
    final imageDtos = await _dataSource.fetchImages(query);

    return imageDtos.map((e) => e.toImage()).toList();
  }
}
