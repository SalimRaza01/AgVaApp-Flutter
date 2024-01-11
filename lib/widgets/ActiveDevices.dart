// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../Screens/DeviceDetails.dart';

class ActiveDevices extends StatefulWidget {
  final List<Map<String, dynamic>> deviceList;

  ActiveDevices(this.deviceList);

  @override
  _ActiveDevicesState createState() => _ActiveDevicesState();
}

class _ActiveDevicesState extends State<ActiveDevices> {
  int _expandedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.deviceList.asMap().entries.map((entry) {
        final int index = entry.key;
        final Map<String, dynamic> deviceData = entry.value;
        final bool isExpanded = index == _expandedIndex;

        return GestureDetector(
          onTap: () {
            setState(() {
              _expandedIndex = isExpanded ? -1 : index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: isExpanded ? 250 : 130,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.grey,
                  width: 0.2,
                ),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(5, 15),
                    color: Color.fromARGB(255, 199, 199, 199),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: isExpanded
                  ? buildExpandedContent(deviceData)
                  : buildCollapsedContent(deviceData),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget buildCollapsedContent(Map<String, dynamic> deviceData) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 30, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    deviceData['message'],
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      color: Color.fromARGB(255, 4, 75, 7),
                      fontSize: 12,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 10,
                      width: 10,
                      child: Image.asset(
                        getImagePath(deviceData['message']),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 16, right: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      deviceData['deviceId'],
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        color: Color.fromARGB(255, 58, 58, 58),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Serial Number',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        color: const Color.fromARGB(255, 65, 65, 65),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, bottom: 20),
            child: Container(
              height: 60,
              width: 80,
              child: Image.asset(
                "assets/images/AgVaPro.png",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildExpandedContent(Map<String, dynamic> deviceData) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //showing other widgets
            buildCollapsedContent(deviceData),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Device ID : ${deviceData['deviceId']}',
                    // deviceData['deviceId'],
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      color: const Color.fromARGB(255, 65, 65, 65),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Last Hour : ${deviceData['last_hours']}',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      color: Colors.red,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: Color.fromARGB(255, 157, 0, 86),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DeviceDetails(deviceData),
                              ),
                            );
                          },
                          style: TextButton.styleFrom(),
                          child: Text(
                            "More",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        // ),
      ],
    );
  }

  String getImagePath(String message) {
    switch (message) {
      case 'ACTIVE':
        return "assets/images/active.png";
      case 'INACTIVE':
        return "assets/images/inactive.png";
      default:
        return "assets/images/inactive.png";
    }
  }
}
