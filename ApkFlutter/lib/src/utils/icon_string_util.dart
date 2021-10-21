import 'package:flutter/material.dart';

final _icon = <String, IconData>{
  "accessibility": Icons.accessibility,
  "add_box_outlined": Icons.add_box_outlined,
  "superscrip_outlined": Icons.superscript_outlined
};

Icon getIcon(String nameIcon) {
  return Icon(_icon[nameIcon], color: Colors.orange[700]);
}
