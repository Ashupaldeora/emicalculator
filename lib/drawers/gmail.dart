import 'package:flutter/material.dart';

void main() {
  runApp(gmaildrawer());
}

class gmaildrawer extends StatefulWidget {
  const gmaildrawer({super.key});

  @override
  State<gmaildrawer> createState() => _gmaildrawerState();
}

class _gmaildrawerState extends State<gmaildrawer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        drawer: Drawer(
          width: 330,
          backgroundColor: Color(0xff2E2F33),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 20),
                        child: Text(
                          "Gmail",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        height: 1,
                        color: Colors.grey.shade600,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: List.generate(
                    icons.length,
                    (index) => InkWell(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      onTap: () {
                        setState(() {
                          click = index;
                        });
                      },
                      child: (click == index)
                          ? Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: (index == 0 ||
                                                  index == 1 ||
                                                  index == 10 ||
                                                  index == 11)
                                              ? 1
                                              : 0,
                                          color: (index == 0 ||
                                                  index == 1 ||
                                                  index == 10 ||
                                                  index == 11)
                                              ? Colors.grey
                                              : Colors.transparent))),
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: 5,
                                  right: 10,
                                  bottom: 5,
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xff5A4645),
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(30),
                                        topRight: Radius.circular(30))),
                                child: ListTile(
                                  leading: Icon(
                                    icons[index]['icon'],
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    icons[index]['name'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                  horizontalTitleGap: 30,
                                ),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: (index == 0 ||
                                                  index == 1 ||
                                                  index == 10 ||
                                                  index == 11)
                                              ? 1
                                              : 0,
                                          color: (index == 0 ||
                                                  index == 1 ||
                                                  index == 10 ||
                                                  index == 11)
                                              ? Colors.grey
                                              : Colors.transparent))),
                              child: Container(
                                margin: EdgeInsets.only(
                                    top: 5, right: 10, bottom: 5),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(30),
                                        topRight: Radius.circular(30))),
                                child: ListTile(
                                  leading: Icon(
                                    icons[index]['icon'],
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    icons[index]['name'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                  horizontalTitleGap: 30,
                                ),
                              ),
                            ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xff2E2F33),
        ),
      ),
    );
  }
}

List icons = [
  {'icon': Icons.all_inbox_outlined, 'name': 'All Inboxes'},
  {'icon': Icons.inbox_outlined, 'name': 'Inbox'},
  {
    'icon': Icons.star_rate_outlined,
    'name': 'Starred',
  },
  {'icon': Icons.snooze_outlined, 'name': 'Snozzed'},
  {'icon': Icons.label_important, 'name': 'Important'},
  {'icon': Icons.send_to_mobile, 'name': 'Sent'},
  {'icon': Icons.drafts, 'name': 'drafts'},
  {'icon': Icons.mail_outlined, 'name': 'All Mail'},
  {'icon': Icons.warning, 'name': 'Spam'},
  {'icon': Icons.account_box, 'name': 'Trash'},
  {'icon': Icons.create_new_folder, 'name': 'Create new'},
  {'icon': Icons.settings, 'name': 'Settings'},
];

var click;
