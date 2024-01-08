// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import '../Screens/DeviceDetails.dart';

class ActiveDevices extends StatelessWidget {
  final List<Map<String, dynamic>> deviceList;

  ActiveDevices(this.deviceList);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: deviceList.map((deviceData) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DeviceDetails(deviceData),
              ),
            );
          },
          child: Container(
            height: 130,
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
            child: Padding(
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
                        padding: const EdgeInsets.only(
                            left: 15, top: 15, right: 120),
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
                ],
              ),
              
            ),
          ),
        );
      }).toList(),
    );
  }
}
