import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:search_image_app/core/di/di_setup.dart';

import 'package:search_image_app/domain/model/photo.dart';

import 'package:search_image_app/presentation/home/home.dart';
import 'package:search_image_app/presentation/home/home_detail.dart';

final GoRouter router = GoRouter(
  initialLocation: '/home',

  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      pageBuilder: (context, state) {
        return MaterialPage(child: Home(homeViewModel: getIt()));
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
