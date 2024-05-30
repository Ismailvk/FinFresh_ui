import 'package:finfest_ui/constants/app_colors.dart';
import 'package:finfest_ui/constants/font_styles.dart';
import 'package:finfest_ui/constants/image_urls.dart';
import 'package:finfest_ui/views/settings_screen/widgets/big_button_widget.dart';
import 'package:finfest_ui/views/settings_screen/widgets/button_widget.dart';
import 'package:finfest_ui/views/settings_screen/widgets/number_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String inputDisplay = '';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer', style: AppFontStyle.headingText),
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage(ImageUrls.profileImgae),
            ),
            const SizedBox(height: 10),
            const Text('Jhon Wick'),
            const SizedBox(height: 10),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Account no: ',
                    style: TextStyle(color: AppColor.lightGrey),
                  ),
                  TextSpan(
                    text: ' 6666 2222 2222 3333 8888',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            const ButtonWidget(title: 'Edit'),
            const SizedBox(height: 5),
            Container(
              height: size.height / 14,
              width: size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: AppColor.darkTeal,
                  width: 1,
                ),
              ),
              child: Center(
                  child: Text(
                '\$ $inputDisplay',
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              )),
            ),
            const SizedBox(height: 20),
            const BigButtonWidget(),
            const SizedBox(height: 10),
            SizedBox(
              height: size.height / 3,
              width: size.width / 1.2,
              child: GridView.builder(
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisExtent: 60,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 35),
                itemBuilder: (context, index) {
                  if (index == 9) {
                    return GestureDetector(
                        onTap: () {
                          inputDisplay.contains('.') ? '' : inputDisplay += '.';
                          setState(() {});
                        },
                        child: NumberWidget(
                            child: const Text('.',
                                style: TextStyle(fontSize: 18))));
                  } else if (index == 10) {
                    return GestureDetector(
                        onTap: () {
                          inputDisplay += 0.toString();
                          setState(() {});
                        },
                        child: NumberWidget(
                          child: const Center(
                              child: Text('0', style: TextStyle(fontSize: 18))),
                        ));
                  } else if (index == 11) {
                    return GestureDetector(
                        onTap: () {
                          inputDisplay == ''
                              ? inputDisplay = ''
                              : inputDisplay = inputDisplay.substring(
                                  0, inputDisplay.length - 1);
                          setState(() {});
                        },
                        child: NumberWidget(
                          child: const Center(
                              child: Icon(Icons.backspace_outlined,
                                  color: AppColor.white)),
                        ));
                  }
                  return GestureDetector(
                    onTap: () {
                      inputDisplay += (index + 1).toString();
                      setState(() {});
                    },
                    child: NumberWidget(
                      child: Center(
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
