import 'package:flutter/material.dart';
import 'package:railplot/Services/request_demo.dart';
import 'package:railplot/models/color.dart';
import 'package:railplot/models/custom_appbar.dart';
import 'package:railplot/models/custom_button.dart';
import 'package:railplot/providers/login_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final isLoggedIn = context.watch<LoginData>().isLoggedIn;
    final demoButton = context.watch<LoginData>().isLoggedIn;
    return Scaffold(
      appBar: CustomAppbar(
        showProfileIcon: context.watch<LoginData>().isLoggedIn,
        showVerticalBar: context.watch<LoginData>().isLoggedIn,
        showHambergerMenu: true,
      ),
      endDrawer: Drawer(
        child: Opacity(
          opacity: 0.9,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 120,
                color: Colors.white,
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(16),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 75,
                          color: const Color.fromARGB(255, 78, 5, 91),
                        ),
                        Positioned(
                          top: 11,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.train,
                              color: const Color.fromARGB(255, 42, 6, 48),
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(width: 10),

                    const Text(
                      'RailPlot',
                      style: TextStyle(fontSize: 20, color: Colors.purple),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.purple,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.purple,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(context, 'home');
                },
              ),
              const Divider(),
              if (!isLoggedIn)
                ListTile(
                  leading: const Icon(Icons.login),
                  title: const Text("Login"),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'login');
                  },
                ),
              if (!isLoggedIn) const Divider(),

              if (isLoggedIn)
                ListTile(
                  leading: const Icon(Icons.list),
                  title: const Text("Route List"),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
            ],
          ),
        ),
      ),

      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/trainLogo.jpeg",
                width: double.infinity,
                height: 380,
                fit: BoxFit.cover,
              ),

              Container(
                width: double.infinity,
                height: 380,
                color: Colors.black.withOpacity(0.8),
              ),
              Positioned(
                top: 80,
                left: 20,
                right: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Powerful Data Analytics for Railways",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),

                    SizedBox(height: 18),

                    Text(
                      "Analyze, improve, and guide loco pilot with real-time insights for safer, more efficient railway operations across India.",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(height: 20),
                    if (!demoButton)
                      CustomButton(
                        text: 'REQUEST A DEMO',
                        width: 200,
                        height: 50,
                        onPressed: () {
                          showDialog(
                            context: context,
                            barrierColor: Colors.black.withOpacity(0.3),
                            builder: (context) {
                              return Dialog(
                                insetPadding:
                                    EdgeInsets.zero, // 👈 THIS IS THE KEY
                                backgroundColor: Colors.transparent,
                                child: const RequestDemo(),
                              );
                            },
                          );
                        },
                      ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 40),
          Container(
            margin: EdgeInsets.all(20),
            child: Image.asset('assets/Home_graph.jpeg'),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Speed-Time Graphs',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Visualize loco speed trends to monitor operational efficiency and punctuality with precise real-time data tracking.',
                  style: TextStyle(fontSize: 18),
                  //   textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Braking Profile Analysis',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Analyze braking patterns to enhance safety and optimize braking efficiency, reducing wear and increasing train stability.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),

                Text(
                  'Guideline Violation Detection',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Detect overspeed, late braking, and other violations instantly to enforce compliance and prevent accidents.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),

          Center(
            child: Container(
              height: 600,
              width: 400,
              decoration: BoxDecoration(gradient: AppColors.railGradient),
              child: Center(
                child: Container(
                  height: 500,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          'Insightful Speed-Time Curve Comparison',
                          textAlign: TextAlign.center,

                          style: TextStyle(
                            fontSize: 22,
                            color: const Color.fromARGB(255, 151, 27, 153),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(height: 40),

                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/graph01.png'),
                            SizedBox(height: 10),
                            Text(
                              'Before Training',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Irregular speed, sharp accelerations and braking reducing efficiency.',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(height: 20),
                            Image.asset('assets/graph02.png'),
                            SizedBox(height: 10),
                            Text(
                              'After Training',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              'Smoother driving with optimal speed control enhancing safety and fuel economy.',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          Container(
            margin: EdgeInsets.all(20),
            child: Image.asset('assets/Home_graph02.jpeg'),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Braking Zone Visual Analysis',
                  style: TextStyle(
                    fontSize: 25,
                    color: const Color.fromARGB(255, 151, 27, 153),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'This visual tool identifies critical braking zones, flagging late applications and unnecessary early brakes for targeted pilot training.',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 20),
                Text(
                  'Reducing braking inconsistencies ensures greater passenger comfort, less mechanical stress, and enhanced safety.',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: Container(
              height: 570,
              width: 400,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 234, 233, 233),
              ),
              child: Column(
                children: [
                  SizedBox(height: 45),
                  Text(
                    'Driving Pattern Suggestions',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 45),
                  Container(
                    height: 120,
                    width: 370,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'Optimized Speed Control',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Encourages steady acceleration to reduce energy consumption.',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 57, 56, 56),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 120,
                    width: 370,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'Timely Braking',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Promotes early and smooth braking for increased safety and efficiency.',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 57, 56, 56),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 120,
                    width: 370,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'Compliance Reinforcement',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Alerts on any deviations to ensure adherence to safety guidelines.',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 57, 56, 56),
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Column(
            children: [
              Image.asset('assets/email.png', height: 50, width: 50),
              Text('Mail to Us At', style: TextStyle(fontSize: 18)),
              Text(
                'connect@orryworx.com',
                style: TextStyle(
                  fontSize: 21,
                  color: const Color.fromARGB(255, 174, 103, 224),
                ),
              ),
              SizedBox(height: 20),
              Image.asset('assets/product.png', height: 50, width: 50),
              Text('Product of', style: TextStyle(fontSize: 18)),
              Text(
                'www.orryworx.com',
                style: TextStyle(
                  fontSize: 21,
                  color: const Color.fromARGB(255, 174, 103, 224),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 1,
                width: 230,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.transparent,
                      Colors.grey,
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Image.asset('assets/location.jpeg', width: 45, height: 55),

              Text(
                "Gurugram",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.purple, fontSize: 18),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'Plot No. 1038, Sector 40 Gurugram (HR), 122001',
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 57, 56, 56),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              SizedBox(height: 30),
              Container(
                height: 1,
                width: 230,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.transparent,
                      Colors.grey,
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              DecoratedBox(
                decoration: BoxDecoration(gradient: AppColors.railGradient),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    fixedSize: const Size(350, 50),
                  ),
                  onPressed: () {},

                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.description, color: Colors.white, size: 25),
                      const Text(
                        'View RailPlot Presentation',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ],
      ),

      bottomNavigationBar: Container(
        height: 80,
        color: const Color.fromARGB(255, 231, 229, 229),

        child: const Center(
          child: Text(
            "© 2026 Orryworx | All Rights Reserved",
            style: TextStyle(
              color: Color.fromARGB(255, 57, 56, 56),
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
