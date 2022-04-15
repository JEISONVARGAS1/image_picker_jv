import 'package:flutter/material.dart';
import 'package:image_picker_jv/tokens/app_color.dart';
import 'package:image_picker_jv/model/alert_model.dart';
import 'package:image_picker_jv/atoms/button_alert_frame.dart';
import 'package:image_picker_jv/tokens/screen_size.dart';

class BodyAlert extends StatelessWidget {
  final AlertModel alertModel;

  const BodyAlert({Key? key, required this.alertModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        alertModel.activeButtonClose ? Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.symmetric(horizontal: ScreenSize.width(context) * 0.03),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.close,
              color: AppColor.black,
            ),
          ),
        ) : Container(),
        alertModel.title,
        alertModel.description,
        Row(
          children: [
            Expanded(
              child: ButtonAlertFrame(
                text: "Photo",
                color: alertModel.colorButton,
                textStyle: alertModel.textStyle,
              ),
            ),
            Expanded(
              child: ButtonAlertFrame(
                text: "Gallery",
                color: alertModel.colorButton,
                textStyle: alertModel.textStyle,
              ),
            ),
          ],
        )
      ],
    );
  }
}
