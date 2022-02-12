import 'package:flutter/material.dart';

/// Created by Emirşah Erden
/// on 07 Şubat 2022
class GlobalTextFormField extends StatelessWidget {
  String? labelText;
  GlobalTextFormField({required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
      labelText: labelText!,
      suffixIcon: Icon(Icons.search, color: Colors.red, size: 40),
      border: OutlineInputBorder(),
    ));
  }
}
