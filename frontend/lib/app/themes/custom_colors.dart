import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors.regular()
      : this._(
          tomato: const Color(0xFFCD6146),
          tangerine: const Color(0xFFD3724E),
          banana: const Color(0xFFDFBC67),
          basil: const Color(0xFF5F9168),
          sage: const Color(0xFF6FAD84),
          peacock: const Color(0xFF6497CB),
          blueberry: const Color(0xFF7577BF),
          lavender: const Color(0xFF858BBC),
          grape: const Color(0xFFA065B6),
          flamingo: const Color(0xFFC9877E),
          graphite: const Color(0xFF808080),
        );

  factory CustomColors.harmonized(Color sourceColor) {
    return const CustomColors.regular().harmonize(sourceColor);
  }

  const CustomColors._({
    required this.tomato,
    required this.tangerine,
    required this.banana,
    required this.basil,
    required this.sage,
    required this.peacock,
    required this.blueberry,
    required this.lavender,
    required this.grape,
    required this.flamingo,
    required this.graphite,
  });

  final Color tomato;
  final Color tangerine;
  final Color banana;
  final Color basil;
  final Color sage;
  final Color peacock;
  final Color blueberry;
  final Color lavender;
  final Color grape;
  final Color flamingo;
  final Color graphite;

  CustomColors harmonize(Color sourceColor) {
    Color harmonizeColor(Color color) {
      return Color(Blend.harmonize(color.value, sourceColor.value));
    }

    return CustomColors._(
      tomato: harmonizeColor(tomato),
      tangerine: harmonizeColor(tangerine),
      banana: harmonizeColor(banana),
      basil: harmonizeColor(basil),
      sage: harmonizeColor(sage),
      peacock: harmonizeColor(peacock),
      blueberry: harmonizeColor(blueberry),
      lavender: harmonizeColor(lavender),
      grape: harmonizeColor(grape),
      flamingo: harmonizeColor(flamingo),
      graphite: harmonizeColor(graphite),
    );
  }

  @override
  CustomColors copyWith({
    Color? tomato,
    Color? tangerine,
    Color? banana,
    Color? basil,
    Color? sage,
    Color? peacock,
    Color? blueberry,
    Color? lavender,
    Color? grape,
    Color? flamingo,
    Color? graphite,
  }) {
    return CustomColors._(
      tomato: tomato ?? this.tomato,
      tangerine: tangerine ?? this.tangerine,
      banana: banana ?? this.banana,
      basil: basil ?? this.basil,
      sage: sage ?? this.sage,
      peacock: peacock ?? this.peacock,
      blueberry: blueberry ?? this.blueberry,
      lavender: lavender ?? this.lavender,
      grape: grape ?? this.grape,
      flamingo: flamingo ?? this.flamingo,
      graphite: graphite ?? this.graphite,
    );
  }

  @override
  ThemeExtension<CustomColors> lerp(
    ThemeExtension<CustomColors>? other,
    double t,
  ) {
    if (other is! CustomColors) {
      return this;
    }

    return CustomColors._(
      tomato: Color.lerp(tomato, other.tomato, t)!,
      tangerine: Color.lerp(tangerine, other.tangerine, t)!,
      banana: Color.lerp(banana, other.banana, t)!,
      basil: Color.lerp(basil, other.basil, t)!,
      sage: Color.lerp(sage, other.sage, t)!,
      peacock: Color.lerp(peacock, other.peacock, t)!,
      blueberry: Color.lerp(blueberry, other.blueberry, t)!,
      lavender: Color.lerp(lavender, other.lavender, t)!,
      grape: Color.lerp(grape, other.grape, t)!,
      flamingo: Color.lerp(flamingo, other.flamingo, t)!,
      graphite: Color.lerp(graphite, other.graphite, t)!,
    );
  }
}
