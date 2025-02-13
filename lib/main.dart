import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    home: chatApp(),
  ));
}

// ignore: camel_case_types
class chatApp extends StatefulWidget {
  const chatApp({super.key});

  @override
  State<chatApp> createState() => _chatAppState();
}

// ignore: camel_case_types
class _chatAppState extends State<chatApp> {
  final List<String> imageList = [
    "https://mum.digitaluniversity.ac/user/pages/images/slides/slide2.jpg",
    "https://mu.ac.in/wp-content/uploads/2020/01/BAJU98172-1024x683.jpg",
    "https://mu.ac.in/wp-content/uploads/2020/01/DSC_0021212.jpg",
    "https://mu.ac.in/wp-content/uploads/2019/06/raja.jpg",
    "https://mu.ac.in/wp-content/uploads/2023/06/RDK-292x300.jpg",
    "https://mu.ac.in/wp-content/uploads/2019/01/Auditorim-410x260.jpg",
    "https://mu.ac.in/wp-content/uploads/2019/01/rr1.jpg",
  ];

  // This method creates the cards with images
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
        height: 140.0,
      ),
    );
  }

  // This method creates the details for each card
  // ignore: non_constant_identifier_names
  Widget _BSDetails(String Degree, String prof, int value) {
    String desp = "";
    if (value == 1) {
      desp = "BScCS stands for Bachelor Computer Science.";
    } else if (value == 2) {
      desp = "B.Com stands for Bachelor of Commerce";
    } else if (value == 3) {
      desp = " Bachelor of Arts (BA) is an undergraduate degree.";
    } else if (value == 4) {
      desp = " BAF is Bachelor of Accounting and Finance.";
    }

    return SizedBox(
        width: double.infinity,
        height: 130.0,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: Column(
              children: [
                Text(
                  Degree,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 10.0,
                  ),
                ),
                SizedBox(
                  width: 170.0,
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
                  desp,
                ),
                SizedBox(
                  width: 150.0,
                  child: Divider(),
                ),
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Student Assistant"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                // ignore: avoid_print
                print("Hello Action Button");
              },
              child: Icon(
                Icons.help,
                size: 25.0,
              ),
            ),
          )
        ],
      ),
      // ignore: unnecessary_new
      drawer: new Drawer(
          // ignore: unnecessary_new
          child: new ListView(
        children: [
          // ignore: unnecessary_new
          new UserAccountsDrawerHeader(
            accountName: Text("MUMBAI UNI"),
            accountEmail: Text("pednekarjayesh29@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Image.asset("assets/logo.png"),
            ),
          ),
          Divider(),
          // ignore: unnecessary_new
          new ListTile(
            // ignore: unnecessary_new
            title: new Text("MUM Site"),
            // ignore: unnecessary_new
            trailing: new Icon(Icons.web),
            // ignore: unnecessary_new
            onTap: () {
              // ignore: avoid_print
              print("Hello MUM Site");
            },
          ),
          Divider(),
          // ignore: unnecessary_new
          new ListTile(
            // ignore: unnecessary_new
            title: new Text("MUM Time Table"),
            // ignore: unnecessary_new
            trailing: new Icon(Icons.timer),
            // ignore: unnecessary_new
            onTap: () {
              // ignore: avoid_print
              print("Hello MUM Time Table");
            },
          ),
          Divider(),
          // ignore: unnecessary_new
          new ListTile(
            // ignore: unnecessary_new
            title: new Text("MUM Map Location"),
            // ignore: unnecessary_new
            trailing: new Icon(Icons.map),
            // ignore: unnecessary_new
            onTap: () {
              // ignore: avoid_print
              print("Hello MUM Map Location");
            },
          ),
          Divider(),
          // ignore: unnecessary_new
          new ListTile(
            // ignore: unnecessary_new
            title: new Text("Privacy"),
            // ignore: unnecessary_new
            trailing: new Icon(Icons.timer),
            // ignore: unnecessary_new
            onTap: () {
              // ignore: avoid_print
              print("Hello Privacy Policy");
            },
          ),
        ],
      )),
      body: SingleChildScrollView(
        // Wrap the entire body here
        child: Column(
          children: [
            // Make the Carousel dynamic based on screen height
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
                                height: screenHeight *
                                    0.4, // Adjust the height dynamically
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
            Divider(height: 50.0),
            _BScard(1),
            _BSDetails("BSc CS (3 YEARS)", "Prof. Amresh Satose", 1),
            _BScard(2),
            _BSDetails("BCom (3 YEARS)", "Prof. Bolke", 2),
            _BScard(3),
            _BSDetails("BA (3 YEARS)", "Prof. Mumbarkar", 3),
            _BScard(4),
            _BSDetails("BAF (3 YEARS)", "Prof. Padelkar", 4),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.chat),
        label: Text("Chat !"),
        tooltip: 'Connect To Assistant',
        onPressed: () {
          // ignore: avoid_print
          print("Hello Floating Function");
        },
      ),
    );
  }
}
