import 'dart:math' as math;

import 'package:flutter/material.dart';

class SliverSeparatedChildBuilderDelegate extends SliverChildBuilderDelegate {
  SliverSeparatedChildBuilderDelegate({
    required NullableIndexedWidgetBuilder itemBuilder,
    required NullableIndexedWidgetBuilder separatorBuilder,
    int? childCount,
    super.addAutomaticKeepAlives,
    super.addRepaintBoundaries,
    super.addSemanticIndexes,
    super.findChildIndexCallback,
    super.semanticIndexOffset,
  }) : super(
          (context, index) {
            if (index.isOdd) {
              return separatorBuilder(context, index);
            }

            final itemIndex = index ~/ 2;

            return itemBuilder(context, itemIndex);
          },
          semanticIndexCallback: (Widget widget, int localIndex) {
            if (localIndex.isEven) {
              return localIndex ~/ 2;
            }

            return null;
          },
          childCount:
              childCount != null ? math.max(0, childCount * 2 - 1) : null,
        );
}
