import 'package:finfest_ui/constants/app_colors.dart';
import 'package:flutter/material.dart';

class HomeCircleWidget extends StatelessWidget {
  final IconData icon;
  const HomeCircleWidget({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: AppColor.mediumDarkGreen,
      child: Icon(icon, color: AppColor.secondaryColor),
    );
  }
}
