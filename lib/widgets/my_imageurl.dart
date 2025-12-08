import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyImageUrl extends StatelessWidget {
  final String imageUrl;

  const MyImageUrl({super.key, required this.imageUrl});

  bool get isSvg => imageUrl.toLowerCase().endsWith(".svg");

  @override
  Widget build(BuildContext context) {
    if (isSvg) {
      return SvgPicture.network(
        imageUrl,
        fit: BoxFit.contain,
        placeholderBuilder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
        height: 150, 
        width: 150,
      );
    }
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
      height: 150,
      width: 150,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;

        return const Center(child: CircularProgressIndicator());
      },
      errorBuilder: (context, error, stackTrace) {
        return const Icon(Icons.error, size: 40);
      },
    );
  }
}
