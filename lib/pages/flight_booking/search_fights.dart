import 'package:flight_booking/utils/colors.dart';
import 'package:flutter/material.dart';

import 'package:cupertino_tabbar/cupertino_tabbar.dart' as CupertinoTabBar;
import 'dart:math' as math;

class SearchFligts extends StatefulWidget {
  const SearchFligts({super.key});

  @override
  State<SearchFligts> createState() => _SearchFligtsState();
}

class _SearchFligtsState extends State<SearchFligts> {
  int cupertinoTabBarValue = 0;
  int cupertinoTabBarValueGetter() => cupertinoTabBarValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 18,
              ),
              CupertinoTabBar.CupertinoTabBar(
                borderRadius: BorderRadius.circular(18),
                const Color(0xFFF6F6F6),
                const Color(0xFF3D968F),
                [
                  SizedBox(
                    height: 40,
                    width: (MediaQuery.of(context).size.width) / 4,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "One way",
                        style: TextStyle(
                          color: cupertinoTabBarValue == 0
                              ? Colors.white
                              : Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: "SFProRounded",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Text(
                    "Round Trip",
                    style: TextStyle(
                      color: cupertinoTabBarValue == 1
                          ? Colors.white
                          : Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SFProRounded",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Multi-way",
                    style: TextStyle(
                      color: cupertinoTabBarValue == 2
                          ? Colors.white
                          : Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: "SFProRounded",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
                cupertinoTabBarValueGetter,
                (int index) {
                  setState(() {
                    cupertinoTabBarValue = index;
                    print(index);
                  });
                },
                useShadow: false,
                innerHorizontalPadding: 5,
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Color(0xFFD7D7D8),
                    )),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 16),
                      child: Icon(
                        Icons.flight_takeoff_outlined,
                        color: Color(0xFFDE9D65),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'From',
                          style: TextStyle(color: greyshade),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'London, NCD',
                          style: TextStyle(overflow: TextOverflow.ellipsis),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: const Color(0xFFD7D7D8),
                    )),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Icon(
                        Icons.flight_land_rounded,
                        color: blueShade,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'To',
                          style: TextStyle(color: greyshade),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Barstow, BSW',
                          style: TextStyle(overflow: TextOverflow.ellipsis),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
