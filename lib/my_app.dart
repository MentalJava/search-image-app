import 'package:flutter/material.dart';
import 'package:search_image_app/data/data_source/image_data_source_impl.dart';
import 'package:search_image_app/data/repository/image_repository_impl.dart';
import 'package:search_image_app/domain/use_case/get_search_images_use_case.dart';
import 'package:search_image_app/presentation/home/home.dart';
import 'package:search_image_app/presentation/home/home_view_model.dart';

import 'package:http/http.dart' as http;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(
        homeViewModel: HomeViewModel(
          getSearchImagesUseCase: GetSearchImagesUseCase(
            imageRepository: ImageRepositoryImpl(
              ImageDataSourceImpl(client: http.Client()),
            ),
          ),
        ),
      ),
    );
  }
}
