import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class SearchResultsList extends StatelessWidget {
  const SearchResultsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 12, (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 18, right: 18, top: 18, bottom: 18),
                  child: Stack(children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width / 0.5,
                      decoration: BoxDecoration(
                          color: greenShade,
                          borderRadius: BorderRadius.circular(25)),
                      child: Image.asset('assets/aeroplane.png'),
                    ),
                  ]),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 18.0, right: 18, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Flight Yogyakarta'),
                      Text(
                        'HJB- JKM',
                        style: TextStyle(color: greyshade),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, right: 18),
                  child: Divider(
                    color: greyshade,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18, right: 8),
                          child: Icon(
                            Icons.access_time_rounded,
                            color: secondaryColor,
                            size: 16,
                          ),
                        ),
                        const Text(
                          '10.00 AM - 12.00 PM',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Text('Book Now',
                                style: TextStyle(color: Colors.orange)),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.orange,
                              size: 18,
                            )
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
