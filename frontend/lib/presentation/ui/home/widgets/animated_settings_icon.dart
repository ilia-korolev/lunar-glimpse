import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedSettingsIcon extends StatefulWidget {
  const AnimatedSettingsIcon({
    required this.isSelected,
    required this.duration,
    super.key,
  });

  final bool isSelected;
  final Duration duration;

  @override
  State<AnimatedSettingsIcon> createState() => _AnimatedSettingsIconState();
}

class _AnimatedSettingsIconState extends State<AnimatedSettingsIcon>
    with SingleTickerProviderStateMixin {
  static const _angle = math.pi / 3;
  static const _scale = 1.075;

  late final AnimationController _controller;

  late final Animation<double> _curvedAnimation;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    _initAnimation();

    super.initState();
  }

  @override
  void didUpdateWidget(AnimatedSettingsIcon oldWidget) {
    if (widget.isSelected != oldWidget.isSelected) {
      widget.isSelected ? _controller.forward() : _controller.reset();
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _angle * _curvedAnimation.value,
          child: Transform.scale(
            scale: _scaleAnimation.value,
            child: child,
          ),
        );
      },
      child: const FaIcon(FontAwesomeIcons.gear),
    );
  }

  void _initAnimation() {
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..reset();

    _curvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutCubicEmphasized,
    );

    _scaleAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 1, end: _scale),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: _scale, end: 1),
        weight: 1,
      ),
    ]).animate(_curvedAnimation);
  }
}
