import 'dart:ui';

import 'package:flight_booking/pages/flight_booking/search_fights.dart';
import 'package:flight_booking/pages/flight_booking/search_results.dart';
import 'package:flight_booking/utils/colors.dart';

import 'package:flutter/material.dart';

class FlightSearchPage extends StatefulWidget {
  const FlightSearchPage({super.key});

  @override
  State<FlightSearchPage> createState() => _FlightSearchPageState();
}

class _FlightSearchPageState extends State<FlightSearchPage> {
  String dropdownvalue = 'Lowest price';

  var items = [
    'Lowest price',
    'Highest price',
    'Fastest flight',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFf6f6f6),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: false,
              floating: false,
              delegate: CustomSliverDelegate(
                expandedHeight: 260,
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(left: 22.0, top: 16, bottom: 16),
              sliver: SliverToBoxAdapter(
                  child: Row(
                children: [
                  Text(
                    'Sort By',
                    style: TextStyle(color: greyshade),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: SizedBox(
                        height: 30,
                        child: DropdownButton(
                          elevation: 0,
                          underline: Container(),
                          borderRadius: BorderRadius.circular(10),
                          value: dropdownvalue,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.orange,
                          ),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(fontSize: 12),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              )),
            ),
            SearchResultsList(),
          ],
        ),
      ),
    );
  }
}

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final bool hideTitleWhenExpanded;

  CustomSliverDelegate({
    required this.expandedHeight,
    this.hideTitleWhenExpanded = true,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final appBarSize = expandedHeight - shrinkOffset;
    final cardTopPosition = expandedHeight / 2 - shrinkOffset;
    final proportion = 2 - (expandedHeight / appBarSize);
    final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;
    return SizedBox(
      height: expandedHeight + expandedHeight / 0.5,
      child: Stack(
        children: [
          SizedBox(
            height: (appBarSize < kToolbarHeight) ? kToolbarHeight : appBarSize,
            child: AppBar(
              backgroundColor: primaryColor,
              flexibleSpace: const Image(
                image: AssetImage(
                  'assets/world_map.png',
                ),
                fit: BoxFit.cover,
              ),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  print(kToolbarHeight);
                },
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile_pic.jpeg'),
                  ),
                )
              ],
              elevation: 0.0,
              title: Opacity(
                  opacity: hideTitleWhenExpanded ? 1.0 - percent : 1.0,
                  child: const Text("Book Your Flight")),
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: cardTopPosition > 0 ? cardTopPosition : 0,
            bottom: 0.0,
            child: Opacity(
              opacity: percent,
              child: const SearchFligts(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight + expandedHeight / 2;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
