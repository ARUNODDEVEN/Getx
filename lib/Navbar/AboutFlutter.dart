import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:loda/Navbar/Contactme.dart';
import 'package:loda/screen/HomeScreen.dart';

class AboutFlutter extends StatelessWidget {
  AboutFlutter({super.key});
  var listofname = [
    "Arun",
    "knojia",
    "harsh",
    "Shah",
    "Abhi",
    "Harman",
    "Rohit"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.grey,
              child: ListTile(
                onTap: () {
                  Get.defaultDialog(
                      title: "error",
                      middleText: "Are you sure to delete this chat",
                      confirm: TextButton(
                          onPressed: () {
                            Get.bottomSheet(Container(
                              color: Colors.grey,
                              width: 50,
                              height: 500,
                              child: Center(
                                child: Column(
                                  children: [
                                    Card(
                                      child: ListTile(
                                        onTap: () {
                                          Get.changeTheme(ThemeData.light());
                                        },
                                        title: Text("Light theme"),
                                      ),
                                    ),
                                    Card(
                                      child: ListTile(
                                        onTap: () {
                                          Get.changeThemeMode(ThemeMode.dark);
                                        },
                                        title: Text("Dark theme"),
                                      ),
                                    ),
                                    Card(
                                      child: ListTile(
                                        onTap: () {
                                          Get.to(() => Contact(), arguments: {
                                            'Name': listofname.toString()
                                          });
                                          // Get.changeThemeMode(ThemeMode.dark);
                                        },
                                        title: Text("Dark theme"),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ));
                            // Get.to(() => HomeScreen());
                          },
                          child: Text("ok")),
                      cancel: TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text("cancel")));
                },
                shape: Border(),
                // shape: const ShapeBorder(EdgeInsets.all(value)),
                textColor: Colors.black,
                title: Text("Ist tile"),
                subtitle: Text("Info about ist tile"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
