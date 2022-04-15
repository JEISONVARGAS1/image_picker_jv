import 'package:flutter/cupertino.dart';
import 'package:image_picker_jv/tokens/app_color.dart';
import 'package:image_picker_jv/atoms/square_frame.dart';
import 'package:image_picker_jv/atoms/circular_frame.dart';
import 'package:image_picker_jv/organisms/frame_image.dart';

class ContainerImageFrame extends StatelessWidget {
  final Color color;
  final double size;
  final String image;
  final Widget? body;
  final ImageProviderFrame imageProvider;
  final TypeFigureFrameImage typeFigureFrameImage;

  const ContainerImageFrame(
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
        return CircularFrame(
            size: size,
            color: color,
            image: image,
            imageProvider: imageProvider);
      case TypeFigureFrameImage.circle:
        return SquareFrame(
          size: size,
          color: color,
          image: image,
          imageProvider: imageProvider,
        );
      case TypeFigureFrameImage.noneFigureFrame:
        return body ?? Container();
    }
  }
}
