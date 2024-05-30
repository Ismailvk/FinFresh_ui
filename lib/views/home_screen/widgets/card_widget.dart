import 'package:finfest_ui/constants/app_colors.dart';
import 'package:finfest_ui/constants/font_styles.dart';
import 'package:finfest_ui/constants/image_urls.dart';
import 'package:flutter/material.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        height: size.height / 3.4,
        width: size.width / 1.1,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.darken),
            image: const AssetImage(ImageUrls.cardBgImage),
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            SizedBox(
              width: size.width / 1.9,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Balance',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('October 23 2024',
                        style: TextStyle(color: AppColor.lightGrey)),
                    const SizedBox(height: 20),
                    const Text(
                      '\$ 19,504.00',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          '**** **** **** **** 4323',
                          style: TextStyle(color: AppColor.lightGrey),
                        ),
                        const SizedBox(width: 5),
                        Icon(Icons.visibility_off, color: AppColor.lightGrey)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Container(
                    height: size.height / 5,
                    width: size.width / 4.3,
                    decoration: BoxDecoration(
                        color: AppColor.secondaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.moving, color: AppColor.green),
                            Text('in', style: AppFontStyle.normalGreen)
                          ],
                        ),
                        Text('\$ 1021.00', style: AppFontStyle.normalBlack),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Divider(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.trending_down, color: Colors.red),
                            Text('in', style: AppFontStyle.normalRed)
                          ],
                        ),
                        Text('\$ 1021.00', style: AppFontStyle.normalBlack),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
