import 'package:flutter/material.dart';
import 'package:image_picker_jv/tokens/app_color.dart';
import 'package:image_picker_jv/model/alert_model.dart';
import 'package:image_picker_jv/atoms/button_alert_frame.dart';

class BodyAlert extends StatelessWidget {
  final AlertModel alertModel;

  const BodyAlert({Key? key, required this.alertModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.close,
              color: AppColor.black,
            ),
          ),
        ),
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
