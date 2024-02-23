import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const drawer());
}

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          width: 380,
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xffD7A0F9), Color(0xff9A8DDA)])),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671122.jpg?size=338&ext=jpg&ga=GA1.1.1700460183.1708646400&semt=sph'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Ashu",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 25),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Ashu@gmail.com",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.grey.shade800),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              ListTile(
                  leading: const Icon(Icons.notification_add_outlined),
                  title: Text(
                    "Notification",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        color: Colors.grey.shade800),
                  ),
                  horizontalTitleGap: 40,
                  contentPadding: const EdgeInsets.only(left: 50, top: 30)),
              ListTile(
                  leading: const Icon(Icons.reviews),
                  title: Text(
                    "Reviews",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        color: Colors.grey.shade800),
                  ),
                  horizontalTitleGap: 40,
                  contentPadding: const EdgeInsets.only(left: 50, top: 20)),
              ListTile(
                  leading: const Icon(Icons.payment_outlined),
                  title: Text(
                    " Payments",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        color: Colors.grey.shade800),
                  ),
                  horizontalTitleGap: 40,
                  contentPadding: const EdgeInsets.only(left: 50, top: 20)),
              ListTile(
                  leading: const Icon(Icons.settings),
                  title: Text(
                    " Settings",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        color: Colors.grey.shade800),
                  ),
                  horizontalTitleGap: 40,
                  contentPadding: const EdgeInsets.only(left: 50, top: 20)),
            ],
          ),
        ),
        appBar: AppBar(),
      ),
    );
  }
}
