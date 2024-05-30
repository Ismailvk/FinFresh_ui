import 'package:finfest_ui/constants/app_colors.dart';
import 'package:finfest_ui/constants/font_styles.dart';
import 'package:finfest_ui/views/home_screen/widgets/transaction_listtile_widget.dart';
import 'package:finfest_ui/views/stats_screen/widgets/graph_item_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ExpanceScreen extends StatelessWidget {
  const ExpanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height / 2.3,
            width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  AppColor.secondaryColor.withOpacity(0.09),
                  AppColor.primaryColor,
                ],
                focal: Alignment.center,
                radius: 0.5,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                SizedBox(
                  height: size.height / 4,
                  child: Stack(
                    children: [
                      PieChart(
                        PieChartData(
                          startDegreeOffset: 250,
                          sectionsSpace: 5,
                          sections: [
                            PieChartSectionData(
                              value: 45,
                              color: AppColor.lightRed,
                              radius: 45,
                              showTitle: false,
                            ),
                            PieChartSectionData(
                              value: 30,
                              color: AppColor.mediumPurple,
                              radius: 35,
                              showTitle: false,
                            ),
                            PieChartSectionData(
                              value: 15,
                              color: AppColor.secondaryColor,
                              radius: 20,
                              showTitle: false,
                            ),
                            PieChartSectionData(
                              value: 20,
                              color: AppColor.paleGreen,
                              radius: 30,
                              showTitle: false,
                            ),
                          ],
                        ),
                      ),
                      Positioned.fill(
                        bottom: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: size.height / 7,
                              width: size.width / 2,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.mediumDarkGreen,
                              ),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('\$459.00'),
                                  Text('Total Expance')
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GraphItemWidget(
                        color: AppColor.lightRed, title: 'Subscription'),
                    GraphItemWidget(
                        color: AppColor.mediumPurple, title: 'Food'),
                    GraphItemWidget(
                        color: AppColor.paleGreen, title: 'Shopping'),
                    GraphItemWidget(
                        color: AppColor.secondaryColor, title: 'Health Care')
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Transaction', style: AppFontStyle.boldWhite20),
                Text('See all', style: TextStyle(color: AppColor.darkTeal))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const TransactionListtileWidget(
                    icon: Icons.ac_unit,
                    title: 'Nk Ever.ltd',
                    subTitle: 'Project 24-Feb',
                    trailingTtitle: '+\$273',
                    color: Colors.green);
              },
            ),
          ),
        ],
      ),
    );
  }
}
