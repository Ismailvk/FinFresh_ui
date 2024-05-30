import 'package:finfest_ui/constants/app_colors.dart';
import 'package:flutter/material.dart';

class GraphItemWidget extends StatelessWidget {
  final Color color;
  final String title;
  const GraphItemWidget({super.key, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(height: 15, width: 15, color: color),
        const SizedBox(width: 4),
        Text(
          title,
          style: TextStyle(fontSize: 10, color: AppColor.lightGrey),
        )
      ],
    );
  }
}
