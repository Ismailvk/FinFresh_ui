import 'package:finfest_ui/constants/app_colors.dart';
import 'package:finfest_ui/constants/font_styles.dart';
import 'package:finfest_ui/constants/image_urls.dart';
import 'package:finfest_ui/views/home_screen/widgets/card_widget.dart';
import 'package:finfest_ui/views/home_screen/widgets/circle_widget.dart';
import 'package:finfest_ui/views/home_screen/widgets/transaction_listtile_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  List pages = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(ImageUrls.profileImgae),
              ),
              title: Text('Hi Johan', style: AppFontStyle.headingText),
              subtitle:
                  Text('Welcome Back', style: AppFontStyle.lightGreySmallText),
              trailing:
                  Icon(Icons.notifications_outlined, color: AppColor.lightGrey),
            ),
            const HomeCardWidget(),
            const SizedBox(height: 5),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeCircleWidget(icon: Icons.handshake),
                HomeCircleWidget(icon: Icons.transfer_within_a_station),
                HomeCircleWidget(icon: Icons.touch_app),
                HomeCircleWidget(icon: Icons.more_horiz),
              ],
            ),
            const SizedBox(height: 8),
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
            )
          ],
        ),
      ),
    );
  }
}
