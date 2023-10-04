import 'package:flutter/material.dart';

class Second_Page extends StatefulWidget {
  const Second_Page({Key? key}) : super(key: key);

  @override
  State<Second_Page> createState() => _Second_PageState();
}

class _Second_PageState extends State<Second_Page> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Mytbox(
            name: "Nency",
            image:
                "https://1.bp.blogspot.com/-Avyhj0tq9Bc/YRKxSxjVnvI/AAAAAAAA_44/oOqu0JmcqSc4vWLyTdofEGvWML6jgtLWACLcBGAsYHQ/s354/06aaae9995b9a3e23c8b257d94d2992f.jpg"),
        Container(
          margin: EdgeInsets.only(top: 20, bottom: 5),
          height: 30,
          width: 330,
          child: Text(
            "Recent updates",
            style: TextStyle(color: Colors.blueGrey),
          ),
        ),
        Mytbox(
            name: "Dipali",
            image:
                "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhpe7-_576Z2_ByrnziPMtvKwKvzDszknV8CdjMY3EKfSVInNIgnmi9A6gSAYL37hFHTE6PfiArqrA1lO0SDZ8oKZnw3jh0QY4ZVeb8L61d3zkO088fGPhyajAA3w0RuTzbcy4iT7EKAbBXBkH_s50kGxae9FL3jEq3OkSjLBqObORPyE_e9TZxFZthmw/w213-h320/pexels-dreamlens-production-2913125-min.jpg"),
        Mytbox(
            name: "Disha",
            image:
                "https://cdn.statusqueen.com/dpimages/thumbnail/cute_girl_dp_image-2611.jpg"),
      ],
    );
  }

  Mytbox({required String name, required String image}) => Container(
        height: 70,
        width: 350,
        margin: EdgeInsets.only(top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade500,
                    ),
                    child: CircleAvatar(
                      radius: 32,
                      backgroundImage: NetworkImage(image),
                    ),
                  ),
                ],
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      "57 minutes ago",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
