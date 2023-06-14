import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:layout_grid/models/gridconfigutation.dart';
import 'package:layout_grid/widgets/content.dart';
import 'package:layout_grid/widgets/footer.dart';
import 'package:layout_grid/widgets/header.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/navigation.dart';

class DashPage extends StatelessWidget {
  const DashPage({super.key});

  // check screen type
  GridConfigutation configGridLayout({required BuildContext context}) {
    final deviceType = getDeviceType(MediaQuery.of(context).size);
    if ((deviceType == DeviceScreenType.desktop) ||
        (deviceType == DeviceScreenType.tablet)) {
      // layout desktop & tablet
      return GridConfigutation(
        areas: ''' 
          header  header
          nav     content
          footer  footer
        ''',
        columnSizes: [154.px, 1.fr],
        rowSizes: [
          112.px,
          auto,
          64.px,
        ],
      );
    } else {
      // layout mobile
      return GridConfigutation(
        areas: ''' 
          header
          nav
          content
          footer
        ''',
        columnSizes: [1.fr],
        rowSizes: [
          112.px,
          64.px,
          auto,
          64.px,
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final gridConfig = configGridLayout(context: context);

    return Scaffold(
      body: LayoutGrid(
        areas: gridConfig.areas,
        columnSizes: gridConfig.columnSizes,
        rowSizes: gridConfig.rowSizes,
        children: [
          Header().inGridArea('header'),
          Navigation().inGridArea('nav'),
          Content().inGridArea('content'),
          Footer().inGridArea('footer'),
        ],
      ),
    );
  }
}
