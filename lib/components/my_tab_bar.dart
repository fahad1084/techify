import 'package:flutter/material.dart';
import 'package:techify/models/accessories.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar ({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCategoryTabs() {
    return AccessoriesCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs(),
      ),
    );
  }

}