
import 'package:flutter/foundation.dart' show immutable;
import 'package:flutter/material.dart' show Color, Icon;
import 'package:hamro_shop/core/app_data.dart';

@immutable
class BottomNavBarItem {
  final String title;
  final Icon icon;
  final Color activeColor;

  const BottomNavBarItem(
    this.title,
    this.icon, {
    this.activeColor = AppData.lightOrangeColor,
  });
}
