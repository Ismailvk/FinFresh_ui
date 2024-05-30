import 'package:finfest_ui/constants/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NumberWidget extends StatelessWidget {
  Widget child;
  NumberWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.mediumDarkGreen,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
