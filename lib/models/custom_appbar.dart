import 'package:flutter/material.dart';
import 'package:railplot/providers/login_provider.dart';
import 'package:railplot/train_icon.dart';
import 'package:provider/provider.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final bool showProfileIcon;
  final bool showVerticalBar;
  final bool showHambergerMenu;

  const CustomAppbar({
    super.key,
    this.height = 90,
    this.showProfileIcon = false,
    this.showVerticalBar = false,
    this.showHambergerMenu = false,
  });
  @override
  Widget build(BuildContext context) {
    final isLoggedIn = context.watch<LoginData>().isLoggedIn;
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 90,
      backgroundColor: Colors.white,
      foregroundColor: const Color.fromARGB(255, 4, 46, 81),

      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomTrainIcon(scale: 1.0),
          Expanded(
            child: SizedBox(
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "RailPlot",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
        if (showHambergerMenu)
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu, color: Colors.purple, size: 40),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        if (showVerticalBar)
          const SizedBox(
            height: 40,
            child: VerticalDivider(
              width: 20,
              thickness: 0.7,
              color: Color.fromARGB(255, 145, 145, 145),
            ),
          ),
        if (showProfileIcon && isLoggedIn)
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              context.read<LoginData>().toggleMenu();
            },
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
