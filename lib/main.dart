import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/screens/globals.dart';
import 'package:whatsapp/views/component/d_w.dart';
import 'package:whatsapp/views/component/fisrtpage.dart';
import 'package:whatsapp/views/component/secondpage.dart';
import 'package:whatsapp/views/component/thirdpage.dart';

void main() {
  runApp(
    Myapp(),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> with TickerProviderStateMixin {
  late TabController _tabController;
  PageController pageController = PageController();

  int currentindex = 0;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Globals.isandroid
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                actions: [
                  Switch(
                      trackColor: MaterialStateProperty.all(Colors.white),
                      thumbColor: MaterialStateProperty.all(
                          Colors.green.shade700.withOpacity(0.5)),
                      value: Globals.isandroid,
                      onChanged: (val) {
                        setState(() {
                          Globals.isandroid = val;
                        });
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.more_horiz),
                  SizedBox(
                    width: 10,
                  ),
                ],
                bottom: TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.white,
                  tabs: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Chats",
                      ),
                    ),
                    Text(
                      "Status",
                    ),
                    Text(
                      "Calls",
                    )
                  ],
                ),
                title: Text("Whatsapp"),
                backgroundColor: Colors.green.shade800,
              ),
              drawer: Mydrawer(),
              body: TabBarView(
                  controller: _tabController,
                  children: const [Firstpage(), Second_Page(), Third_page()]),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: Builder(
              builder: (context) => CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  leading: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Edit",
                      style: TextStyle(
                          color: CupertinoColors.systemBlue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  trailing: Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Transform.scale(
                            scale: 0.7,
                            child: CupertinoSwitch(
                                trackColor:
                                    CupertinoColors.white.withOpacity(0.5),
                                thumbColor:
                                    CupertinoColors.black.withOpacity(0.5),
                                value: Globals.isandroid,
                                onChanged: (val) {
                                  setState(() {
                                    Globals.isandroid = val;
                                  });
                                }),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Icon(
                          CupertinoIcons.camera,
                          size: 20,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Icon(
                          CupertinoIcons.pencil_circle_fill,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  backgroundColor: Colors.black,
                ),
                child: CupertinoTabScaffold(
                    tabBar: CupertinoTabBar(
                      onTap: (val) {
                        setState(() {
                          currentindex = val;
                          _tabController.animateTo(val);
                        });
                      },
                      currentIndex: currentindex,
                      items: const [
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.circle), label: "Status"),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.phone), label: "Calls"),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.group),
                            label: "Communities"),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.chat_bubble_2_fill),
                            label: "Chats"),
                        BottomNavigationBarItem(
                            icon: Icon(CupertinoIcons.settings),
                            label: "Settings"),
                      ],
                    ),
                    tabBuilder: (BuildContext context, int index) {
                      if (index == 0) {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              CupertinoNavigationBar(
                                middle: Container(
                                  padding: EdgeInsets.only(left: 10),
                                  alignment: Alignment.centerLeft,
                                  color: Colors.black,
                                  child: Text(
                                    "Chats",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: CupertinoColors.systemGrey
                                            .withOpacity(0.3),
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            CupertinoIcons.search,
                                            color: CupertinoColors.systemGrey,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Search",
                                            style: TextStyle(
                                                color:
                                                    CupertinoColors.systemGrey),
                                          )
                                        ],
                                      ),
                                    ),
                                    Icon(Icons.filter_list),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 15),
                                      height: 30,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            "BroadcastLists",
                                            style: TextStyle(
                                                color:
                                                    CupertinoColors.activeBlue),
                                          ),
                                          Text(
                                            "New Group",
                                            style: TextStyle(
                                                color:
                                                    CupertinoColors.activeBlue),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Mytbox(
                                  name: "Nency Shekhaliya",
                                  image:
                                      "https://funkylife.in/wp-content/uploads/2022/06/girls-dp-180-1.jpg"),
                              Mytbox(
                                  name: "Disha",
                                  image:
                                      "https://1fid.com/wp-content/uploads/2022/02/girl-dp-image-16-1024x1024.jpg"),
                              Mytbox(
                                  name: "Dipali",
                                  image:
                                      "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhpe7-_576Z2_ByrnziPMtvKwKvzDszknV8CdjMY3EKfSVInNIgnmi9A6gSAYL37hFHTE6PfiArqrA1lO0SDZ8oKZnw3jh0QY4ZVeb8L61d3zkO088fGPhyajAA3w0RuTzbcy4iT7EKAbBXBkH_s50kGxae9FL3jEq3OkSjLBqObORPyE_e9TZxFZthmw/w213-h320/pexels-dreamlens-production-2913125-min.jpg"),
                              Mytbox(
                                  name: "Mom",
                                  image:
                                      "https://cdn.statusqueen.com/dpimages/thumbnail/whatsapp%20dp%20image6-601.jpg"),
                              Mytbox(
                                  name: "Jenil",
                                  image:
                                      "https://cdn.statusqueen.com/dpimages/thumbnail/Mask_boy_dp_-2562.jpg"),
                              Mytbox(
                                  name: "Dad",
                                  image:
                                      "https://www.bhaktiphotos.com/wp-content/uploads/2021/07/God-of-Sivan-Image-Download-DP.jpg"),
                              Mytbox(
                                  name: "Fai",
                                  image:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGxF6-IlD1Z5Df5LbEyqJ7X5Hx5QbHr4afpQ&usqp=CAU"),
                              Mytbox(
                                  name: "Pratiksha",
                                  image:
                                      "https://1.bp.blogspot.com/-Avyhj0tq9Bc/YRKxSxjVnvI/AAAAAAAA_44/oOqu0JmcqSc4vWLyTdofEGvWML6jgtLWACLcBGAsYHQ/w426-h640/06aaae9995b9a3e23c8b257d94d2992f.jpg"),
                              Mytbox(
                                  name: "Jenisha",
                                  image:
                                      "https://www.tensionends.com/wp-content/uploads/2022/09/Beautiful-Girl-DP-Images-15-1.jpg"),
                              Mytbox(
                                  name: "Dhruvi",
                                  image:
                                      "http://www.mygoodmorningimages.com/wp-content/uploads/2022/03/4-1.jpg"),
                              Mytbox(
                                  name: "Kanan",
                                  image:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRndIzhBOWWnRu7pTY1vT0kMh-ggEGomnfxJR5crD_ZLbycXtlq2syaqh9NXP7ukxeDMNU&usqp=CAU"),
                            ],
                          ),
                        );
                      } else if (index == 1) {
                        return Container(
                            height: 40, width: 60, color: Colors.pink);
                      } else if (index == 2) {
                        return Container(
                            height: 40, width: 60, color: Colors.amber);
                      } else if (index == 3) {
                        return Container(
                            height: 40, width: 60, color: Colors.red);
                      } else if (index == 4) {
                        return Container(
                            height: 40, width: 60, color: Colors.blue);
                      } else {
                        return Container(
                            height: 40, width: 60, color: Colors.yellow);
                      }
                      ;
                    }),
              ),
            ),
          );
  }

  Mytbox({required String name, required String image}) => Container(
        height: 60,
        width: 350,
        margin: EdgeInsets.only(top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(image),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: CupertinoColors.white),
                    ),
                    Text(
                      "hi",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Text(
                  "5:03 AM",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ))
          ],
        ),
      );
}
