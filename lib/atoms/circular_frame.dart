import 'package:flutter/cupertino.dart';
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
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
        image: generateProviderImage(
          image: image,
          imageProvider: imageProvider,
        ),
      ),
    );
  }
}
