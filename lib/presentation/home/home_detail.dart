import 'package:flutter/material.dart';
import 'package:search_image_app/domain/model/photo.dart';

class HomeDetail extends StatelessWidget {
  final Photo photo;
  const HomeDetail({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Hero(
              tag: photo.id,
              child: Image.network(fit: BoxFit.cover, photo.previewURL),
            ),
          ),
          SizedBox(height: 20),
          Text(photo.user, style: TextStyle(fontSize: 30)),
          SizedBox(height: 20),
          Text(photo.views.toString(), style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }
}
