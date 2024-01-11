// ignore_for_file: prefer_const_constructors

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
              height: isExpanded ? 200 : 130,
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
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                deviceData['message'] ?? 'N/A',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  color: Color.fromARGB(255, 4, 75, 7),
                  fontSize: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15, right: 50),
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
                      'Product Name',
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
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 60,
                  width: 80,
                  child: Image.asset(
                    getImagePath(deviceData['deviceId']),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildExpandedContent(Map<String, dynamic> deviceData) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                deviceData['message'] ?? 'N/A',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  color: Color.fromARGB(255, 4, 75, 7),
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                deviceData['deviceId'],
                style: TextStyle(
                  fontFamily: 'Avenir',
                  color: const Color.fromARGB(255, 65, 65, 65),
                  fontSize: 12,
                ),
              ),
                    SizedBox(
                height: 10,
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
                      onPressed: () {},
                      style: TextButton.styleFrom(),
                      child: Text(
                        "Request",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                  ),
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
    );
  }

// Padding(
//           padding: const EdgeInsets.only(left: 70, right: 0, top: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Container(
//                 height: 40,
//                 width: 100,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.3),
//                       spreadRadius: 1,
//                       blurRadius: 10,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                   color: Color.fromARGB(255, 157, 0, 86),
//                 ),
//                 child: TextButton(
//                   onPressed: () {},
//                   style: TextButton.styleFrom(),
//                   child: Text(
//                     "Request",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 15,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 height: 40,
//                 width: 100,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.3),
//                       spreadRadius: 1,
//                       blurRadius: 10,
//                       offset: Offset(0, 3),
//                     ),
//                   ],
//                   color: Color.fromARGB(255, 157, 0, 86),
//                 ),
//                 child: TextButton(
//                   onPressed: () {
//                      Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => DeviceDetails(deviceData),
//               ),
//             );
//                   },
//                   style: TextButton.styleFrom(),
//                   child: Text(
//                     "More",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 15,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
  String getImagePath(String deviceId) {
    switch (deviceId) {
      case '746ec924d3845797':
        return "assets/images/Suction.png";
      case '2ab16f2edef8891a':
        return "assets/images/AgVaPro.png";
      case '2ab16f2edef8891a':
        return "assets/images/AgVaPro.png";
      default:
        return "assets/images/DVT.png";
    }
  }
}
