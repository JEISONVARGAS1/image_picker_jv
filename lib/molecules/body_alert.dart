import 'package:flutter/cupertino.dart';
import 'package:image_picker_jv/model/alert_model.dart';
import 'package:image_picker_jv/atoms/button_alert_frame.dart';

class BodyAlert extends StatelessWidget {
  final AlertModel alertModel;

  const BodyAlert({Key? key, required this.alertModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
