import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:flutter_layout_grid/src/rendering/layout_grid.dart';
import 'package:flutter_test/flutter_test.dart';

import '../example/flutter_layout_grid.dart';

void main() {
  testWidgets('Computes fixed intrinsic sizes', (tester) async {
    final grid = LayoutGrid(
      templateColumnSizes: [FixedTrackSize(10)],
      templateRowSizes: [FixedTrackSize(10)],
      textDirection: TextDirection.ltr,
    );
    await tester.pumpWidget(grid);
    final renderObject =
        tester.firstRenderObject<RenderLayoutGrid>(find.byType(LayoutGrid));

    expect(renderObject.getMinIntrinsicWidth(double.infinity), 10);
    expect(renderObject.getMinIntrinsicHeight(double.infinity), 10);
    expect(renderObject.getMaxIntrinsicWidth(double.infinity), 10);
    expect(renderObject.getMaxIntrinsicHeight(double.infinity), 10);
  });

  testWidgets('Piet screenshot test', (tester) async {
    await tester.pumpWidget(PietApp());
    await expectLater(
      find.byType(PietApp),
      matchesGoldenFile('goldens/piet.png'),
    );
  });

  testWidgets('Negative gap', (tester) async {
    final borderWidth = 5.0;
    final _box = ({Widget child, Color color}) => Container(
          child: child,
          decoration: BoxDecoration(
            border: Border.all(width: borderWidth),
            color: color,
          ),
        );

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            LayoutGrid(
              columnGap: -borderWidth,
              rowGap: -borderWidth,
              gridFit: GridFit.passthrough,
              templateColumnSizes: [
                FlexibleTrackSize(1),
                FlexibleTrackSize(1),
                FlexibleTrackSize(1),
              ],
              templateRowSizes: [
                IntrinsicContentTrackSize(),
                IntrinsicContentTrackSize(),
              ],
              children: [
                _box(color: Colors.red).withGridPlacement(
                  columnStart: 0,
                  rowStart: 0,
                ),
                _box(color: Colors.green).withGridPlacement(
                  columnStart: 1,
                  rowStart: 0,
                ),
                _box(color: Colors.blue).withGridPlacement(
                  columnStart: 2,
                  rowStart: 0,
                ),
                _box(color: Colors.purple).withGridPlacement(
                  columnSpan: 2,
                  columnStart: 0,
                  rowStart: 1,
                ),
              ],
            ),
            Positioned.fill(child: _box()),
          ],
        ),
      ),
    ));

    await expectLater(
      find.byType(MaterialApp),
      matchesGoldenFile('goldens/negative_gap.png'),
    );
  });
}
