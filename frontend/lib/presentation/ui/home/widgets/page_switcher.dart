import 'package:flutter/material.dart';

class PageSwitcher extends StatefulWidget {
  const PageSwitcher({
    super.key,
    this.index = 0,
    this.children = const [],
    this.duration = const Duration(milliseconds: 500),
  });

  final int index;
  final List<Widget> children;
  final Duration duration;

  @override
  State<PageSwitcher> createState() => _PageSwitcherState();
}

class _PageSwitcherState extends State<PageSwitcher>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Widget> _cachedChildren;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..forward();

    _initCache();
    _updateCache();

    super.initState();
  }

  @override
  void didUpdateWidget(PageSwitcher oldWidget) {
    if (widget.duration != oldWidget.duration) {
      _controller.duration = widget.duration;
    }

    if (widget.children != oldWidget.children) {
      _initCache();
      _updateCache();
    }

    if (widget.index != oldWidget.index) {
      _controller.forward(from: 0);
      _updateCache();
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
    return FadeTransition(
      opacity: _controller,
      child: IndexedStack(
        index: widget.index,
        children: _cachedChildren,
      ),
    );
  }

  void _initCache() {
    _cachedChildren = List<Widget>.generate(
      widget.children.length,
      (index) => const SizedBox(),
    );
  }

  void _updateCache() {
    _cachedChildren[widget.index] = widget.children[widget.index];
  }
}
