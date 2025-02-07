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
          new Divider(
            height: 50.0,
          ),
          Card(
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqW8ns0WIw2ZswUAHw1O2D0u8KTF6aEkuxGw&s",
              fit: BoxFit.fill,
              width: 150.0,
              height: 150.0,
            ),
            margin: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
          ),
          SizedBox(
              width: double.infinity,
              height: 120.0,
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                  child: Column(
                    children: [
                      Text(
                        "BSc CS (3 YEARS)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      SizedBox(
                        width: 135.0,
                        child: Divider(),
                      ),
                      Text(
                        "Prof. Ravindra Kulkarni",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      SizedBox(
                        width: 135.0,
                        child: Divider(),
                      ),
                      Text(
                        "BSCS stands for Bachelor of Science in Computer Science. It's a four-year undergraduate degree program that prepares students for careers in the computing industry. ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      SizedBox(
                        width: 135.0,
                        child: Divider(),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
