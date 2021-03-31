import 'package:flutter/material.dart';
import 'package:idntify_widget/models/image_picker_icon.dart';
import 'package:idntify_widget/models/text_icon.dart';
import 'package:idntify_widget/widgets/text.dart';

class ImagePicker extends StatelessWidget {
  final TextIcon textIcon;
  final ImagePickerIcon icon;
  final String text;
  final onTap;

  ImagePicker(this.text, this.icon, {this.onTap, this.textIcon});

  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
            child: Column(
                children: <Widget>[
                  InfoText(text, color: Colors.black, icon: textIcon),
                  Image.asset(icon.name, height: 30)
                ]
            ), width: 250, padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(
                    color: icon == ImagePickerIcon.loaded ? Colors.green : Colors.red,
                    width: 2.0,
                ), color: icon == ImagePickerIcon.loaded ? Color.fromRGBO(83, 177, 177, 0.3) : Color.fromRGBO(229, 97, 55, 0.3), borderRadius: BorderRadius.all(Radius.circular(10.0))
            )
        ), onTap: onTap,
    );
  }
}
