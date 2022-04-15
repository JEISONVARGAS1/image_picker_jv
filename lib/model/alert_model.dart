import 'package:flutter/cupertino.dart';
import 'package:image_picker_jv/tokens/app_color.dart';

enum AlertButtonType {
  oneButton,
  allButton,
  noneButton,
}

class AlertModel {
  AlertModel({
    this.width = 200,
    this.height = 200,
    required this.title,
    required this.description,
    this.color = AppColor.white,
    this.activeButtonClose = true,
    this.alertButtonType = AlertButtonType.allButton,
  });

  Color color;
  Widget title;
  double width;
  double height;
  Widget description;
  bool activeButtonClose;
  AlertButtonType alertButtonType;

  factory AlertModel.fromJson(Map<String, dynamic> json) => AlertModel(
    title: json["title"],
    width: json["width"],
    height: json["height"],
    description: json["description"],
    activeButtonClose: json["activeButtonClose"],
    alertButtonType: json["alertButtonType"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "width": width,
    "height": height,
    "description": description,
    "activeButtonClose": activeButtonClose,
    "alertButtonType": alertButtonType,
  };
}
