import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                  style: TextStyle(fontSize: 12, color: Colors.green),
                ))
          ],
        ),
      );
}
