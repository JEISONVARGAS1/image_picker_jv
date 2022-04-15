import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_jv/atoms/button_frame.dart';
import 'package:image_picker_jv/model/alert_model.dart';
import 'package:image_picker_jv/molecules/body_alert.dart';
import 'package:image_picker_jv/tokens/app_color.dart';
import 'package:image_picker_jv/molecules/container_image_frame.dart';
import 'package:image_picker_jv/tokens/show_alert.dart';

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
  final Icon? icon;
  final Color color;
  final double size;
  final String image;
  final Widget? body;
  final Function()? onTap;
  final AlertModel? alertModel;
  final ImageProviderFrame imageProvider;
  final TypeFigureFrameImage typeFigureFrameImage;

  const FrameImage(
    this.image, {
    Key? key,
    this.icon,
    this.body,
    this.onTap,
    this.size = 100,
    this.alertModel,
    this.color = AppColor.orange,
    this.imageProvider = ImageProviderFrame.assets,
    this.typeFigureFrameImage = TypeFigureFrameImage.circle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        ContainerImageFrame(
          image,
          size: size,
          body: body,
          color: color,
          imageProvider: imageProvider,
          typeFigureFrameImage: typeFigureFrameImage,
        ),
        ButtonFrame(
          size: size / 4,
          icon: icon,
          color: color,
          handledButton: () {
            if (onTap != null) {
              onTap!();
            } else {
              _handledTapInButton(context: context);
            }
          },
        )
      ],
    );
  }

  _handledTapInButton({
    required BuildContext context,
  }) {
    showAlert(
      body: BodyAlert(
        alertModel: alertModel ??
            AlertModel(
              title: Container(),
              description: Container(),
            ),
      ),
      context: context,
      alertModel: alertModel ??
          AlertModel(
            title: Container(),
            description: Container(),
          ),
    );
  }
}
