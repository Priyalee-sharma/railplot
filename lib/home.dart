import 'package:flutter/material.dart';
import 'package:railplot/color.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromARGB(255, 4, 46, 81),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  top: 12,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage("assets/trainLogo2.jpg"),
                  ),
                ),
              ],
            ),

            Expanded(
              child: SizedBox(
                height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "RailPlot",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(
                      width: 150,
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                        height: 1,
                      ),
                    ),

                    RichText(
                      text: const TextSpan(
                        style: TextStyle(fontSize: 12),
                        children: [
                          TextSpan(
                            text: "V",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "isualize ",
                            style: TextStyle(color: Colors.black),
                          ),

                          TextSpan(
                            text: "A",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "nalyze ",
                            style: TextStyle(color: Colors.black),
                          ),

                          TextSpan(
                            text: "O",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "ptimize",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      width: 150,
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Colors.purple, size: 40),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              color: Color.fromARGB(255, 87, 85, 85),
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'profile');
            },
          ),
        ],
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
                    const CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage("assets/trainLogo2.jpg"),
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
                leading: const Icon(Icons.login),
                title: const Text("Login"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'login');
                },
              ),

              ListTile(
                leading: const Icon(Icons.person_add),
                title: const Text("Signup"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'signup');
                },
              ),

              const Divider(),

              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/trainBg2.jpg",
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),

                Container(
                  width: double.infinity,
                  height: 250,
                  color: Colors.black.withOpacity(0.7),
                ),
                const Positioned(
                  top: 80,
                  left: 20,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Powerful Data Analytics for\nRailways",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "Analyze, improve, and guide loco pilots with real-time insights\nfor safer railway operations across India.",
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            const Text(
              'Speed-Time Graphs',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Visualize loco speed trends to monitor operational efficiency and punctuality with precise real-time data tracking.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Braking Profile Analysis',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Analyze braking patterns to enhance safety and optimize braking efficiency, reducing wear and increasing train stability.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Guideline Violation Detection',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Detect overspeed, late braking, and other violations instantly to enforce compliance and prevent accidents.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: 80,
        color: const Color.fromARGB(255, 231, 229, 229),

        child: const Center(
          child: Text(
            "© 2026 Orryworx | All Rights Reserved",
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ),
      ),
    );
  }
}
