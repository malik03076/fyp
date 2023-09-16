import 'package:agrotech/screens/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height * 0.6,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(35)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Agro Tech',
                        style: TextStyle(
                            color: Color(0xffe6ba44),
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                    Lottie.asset('animation/home.json'),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                width: width,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(35)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashBoard()));
                            },
                            child: Column(
                              children: [
                                Icon(
                                  Icons.dashboard,
                                  size: height * 0.08,
                                  color: const Color(0xffe6ba44),
                                ),
                                const Text('Dashboard',
                                    style: TextStyle(
                                        color: Color(0xffe6ba44),
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Image(
                                  image: const AssetImage('images/pest.png'),
                                  height: height * 0.08,
                                  color: const Color(0xffe6ba44)),
                              const Text('Disease Report',
                                  style: TextStyle(
                                      color: Color(0xffe6ba44),
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height*0.08,
              ),
              Container(
                width: width,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(35)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image(
                                  image: const AssetImage('images/plant.png'),
                                  height: height * 0.08,
                                  color: const Color(0xffe6ba44)),
                              const Text('Growth',
                                  style: TextStyle(
                                      color: Color(0xffe6ba44),
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.exit_to_app,
                                size: height * 0.08,
                                color: const Color(0xffe6ba44),
                              ),
                              const Text('Exit',
                                  style: TextStyle(
                                      color: Color(0xffe6ba44),
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
