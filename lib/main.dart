import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    home: chatapp(),
  ));
}

// ignore: camel_case_types
class chatapp extends StatefulWidget {
  const chatapp({super.key});

  @override
  State<chatapp> createState() => _chatappState();
}

// ignore: camel_case_types
class _chatappState extends State<chatapp> {
  final List<String> imageList = [
    "https://mum.digitaluniversity.ac/user/pages/images/slides/slide2.jpg",
    "https://mu.ac.in/wp-content/uploads/2020/01/BAJU98172-1024x683.jpg",
    "https://mu.ac.in/wp-content/uploads/2020/01/DSC_0021212.jpg",
    "https://mu.ac.in/wp-content/uploads/2019/06/raja.jpg",
    "https://mu.ac.in/wp-content/uploads/2023/06/RDK-292x300.jpg",
    "https://mu.ac.in/wp-content/uploads/2019/01/Auditorim-410x260.jpg",
    "https://mu.ac.in/wp-content/uploads/2019/01/rr1.jpg",
  ]; // Added semicolon here
  // ignore: non_constant_identifier_names
  Widget _BScard(int value) {
    String url = "";
    if (value == 1) {
      url =
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqW8ns0WIw2ZswUAHw1O2D0u8KTF6aEkuxGw&s';
    } else if (value == 2) {
      url =
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ4hmFp8-rJBLBk7Cxg6AWLw-JPUxXakB8Gw&s";
    } else if (value == 3) {
      url =
          "https://img.freepik.com/premium-vector/ba-logo-design_811396-339.jpg";
    } else if (value == 4) {
      url =
          "https://www.shutterstock.com/image-vector/baf-logo-vector-graphic-branding-600w-467974427.jpg";
    }
    return Card(
      margin: EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      child: Image.network(
        url,
        fit: BoxFit.fill,
        width: 150.0,
        height: 150.0,
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _BSDetails(String Degree, String prof, int value) {
    // ignore: non_constant_identifier_names
    String Desp = "";
    if (value == 1) {
      Desp =
          "BSCS stands for Bachelor of Science in Computer Science. It's a 3-year undergraduate degree program that prepares students for careers in the computing industry. ";
    } else if (value == 2) {
      Desp =
          "B.Com is an undergraduate academic degree awarded for a course or program in Commerce";
    } else if (value == 3) {
      Desp =
          " Bachelor of Arts (BA) is an undergraduate degree that focuses on liberal arts and general education.";
    } else if (value == 4) {
      Desp =
          " BAF is Bachelor of Accounting and Finance, which is an undergraduate degree course that provides students with knowledge in accounting and finance.";
    }

    return SizedBox(
        width: double.infinity,
        height: 120.0,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: Column(
              children: [
                Text(
                  Degree,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  width: 135.0,
                  child: Divider(),
                ),
                Text(
                  prof,
                ),
                SizedBox(
                  width: 170.0,
                  child: Divider(),
                ),
                Text(
                  Desp,
                ),
                SizedBox(
                  width: 100.0,
                  child: Divider(),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Assistant"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 40.0),
        children: [
          Center(
            child: CarouselSlider(
              options: CarouselOptions(
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
              ),
              items: imageList
                  .map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Image.network(
                              e,
                              width: 1050.0,
                              height: 350.0,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ))
                  .toList(), // Added .toList() here
            ),
          ),
          // ignore: unnecessary_new
          new Divider(
            height: 50.0,
          ),
          _BScard(1),
          _BSDetails("BSc CS (3 YEARS)", "Prof. Amresh Satose", 1),
          //BScCS 3 year
          _BScard(2),
          _BSDetails("BCom (3 YEARS)", "Prof. Bolke", 2),
          //BCom 3 year
          _BScard(3),
          _BSDetails("BA (3 YEARS)", "Prof. Mumbarkar", 3),
          //BA 3 year
          _BScard(4),
          _BSDetails("BAF (3 YEARS)", "Prof. Padelkar", 4),
          //BAF 3 year
        ],
      ),
    );
  }
}
