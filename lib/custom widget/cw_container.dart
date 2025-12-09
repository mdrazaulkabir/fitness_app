import 'package:flutter/material.dart';

import '../custom method/custom_method_all.dart';
import '../utils/colors.dart';

class CWContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final IconData icon;
  // final bool? isDark;
  final Color? backGColor;
  const CWContainer({
    super.key, required this.text1, required this.text2, required this.icon,this.backGColor
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: backGColor??AppColors.primaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: customMethodCircular(
                  icon: icon,
                  backGColor:backGColor?? AppColors.primaryColor.withOpacity(.5)),),
              CMBodyMedium(text: text1,textColor: Colors.white),
              CMBodyLage(text: text2,textColor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}
