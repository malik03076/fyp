import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final refs = FirebaseDatabase.instance.ref('tblobservation').onValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  'Soil Moisture',
                  style: TextStyle(color: Color(0xffe6ba44), fontSize: 21),
                ),
              ],
            ),
            StreamBuilder(
                stream: refs,
                builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
                  if (snapshot.connectionState == ConnectionState.active) {
                    dynamic data = snapshot!.data!.snapshot.value as dynamic;
                    dynamic rain = data['soilmoisture'].toString();
                    if (rain is String) {
                     log();

                      // rain = double.parse(rain);
                      // rain = rain;
                    }
                    else{
                      rain='';
                    }
                    // return CircularProgressIndicator(
                    //   backgroundColor: Colors.grey,
                    //   value: rain ?? 0,
                    // );
                    return SizedBox();
                  } else {
                    return Container();
                  }
                })
            // Example 16
          ],
        ),
      ),
    );
  }
}
