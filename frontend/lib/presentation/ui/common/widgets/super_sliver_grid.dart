import 'package:flutter/material.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

class SuperSliverGrid extends StatelessWidget {
  const SuperSliverGrid({
    required this.itemBuilder,
    required this.spacing,
    required this.itemCount,
    required this.itemsPerRow,
    super.key,
  });

  final IndexedWidgetBuilder itemBuilder;
  final double spacing;
  final int itemCount;
  final int itemsPerRow;

  @override
  Widget build(BuildContext context) {
    final rowCount = (itemCount / itemsPerRow).ceil();

    return SuperSliverList.separated(
      separatorBuilder: (context, index) => SizedBox(height: spacing),
      itemBuilder: (context, rowIndex) {
        final rowItems = <Widget>[];

        for (var i = 0; i < itemsPerRow; ++i) {
          final itemIndex = rowIndex * itemsPerRow + i;

          rowItems.add(
            Expanded(
              child: itemIndex < itemCount
                  ? itemBuilder(context, itemIndex)
                  : const SizedBox(),
            ),
          );

          if (i < itemsPerRow - 1) {
            rowItems.add(SizedBox(width: spacing));
          }
        }

        return Row(children: rowItems);
      },
      itemCount: rowCount,
    );
  }
}
