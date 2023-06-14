import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:layout_grid/widgets/content.dart';
import 'package:layout_grid/widgets/footer.dart';
import 'package:layout_grid/widgets/header.dart';
import 'package:layout_grid/widgets/navigation.dart';

import '../widgets/aside.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutGrid(
        areas: ''' 
        header  header  header
        nav     content aside
        footer  footer  footer
        ''',
        columnSizes: [152.px, 1.fr, 152.px],
        rowSizes: [
          112.px,
          auto,
          64.px,
        ],
        children: [
          Header().inGridArea('header'),
          Navigation().inGridArea('nav'),
          Content().inGridArea('content'),
          Aside().inGridArea('aside'),
          Footer().inGridArea('footer'),
        ],
      ),
    );
  }
}
