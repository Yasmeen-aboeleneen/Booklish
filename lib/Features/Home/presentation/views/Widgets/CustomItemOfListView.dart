import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomItemOfListView extends StatelessWidget {
  const CustomItemOfListView({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 3.6 / 5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.fill,
          ),
        ));
  }
}
