import 'package:finfest_ui/constants/app_colors.dart';
import 'package:finfest_ui/constants/font_styles.dart';
import 'package:flutter/material.dart';

class TransactionListtileWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  final String trailingTtitle;
  final Color color;

  const TransactionListtileWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle,
      required this.trailingTtitle,
      required this.color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return ListTile(
      leading: Container(
        height: size.height / 18,
        width: size.width / 8,
        decoration: BoxDecoration(
          color: AppColor.mediumDarkGreen,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: AppColor.lightGrey),
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16, color: AppColor.white),
      ),
      subtitle: Text(
        subTitle,
        style: AppFontStyle.lightGreySmallText,
      ),
      trailing: Text(trailingTtitle, style: TextStyle(color: color)),
    );
  }
}
