// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import '../widgets/BtnWidget.dart';
import '../widgets/MDWidget.dart';

class MonitorData extends StatelessWidget {
  final Map<String, dynamic> deviceData;

  MonitorData(this.deviceData);

  @override
  Widget build(BuildContext context) {
    List<dynamic> deviceInfoList = deviceData['deviceInfo'];

    return Container(
      decoration: BoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
                    child: MDWidget(deviceData: deviceData),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20,),
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        width: 800,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: Color.fromARGB(255, 157, 0, 86),
                        ),
                        child: Row(
                          children: [
                            BtnWidget(),
                            BtnWidget(),
                            BtnWidget(),
                            BtnWidget(),
                          ],
                        ),
                      ),
                      Container(
                        height: 250,
                        width: 800,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, right: 50, top: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Device ID',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 58, 58, 58),
                                    ),
                                  ),
                                  Text(
                                    'Message',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 58, 58, 58),
                                    ),
                                  ),
                                  Text(
                                    'Type',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 58, 58, 58),
                                    ),
                                  ),
                                  Text(
                                    'Data',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 58, 58, 58),
                                    ),
                                  ),
                                  Text(
                                    'Time',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 58, 58, 58),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 0.1,
                              color: Colors.black,
                            ),
                            //Make it ListView
                            ListView.builder(
                                shrinkWrap: true,
                                itemCount: deviceInfoList.length,
                                itemBuilder: (context, index) {
                                  var info = deviceInfoList[index];

                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, right: 50, top: 10),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          '${info['DeviceId']}',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color:
                                                Color.fromARGB(255, 58, 58, 58),
                                          ),
                                        ),
                                        SizedBox(width: 70,),
                                        Text(
                                          'message',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color:
                                                Color.fromARGB(255, 58, 58, 58),
                                          ),
                                        ),
                                          SizedBox(width: 130,),
                                        Text(
                                            '${info['DeviceType']}',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color:
                                                Color.fromARGB(255, 58, 58, 58),
                                          ),
                                        ),
                                          SizedBox(width: 110,),
                                        Text(
                                          'Data',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color:
                                                Color.fromARGB(255, 58, 58, 58),
                                          ),
                                        ),
                                          SizedBox(width: 130,),
                                        Text(
                                          'Time',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color:
                                                Color.fromARGB(255, 58, 58, 58),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 0.1,
                              color: Colors.black,
                            ),
                          ],
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
    );
  }
}
