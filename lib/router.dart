import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:search_image_app/data/data_source/image_data_source_impl.dart';
import 'package:search_image_app/data/repository/image_repository_impl.dart';
import 'package:search_image_app/domain/model/photo.dart';
import 'package:search_image_app/domain/use_case/get_search_images_use_case.dart';
import 'package:search_image_app/presentation/home/home.dart';
import 'package:search_image_app/presentation/home/home_detail.dart';
import 'package:search_image_app/presentation/home/home_view_model.dart';
import 'package:http/http.dart' as http;

final homeviewModel = HomeViewModel(
  getSearchImagesUseCase: GetSearchImagesUseCase(
    imageRepository: ImageRepositoryImpl(
      ImageDataSourceImpl(client: http.Client()),
    ),
  ),
);

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      pageBuilder: (context, state) {
        return MaterialPage(child: Home(homeViewModel: homeviewModel));
      },
    ),
    GoRoute(
      path: '/detail',
      name: 'detail',
      pageBuilder: (context, state) {
        final photo = state.extra as Photo;
        return MaterialPage(child: HomeDetail(photo: photo));
      },
    ),
  ],
);
