import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:railplot/logindata.dart';
import 'package:railplot/color.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLogin = context.watch<LoginData>().getError();
    return Scaffold(
      // backgroundColor: AppColors.primaryPurple,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromARGB(255, 4, 46, 81),

        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  size: 70,
                  color: Color.fromARGB(255, 78, 5, 91),
                ),

                Positioned(
                  top: 18,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage("assets/trainLogo2.jpg"),
                  ),
                ),
              ],
            ),

            // const SizedBox(width: 10),
            Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "RailPlot",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(
                    width: 150,
                    // height: 10,
                    child: Divider(
                      color: Colors.black,
                      thickness: 1,
                      height: 1,
                    ),
                  ),

                  RichText(
                    text: const TextSpan(
                      style: TextStyle(fontSize: 12, color: Colors.black),
                      children: [
                        TextSpan(
                          text: "V",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "isualize "),

                        TextSpan(
                          text: "A",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "nalyze "),

                        TextSpan(
                          text: "O",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "ptimize"),
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
          ],
        ),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 4, 46, 80),
              const Color.fromARGB(255, 162, 27, 185),
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            // stops: [0.4, 1.0],
          ),
        ),

        child: Center(
          child: Container(
            height: 690,
            width: 380,
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(23),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Stack(
                    //   alignment: Alignment.center,
                    //   children: [
                    //     Icon(
                    //       Icons.location_on,
                    //       size: 50,
                    //       color: const Color.fromARGB(255, 78, 5, 91),
                    //     ),
                    //     SizedBox(width: 8),
                    //     Positioned(
                    //       top: 10,
                    //       child: CircleAvatar(
                    //         radius: 10,
                    //         // backgroundImage: AssetImage("assets/trainLogo2.jpg"),

                    //       ),
                    //     ),
                    //   ],
                    // ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 50,
                          color: Color.fromARGB(255, 78, 5, 91),
                        ),
                        Positioned(
                          top: 8,
                          child: CircleAvatar(
                            radius: 11.5,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.train,
                              color: const Color.fromARGB(255, 42, 6, 48),
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 0.1),
                    Expanded(
                      child: SizedBox(
                        height: 90,
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "RailPlot",
                              style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 4, 34, 59),
                              ),
                            ),

                            const SizedBox(
                              width: 120,
                              child: Divider(
                                color: Colors.black,
                                thickness: 1,
                                height: 1,
                              ),
                            ),

                            RichText(
                              text: const TextSpan(
                                style: TextStyle(fontSize: 10),
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
                              width: 120,
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
                Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 22,
                    color: const Color.fromARGB(255, 5, 37, 63),
                  ),
                ),
                Text(
                  'Welcome to RailPlot - Let’s create your account',
                  style: TextStyle(
                    fontSize: 14,
                    color: const Color.fromARGB(255, 74, 74, 74),
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: Divider(
                    thickness: 0.4,
                    color: const Color.fromARGB(255, 106, 105, 105),
                  ),
                ),

                const SizedBox(height: 20),
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 4, 45, 79),
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    labelText: 'Enter your email',
                    errorText: isLogin ? "" : null,
                  ),
                  onChanged: (name) {
                    context.read<LoginData>().setName(name);
                  },
                ),
              ],
            ),

            // ),
          ),
        ),
      ),
    );
  }
} 


            // const SizedBox(height: 20),

            // /// PASSWORD FIELD
            // TextField(
            //   obscureText: true,
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(),
            //     labelText: 'Enter Password',
            //     errorText: isLogin ? "Login failed let's try again." : null,
            //   ),
            //   onChanged: (pass) {
            //     context.read<LoginData>().setPass(pass);
            //   },
            // ),

            // const SizedBox(height: 25),

            /// LOGIN BUTTON
            // SizedBox(
            //   width: double.infinity,
            //   height: 45,
            //   child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Color.fromARGB(255, 78, 5, 91),
            //     ),
            //     onPressed: () {
            //       context.read<LoginData>().setError();

            //       if (!context.read<LoginData>().getError()) {
            //         Navigator.pushNamed(context, 'welcome');
            //       }
            //     },
            //     child: const Text("Login", style: TextStyle(fontSize: 16)),
            //   ),
         

//   Widget build(BuildContext context) {
//     bool isLogin = context.watch<LoginData>().getError();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login Page'),
//         foregroundColor: Colors.purple,
//         backgroundColor: Colors.white,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             SizedBox(
//               width: 300,
//               height: 60,
//               child: TextField(
//                 onChanged: (name) {
//                   context.read<LoginData>().setName(name);
//                 },
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Enter email',
//                   errorText: isLogin ? "" : null,
//                 ),
//               ),
//             ),
//             SizedBox(height: 30),
//             SizedBox(
//               width: 300,
//               height: 60,
//               child: TextField(
//                 onChanged: (pass) {
//                   context.read<LoginData>().setPass(pass);
//                 },
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Enter Password',
//                   errorText: isLogin ? "Login failed let's try again." : null,
//                 ),
//               ),
//             ),
//             SizedBox(height: 30),
//             ElevatedButton(
//               onPressed: () {
//                 context.read<LoginData>().setError();
//                 print('checking');
//                 print(context.read<LoginData>().getError());
//                 if (!context.read<LoginData>().getError()) {
//                   Navigator.pushNamed(context, 'welcome');
//                 }
//               },
//               child: Text('Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
