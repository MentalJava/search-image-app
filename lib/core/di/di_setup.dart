import 'package:get_it/get_it.dart';
import 'package:search_image_app/data/data_source/image_data_source.dart';
import 'package:search_image_app/data/data_source/image_data_source_impl.dart';
import 'package:search_image_app/data/repository/image_repository_impl.dart';
import 'package:search_image_app/domain/repository/image_repository.dart';
import 'package:search_image_app/domain/use_case/get_search_images_use_case.dart';
import 'package:http/http.dart' as http;
import 'package:search_image_app/presentation/home/home_view_model.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<ImageDataSource>(
    ImageDataSourceImpl(client: http.Client()),
  );
  getIt.registerSingleton<ImageRepository>(ImageRepositoryImpl(getIt()));
  getIt.registerSingleton(GetSearchImagesUseCase(imageRepository: getIt()));

  getIt.registerFactory(() => HomeViewModel(getSearchImagesUseCase: getIt()));
}
