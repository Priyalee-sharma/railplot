import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:railplot/home.dart';
import 'package:railplot/models/auth_storage.dart';
import 'package:railplot/models/custom_button.dart';

import 'package:railplot/models/user_api.dart';
import 'package:railplot/passwordProvider.dart';
import 'package:railplot/models/color.dart';
import 'package:railplot/models/custom_appbar.dart';
import 'package:railplot/providers/login_provider.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool hashError = context.watch<LoginData>().error != null;
    final provider = Provider.of<LoginData>(context);

    return Scaffold(
      appBar: CustomAppbar(
        showProfileIcon: false,
        showVerticalBar: false,
        showHambergerMenu: false,
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

            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        // CustomAppbar(),
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
                  child: Divider(thickness: 0.1, color: Color(0xFFA5A1F7)),
                ),
                if (provider.error != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Login failed. Invalid credentials.",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                const SizedBox(height: 20),
                Text('Email', style: TextStyle(fontSize: 15)),
                SizedBox(height: 8),
                TextField(
                  controller: userNameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 232, 229, 238),
                    labelText: 'Enter your email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 102, 103, 162),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                  onChanged: (name) {
                    // context.read<LoginData>().setName(name);
                  },
                ),
                const SizedBox(height: 20),
                Text('Password', style: TextStyle(fontSize: 15)),
                SizedBox(height: 8),
                Consumer<PasswordProvider>(
                  builder: (context, provider, child) {
                    return TextField(
                      controller: passwordController,
                      obscureText: provider.isHidden,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 232, 229, 238),
                        labelText: 'Enter your Password',
                        labelStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 102, 103, 162),
                          ),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            provider.isHidden
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: provider.passwordVisibility,
                        ),
                      ),

                      onChanged: (pass) {
                        // context.read<LoginData>().setPass(pass);
                      },
                    );
                  },
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget password',
                      style: TextStyle(
                        color: Color.fromARGB(255, 136, 40, 153),
                        fontSize: 17,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30),
                CustomButton(
                  text: 'Login',
                  isLoading: provider.isLoading,
                  fontSize: 15,
                  onPressed: () async {
                    await provider.loginUser(
                      context,
                      userNameController.text,
                      passwordController.text,
                    );
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
