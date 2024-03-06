import 'package:flutter/material.dart';
import 'package:flutter_astronomy/app/_export.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SaveFileButton extends StatelessWidget {
  const SaveFileButton({
    required this.progress,
    required this.isDownloading,
    required this.onStartSaving,
    this.iconColor,
    this.backgroundColor,
    super.key,
  });

  final double? progress;
  final bool isDownloading;
  final void Function()? onStartSaving;
  final Color? iconColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      type: MaterialType.circle,
      color: theme.colorScheme.background.withOpacity(0.4),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onStartSaving,
        child: _SaveFileButtonBody(
          progress: progress,
          isDownloading: isDownloading,
          iconColor: iconColor,
          backgroundColor: backgroundColor,
        ),
      ),
    );
  }
}

class _SaveFileButtonBody extends StatefulWidget {
  const _SaveFileButtonBody({
    required this.progress,
    required this.isDownloading,
    this.iconColor,
    this.backgroundColor,
  });

  final double? progress;
  final bool isDownloading;
  final Color? iconColor;
  final Color? backgroundColor;

  @override
  State<_SaveFileButtonBody> createState() => _SaveFileButtonBodyState();
}

class _SaveFileButtonBodyState extends State<_SaveFileButtonBody> {
  double? _previousProgress = 0;

  static final _showTween = Tween(
    begin: const Offset(0, 1),
    end: Offset.zero,
  );

  static final _hideTween = Tween(
    begin: const Offset(0, -1),
    end: Offset.zero,
  );

  @override
  void didUpdateWidget(covariant _SaveFileButtonBody oldWidget) {
    _previousProgress = oldWidget.progress;

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: theme.sizes.mediumIconSize + 2 * theme.spacing.semiSmall,
          width: theme.sizes.mediumIconSize + 2 * theme.spacing.semiSmall,
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(theme.spacing.extraSmall),
          child: TweenAnimationBuilder(
            tween: Tween(
              begin: _previousProgress ?? 0,
              end: widget.progress ?? 0,
            ),
            duration: theme.durations.short,
            builder: (context, value, child) {
              return CircularProgressIndicator(
                value: widget.isDownloading ? value : 1,
                strokeWidth: 3,
                color: (widget.iconColor ?? theme.colorScheme.onSurface)
                    .withOpacity(0.5),
              );
            },
          ),
        ),
        ClipOval(
          child: AnimatedSwitcher(
            duration: theme.durations.short,
            switchInCurve: Curves.easeInCubic,
            switchOutCurve: Curves.easeOutCubic,
            transitionBuilder: (child, animation) {
              final tween = animation.isCompleted ? _showTween : _hideTween;

              return SlideTransition(
                position: tween.animate(animation),
                child: child,
              );
            },
            child: _buildIcon(
              context: context,
              isDownloading: widget.isDownloading,
              progress: widget.progress,
            ),
          ),
        ),
      ],
    );
  }

  Widget? _buildIcon({
    required BuildContext context,
    required bool isDownloading,
    required double? progress,
  }) {
    final theme = Theme.of(context);

    if (!isDownloading && progress == 1) {
      return FaIcon(
        key: const ValueKey('successfully-saved'),
        FontAwesomeIcons.check,
        size: theme.sizes.mediumIconSize,
        color: widget.iconColor,
      );
    }

    if (!isDownloading && progress == 0) {
      return FaIcon(
        key: const ValueKey('ready-to-save'),
        FontAwesomeIcons.arrowDown,
        size: theme.sizes.mediumIconSize,
        color: widget.iconColor,
      );
    }

    return Text(
      '${((widget.progress ?? 0) * 100).round()}%',
      style: theme.textTheme.labelMedium!.copyWith(
        color: widget.iconColor,
      ),
    );
  }
}
