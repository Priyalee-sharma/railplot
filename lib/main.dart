import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:railplot/Services/request_demo.dart';
import 'package:railplot/home.dart';
import 'package:railplot/models/auth_storage.dart';
import 'package:railplot/passwordProvider.dart';
import 'package:railplot/signup.dart';
import 'package:railplot/login.dart';
import 'package:railplot/providers/login_provider.dart';
import 'package:railplot/welcome.dart';
import 'package:railplot/profile.dart';
import 'package:google_fonts/google_fonts.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PasswordProvider()),
        ChangeNotifierProvider(create: (_) => LoginData()),
      ],
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (context) => Home(),
          'signup': (context) => Signup(),
          'login': (context) => Login(),
          'welcome': (context) => Welcome(),
          'profile': (context) => Profile(),
          'requestDemo': (context) => RequestDemo(),
        },

        // 👇 THIS IS THE CORRECT PLACE
        builder: (context, child) {
          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              context.read<LoginData>().closeMenu(); // 👈 CLOSE MENU
            },

            child: Stack(
              children: [
                child!, // 👈 all screens render here
                // 👇 GLOBAL DROPDOWN
                if (context.watch<LoginData>().showMenu)
                  Positioned(
                    top: 90,
                    right: 10,
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const ListTile(
                              leading: Icon(
                                Icons.person_outline,
                                color: Colors.purple,
                              ),
                              title: Text(
                                'Hi, Rail User',
                                style: TextStyle(color: Colors.purple),
                              ),
                            ),
                            const Divider(height: 1),

                            ListTile(
                              leading: const Icon(Icons.person),
                              title: const Text('Profile'),
                              onTap: () {
                                context.read<LoginData>().closeMenu();
                                navigatorKey.currentState!.pushNamed('profile');
                              },
                            ),

                            ListTile(
                              leading: const Icon(Icons.logout),
                              title: const Text('Logout'),
                              onTap: () async {
                                await AuthStorage().deleteToken();
                                context.read<LoginData>().setLoggedOut();
                                context.read<LoginData>().closeMenu();
                                navigatorKey.currentState!
                                    .pushNamedAndRemoveUntil(
                                      'login',
                                      (route) => false,
                                    );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme().apply(
            bodyColor: Colors.black,
            displayColor: Colors.black,
          ),
        ),
      ),
    ),
  );
}
