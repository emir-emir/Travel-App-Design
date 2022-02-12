import 'package:flutter/material.dart';

/// Created by Emirşah Erden
/// on 08 Şubat 2022
class GlobalImageIcon extends StatelessWidget {
  String? assetsName;
  double? size;
  Color? color;

  GlobalImageIcon({
    this.assetsName,
    this.color,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage(assetsName!),
      size: size,
      color: color,
    );
  }
}
