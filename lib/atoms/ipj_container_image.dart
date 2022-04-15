import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker_jv/tokens/app_color.dart';

enum TypeFigureFrameImage {
  square,
  circle,
  noneFigureFrame,
}

enum ImageProviderFrame {
  file,
  assets,
  network,
}

class FrameImage extends StatelessWidget {
  final Color color;
  final double size;
  final String image;
  final Widget? body;
  final ImageProviderFrame imageProvider;
  final TypeFigureFrameImage typeFigureFrameImage;

  const FrameImage(
    this.image, {
    Key? key,
    this.body,
    this.size = 100,
    this.color = AppColor.orange,
    this.imageProvider = ImageProviderFrame.assets,
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
      case ImageProviderFrame.file:
        return DecorationImage(image: FileImage(File(image)));
      case ImageProviderFrame.assets:
        return DecorationImage(image: AssetImage(image));
      case ImageProviderFrame.network:
        return DecorationImage(image: NetworkImage(image));
    }
  }
}
