import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = AppLayout.getsize(context);
    return Scaffold(
        backgroundColor: styles.bgcolor,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "What are\nyou looking for?",
              style: styles.headLineStyle1.copyWith(fontSize: 40),
            ),
            Gap(AppLayout.getHeight(20)),
           FittedBox(
            child:  Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  // airline tickets
                  Container(
                    width: Size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.horizontal(left: Radius.circular( AppLayout.getHeight(50))),
                  color: Colors.white),
                  child: Center(child: Text("Airline tickets"),),
                  ),

                  // hotels
                  Container(
                    width: Size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.horizontal(right: Radius.circular( AppLayout.getHeight(50))),
                  color: Colors.transparent),
                  child: Center(child: Text("Hotels"),),
                  ),
                  ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(50),
                  ),
                  color: const Color(0xFFF4F6FD)),
            ),
           ),

          ],
        ));
  }
}
