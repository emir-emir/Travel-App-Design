import 'package:flutter/material.dart';

/// Created by Emirşah Erden
/// on 08 Şubat 2022
class GlobalContainer extends StatelessWidget {
  double? height;
  double? width;
  Color? color;
  Widget? child;
  String? image;
  AlignmentGeometry? alignment;
  // double? radiusValue;
  BoxBorder? border;
  BoxFit? fit;
  BorderRadiusGeometry? borderRadius;
  GlobalContainer({this.height, this.alignment, this.width, this.child, this.color, this.borderRadius, this.border, this.image, this.fit});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: alignment,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
        // BorderRadius.circular(radiusValue!),
        border: border,
        image: DecorationImage(
          image: AssetImage(image ?? " "),

          // image!,
          fit: fit,
        ),
      ),
      child: child,
    );
  }
}
