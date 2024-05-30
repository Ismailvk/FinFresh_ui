import 'package:finfest_ui/constants/app_colors.dart';
import 'package:finfest_ui/constants/font_styles.dart';
import 'package:finfest_ui/views/stats_screen/expance_scree.dart';
import 'package:finfest_ui/views/stats_screen/income_screen.dart';
import 'package:finfest_ui/views/stats_screen/tab_item.dart';
import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Statistic', style: AppFontStyle.headingText),
          backgroundColor: AppColor.primaryColor,
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 80),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: AppColor.mediumDarkGreen),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  padding: const EdgeInsets.all(3),
                  indicator: BoxDecoration(
                      color: AppColor.lightGrey,
                      borderRadius: BorderRadius.circular(20)),
                  tabs: const [
                    TabItem(title: 'Income'),
                    TabItem(title: 'Expance'),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(children: [
          IncomeScreen(),
          ExpanceScreen(),
        ]),
      ),
    );
  }
}
