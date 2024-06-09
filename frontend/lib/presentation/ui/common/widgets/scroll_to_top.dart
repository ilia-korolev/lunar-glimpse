import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:frontend/app/_export.dart';

class ScrollToTopController extends ScrollController {
  bool get showButton {
    const minOffsetToShow = 100;

    return offset > minOffsetToShow &&
        position.userScrollDirection == ScrollDirection.forward;
  }

  void update() {
    notifyListeners();
  }
}

class ScrollToTop extends StatefulWidget {
  const ScrollToTop({
    required this.child,
    required this.appBarHeight,
    required this.scrollController,
    super.key,
  });

  final Widget child;
  final double appBarHeight;
  final ScrollToTopController scrollController;

  @override
  State<ScrollToTop> createState() => _ScrollToTopState();
}

class _ScrollToTopState extends State<ScrollToTop> {
  bool _showScrollToTopButton = false;

  @override
  void initState() {
    super.initState();

    widget.scrollController.addListener(_scrollToTopListener);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_scrollToTopListener);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    final scrollToTopButtonOffset = statusBarHeight + widget.appBarHeight;

    return Stack(
      children: [
        widget.child,
        Positioned(
          left: 0,
          right: 0,
          top: scrollToTopButtonOffset,
          child: _ScrollToTopButton(
            isShown: _showScrollToTopButton,
            animationDuration: theme.durations.medium,
            onPressed: () {
              widget.scrollController.animateTo(
                0,
                duration: theme.durations.medium,
                curve: Curves.decelerate,
              );
            },
          ),
        ),
      ],
    );
  }

  void _scrollToTopListener() {
    final showButton = widget.scrollController.showButton;

    if (showButton != _showScrollToTopButton) {
      setState(() {
        _showScrollToTopButton = showButton;
      });
    }
  }
}

class _ScrollToTopButton extends StatefulWidget {
  const _ScrollToTopButton({
    required this.isShown,
    required this.onPressed,
    required this.animationDuration,
  });

  final bool isShown;
  final Duration animationDuration;
  final void Function()? onPressed;

  @override
  State<_ScrollToTopButton> createState() => _ScrollToTopButtonState();
}

class _ScrollToTopButtonState extends State<_ScrollToTopButton>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    duration: widget.animationDuration,
    vsync: this,
  );

  late final _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0, -1),
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutCubicEmphasized,
      reverseCurve: Curves.easeInOutCubicEmphasized.flipped,
    ),
  );

  @override
  void initState() {
    _controller.value = widget.isShown ? 0 : 1;

    super.initState();
  }

  @override
  void didUpdateWidget(covariant _ScrollToTopButton oldWidget) {
    if (widget.isShown != oldWidget.isShown) {
      widget.isShown ? _controller.reverse() : _controller.forward();
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
    final theme = Theme.of(context);
    final l10n = context.l10n;

    return Center(
      child: ClipRect(
        child: SlideTransition(
          position: _offsetAnimation,
          child: Padding(
            padding: EdgeInsets.only(top: theme.spacing.semiSmall),
            child: FilledButton(
              onPressed: widget.onPressed,
              child: Text(l10n.scrollToTopButton),
            ),
          ),
        ),
      ),
    );
  }
}
