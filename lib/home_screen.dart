import 'package:fitness_app/custom%20method/custom_method_all.dart';
import 'package:fitness_app/utils/colors.dart';
import 'package:flutter/material.dart';

import 'custom widget/cw_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        leading: customMethodCircular(icon: Icons.menu),
        actions: [
          customMethodCircular(icon: Icons.notification_add_outlined)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customMethodHandwrite1(text: "Make Your"),
            customMethodHandwrite1(text: "Body Perfect", textColor: AppColors.primaryColor),
            Stack(
              children: [
                Container(
                  height: size.height*.2,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text("Full Body \n Exercise X3"),
                        Row(
                          children: [
                            Icon(Icons.local_fire_department_outlined),
                            Text('1230 cll')
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.local_fire_department_outlined),
                            Text('1230 cll')
                          ],
                        ),
                      ],
                    ),

                  ],
                )
              ],
            ),
            // Container(
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     color: AppColors.primaryColor
            //   ),
            //   child: Stack(
            //     children: [
            //       Column()
            //     ],
            //   ),
            // ),
            Row(
              children: [
                CWContainer(text1: 'Running \nDistance', text2: '1.8 km', icon: Icons.run_circle_outlined,),
                CWContainer(text1: "Total \nCyclling", text2: '7.3 km', icon: Icons.motorcycle_sharp,backGColor: AppColors.secondaryColor,)
              ],
            )
          ],
        ),
      ),
    );
  }

}

