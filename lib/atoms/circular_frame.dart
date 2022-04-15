/*import 'package:shimmer/shimmer.dart';*/
import 'package:flutter/material.dart';
import 'package:image_picker_jv/organisms/frame_image.dart';
import 'package:image_picker_jv/tokens/generate_provider_image.dart';

class CircularFrame extends StatelessWidget {
  final double size;
  final Color color;
  final String image;
  final ImageProviderFrame imageProvider;

  const CircularFrame({
    Key? key,
    required this.size,
    required this.color,
    required this.image,
    required this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _generateFrameImageByTyProvider();
  }

  _generateFrameImageByTyProvider() {
    switch (imageProvider) {
      case ImageProviderFrame.file:
        return _generateSimpleProvider();
      case ImageProviderFrame.assets:
        return _generateSimpleProvider();
      case ImageProviderFrame.network:
        return _generateSimpleProvider();
    }
  }

  Widget _generateSimpleProvider() {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        image: generateProviderImage(
          image: image,
          imageProvider: imageProvider,
        ),
      ),
    );
  }

  Widget _generateCacheProvider() {
    return Container(); /*Shimmer.fromColors(
      baseColor: AppColor.gray,
      highlightColor: AppColor.white,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle
        ),
      ),
    );*/ /*CachedNetworkImage(
      imageUrl: image,
      imageBuilder: (context, cacheImageProvider) => Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          image: generateProviderImage(
            image: image,
            imageProvider: imageProvider,
            cacheImageProvider: cacheImageProvider,
          ),
        ),
      ),
      placeholder: (context, url) {
        return Shimmer.fromColors(
          baseColor: AppColor.gray,
          highlightColor: AppColor.white,
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle
            ),
          ),
        );
      },
      errorWidget: (context, url, error) => const Icon(
        Icons.error,
        color: AppColor.orange,
      ),
    );*/
  }
}
