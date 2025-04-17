import 'package:flutter/material.dart';
import 'package:search_image_app/domain/model/photo.dart';

class ImageCard extends StatelessWidget {
  final Photo photo;
  const ImageCard({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(photo.previewURL),
        ),
      ),
    );
  }
}
