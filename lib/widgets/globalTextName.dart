import 'package:flutter/material.dart';

/// Created by Emirşah Erden
/// on 07 Şubat 2022
class GlobalTextName extends Text {
  GlobalTextName({required String name, TextAlign? textAlign, TextDecoration? decoration, FontWeight? fontWeight, Color? color, double? fontSize})
      : super(
          name,
          textAlign: textAlign,
          style: _style(color, fontSize, fontWeight, decoration),
        );
}

TextStyle _style(color, fontSize, fontWeight, decoration) {
  return TextStyle(decoration: decoration, color: color, fontSize: fontSize, fontWeight: fontWeight);
}
