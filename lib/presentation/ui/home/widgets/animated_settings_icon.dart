import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnimatedSettingsIcon extends StatefulWidget {
  const AnimatedSettingsIcon({
    required this.controller,
    super.key,
  });

  final AnimationController controller;

  @override
  State<AnimatedSettingsIcon> createState() => _AnimatedSettingsIconState();
}

class _AnimatedSettingsIconState extends State<AnimatedSettingsIcon> {
  static const _angle = math.pi / 3;
  static const _scale = 1.075;

  late Animation<double> _curvedAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    _updateAnimation();

    super.initState();
  }

  @override
  void didUpdateWidget(AnimatedSettingsIcon oldWidget) {
    _updateAnimation();

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _angle * _curvedAnimation.value,
          child: Transform.scale(
            scale: _scaleAnimation.value,
            child: child,
          ),
        );
      },
      child: const Icon(Icons.settings),
    );
  }

  void _updateAnimation() {
    _curvedAnimation = CurvedAnimation(
      parent: widget.controller,
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
