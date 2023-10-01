import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';

extension ThemeExtension on ThemeData {
  CustomColors get customColors => extension<CustomColors>()!;
  Durations get durations => extension<Durations>()!;
  Radiuses get radiuses => extension<Radiuses>()!;
  Sizes get sizes => extension<Sizes>()!;
  Spacing get spacing => extension<Spacing>()!;
}
