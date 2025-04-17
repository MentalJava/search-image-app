import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(fit: BoxFit.cover, image: NetworkImage('')),
      ),
    );
  }
}
