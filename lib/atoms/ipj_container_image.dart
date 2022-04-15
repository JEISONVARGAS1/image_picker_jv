import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker_jv/tokens/app_color.dart';

enum TypeFigureFrameImage {
  square,
  circle,
  noneFigureFrame,
}

enum ImageProvider {
  file,
  assets,
  network,
}

class FrameImage extends StatelessWidget {
  final Color color;
  final double size;
  final String image;
  final Widget? body;
  final ImageProvider imageProvider;
  final TypeFigureFrameImage typeFigureFrameImage;

  const FrameImage(
    this.image, {
    Key? key,
    this.body,
    this.size = 100,
    this.color = AppColor.orange,
    this.imageProvider = ImageProvider.assets,
    this.typeFigureFrameImage = TypeFigureFrameImage.circle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (typeFigureFrameImage) {
      case TypeFigureFrameImage.square:
        return circularFrame();
      case TypeFigureFrameImage.circle:
        return squareFrame();
      case TypeFigureFrameImage.noneFigureFrame:
        return body ?? Container();
    }
  }

  Widget squareFrame() {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        image: generateProviderImage(),
      ),
    );
  }

  Widget circularFrame() {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
        image: generateProviderImage(),
      ),
    );
  }

  DecorationImage generateProviderImage() {
    switch (imageProvider) {
      case ImageProvider.file:
        return DecorationImage(image: FileImage(File(image)));
      case ImageProvider.assets:
        return DecorationImage(image: AssetImage(image));
      case ImageProvider.network:
        return DecorationImage(image: NetworkImage(image));
    }
  }
}
