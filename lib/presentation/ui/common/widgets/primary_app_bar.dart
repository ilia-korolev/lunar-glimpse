import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({
    required this.height,
    super.key,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: height,
      leading: IconButton(
        icon: const FaIcon(
          FontAwesomeIcons.chevronLeft,
        ),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
