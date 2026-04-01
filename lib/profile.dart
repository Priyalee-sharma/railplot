import 'package:flutter/material.dart';
import 'package:railplot/color.dart';
import 'package:railplot/custom_appbar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        showProfileIcon: true,
        showVerticalBar: true,
        showHambergerMenu: true,
      ),
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.railGradient),
        child: Center(
          child: Container(
            height: 700,
            width: 370,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      Text(
                        'User Profile',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.account_circle,
                        size: 100,
                        color: const Color.fromARGB(255, 83, 19, 94),
                      ),
                      Text(
                        'Rail User',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 83, 19, 94),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'User Name',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],

                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(
                                  30,
                                  0,
                                  0,
                                  0,
                                ), // 👈 30% opacity
                              ),
                            ),
                            labelText: "User2",
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Change Pssword',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: 350,

                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                labelText: "Existing Password",
                                labelStyle: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    149,
                                    148,
                                    148,
                                  ),
                                  fontSize: 20,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(
                                      30,
                                      0,
                                      0,
                                      0,
                                    ), // 👈 30% opacity
                                  ),

                                  // border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              decoration: InputDecoration(
                                labelText: "New Password",
                                labelStyle: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    149,
                                    148,
                                    148,
                                  ),
                                  fontSize: 20,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(
                                      30,
                                      0,
                                      0,
                                      0,
                                    ), // 👈 30% opacity
                                  ),

                                  // border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              decoration: InputDecoration(
                                labelText: "Confirm New Password",
                                labelStyle: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    149,
                                    148,
                                    148,
                                  ),
                                  fontSize: 20,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(
                                      30,
                                      0,
                                      0,
                                      0,
                                    ), // 👈 30% opacity
                                  ),

                                  // border: OutlineInputBorder(),
                                ),
                                // focusedBorder: OutlineInputBorder(
                                //   borderSide: BorderSide(
                                //     color: Colors.purple.withOpacity(
                                //       0.5,
                                //     ), // 👈 50% opacity
                                //     width: 2,
                                //   ),
                                // ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  6,
                                ), // 👈 same radius
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    gradient: AppColors.railGradient,
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      shadowColor: Colors.transparent,
                                      fixedSize: Size(200, 50),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Chnage Password',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
