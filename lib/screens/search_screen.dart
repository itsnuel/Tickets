import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:tickets/utils/app_layout.dart';
import 'package:tickets/utils/app_styles.dart';
import 'package:tickets/widgets/icon_text_widget.dart';

import '../widgets/double_text_widget.dart';

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
              child: Container(
                padding: const EdgeInsets.all(3.5),
                child: Row(
                  children: [
                    // airline tickets
                    Container(
                      width: Size.width * .44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(AppLayout.getHeight(50))),
                          color: Colors.white),
                      child: const Center(
                        child: Text("Airline tickets"),
                      ),
                    ),

                    // hotels
                    Container(
                      width: Size.width * .44,
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(7)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(AppLayout.getHeight(50))),
                          color: Colors.transparent),
                      child: const Center(
                        child: Text("Hotels"),
                      ),
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
            Gap(AppLayout.getHeight(25)),
            const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
             Gap(AppLayout.getHeight(20)),
            const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
                Gap(AppLayout.getHeight(25)),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Color(0xD91130CE),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: 
                     Center(
                       child: Text(
                          "Find tickets",
                          style: styles.textStyle.copyWith(color: Colors.white),
                        ),
                     )
           ),
           Gap(AppLayout.getHeight(40)),
           const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
           Gap(AppLayout.getHeight(15)),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: Size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal:15, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                   borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                   boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                   ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/sit.jpg"
                          )
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss.",
                      style: styles.headLineStyle2,
                    ),
                  ],
                ),
              ),
            
            Column(
              children: [
                  Stack(
                    children: [
                                      Container(
                  width: Size.width*0.44,
                  height: AppLayout.getHeight(200),
                  decoration: BoxDecoration(
                    color: Color(0xFF3Ab8B8),
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Discount\nfor survey", style: styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                      Gap(AppLayout.getHeight(10)),
                      Text("Take the survey about our services and get discount", style: styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white, fontSize: 18),),
                    ],
                  ),
                ),

                Positioned(
                  right: -45,
                  top: -40,
                  child: 
                   Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Color(0xFF189999)),
                    color: Colors.transparent
                  ),
                  
                 ),
                ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: Size.width*0.44,
                    height: AppLayout.getHeight(210),
                     padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: const Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text("Take love",style: styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 38) 
                              ),
                              TextSpan(
                                text: '❤️',
                                style: TextStyle(fontSize: 48) 
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 38) 
                              ),
                            ]
                          ),
                        ),
                      ],
                    ),
                  )
              ],
            )
            ],
           ),
          ],
        ));
  }
}
