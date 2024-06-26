import 'package:flutter/material.dart';
import 'package:frontend/app/_export.dart';

extension ThemeX on ThemeData {
  CustomColors get customColors => extension<CustomColors>()!;
  AppDurations get durations => extension<AppDurations>()!;
  Radiuses get radiuses => extension<Radiuses>()!;
  Sizes get sizes => extension<Sizes>()!;
  Spacing get spacing => extension<Spacing>()!;
}
