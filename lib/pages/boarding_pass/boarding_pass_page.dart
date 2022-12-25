import 'package:dotted_line/dotted_line.dart';
import 'package:flight_booking/utils/colors.dart';

import 'package:flutter/material.dart';

class BoardingPass extends StatelessWidget {
  const BoardingPass({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: primaryColor,
                      image: const DecorationImage(
                          image: AssetImage('assets/world_map.png'))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_back),
                              ),
                            ),
                            const Align(
                                alignment: Alignment.topRight,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/profile_pic.jpeg'),
                                ))
                          ],
                        ),
                        const Text(
                          'Boarding Pass',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    color: Color(0xFFf5f5f5),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 90, 20, 90),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/aeroplane.png',
                    height: 80,
                  ),
                  const Text(
                    'America Airlines Flight MLI-18',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DottedLine(dashColor: Colors.grey.shade300),
                  boardingToLanding(),
                  dateAndTime(),
                  seatAndFlightDetail(),
                  const SizedBox(
                    height: 10,
                  ),
                  DottedLine(dashColor: Colors.grey.shade300),
                  Image.asset(
                    'assets/barcode.png',
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0, left: 16, right: 16),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(bottleGreen),
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size(MediaQuery.of(context).size.width, 55),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                child: const Text(
                  'Download Ticket',
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }

  Widget dateAndTime() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: greenShade),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 26, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.timer,
                  color: Colors.orange.shade300,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Time',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text('10:00 - 12:00')
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 26, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.date_range_outlined,
                  color: greenShade,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Date',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text('June 30,2022')
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget seatAndFlightDetail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gate',
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            const Text(
              'C2',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Seat',
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            const Text(
              'A1',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Flight No',
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            const Text(
              'ZCVD',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Class',
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            const Text(
              'Business',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            )
          ],
        )
      ],
    );
  }

  Widget boardingToLanding() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'BSW',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange.shade300,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'Barstow',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.flight_takeoff_outlined,
              color: blueShade,
            ),
            const Text('2h 55m ')
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ARV',
              style: TextStyle(
                  fontSize: 18,
                  color: bottleGreen,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'Ashland',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ],
    );
  }
}
