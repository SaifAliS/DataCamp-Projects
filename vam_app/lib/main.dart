import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
// @dart=2.9
import 'package:progress_timeline/progress_timeline.dart';
import 'package:flutter_image_slider/carousel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<SingleState> allStages = [
    SingleState(stateTitle: "Not Available"),
    SingleState(stateTitle: "Not Available"),
    SingleState(stateTitle: "Not Available"),
  ];
  late ProgressTimeline screenprogress;

  @override
  void initState() {
    screenprogress = new ProgressTimeline(
        states: allStages,
        iconSize: 35,
        connectorColor: Colors.blue,
        checkedIcon: Icon(
          Icons.done,
          color: Colors.blue,
        ));
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("BESCOM"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment_outlined,
              color: Colors.grey,
            ),
            label: 'Complaints',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.flash_off,
              color: Colors.grey,
            ),
            label: 'Outages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.grey),
            label: 'My Data',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.feedback_outlined,
              color: Colors.grey,
            ),
            label: 'Feedback',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Last Complaint Status",
                textAlign: TextAlign.left, style: TextStyle(fontSize: 20)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: screenprogress,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      "Next Stage",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    screenprogress.gotoNextStage();
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      "Previous Stage",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    screenprogress.gotoPreviousStage();
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(
                      "Fail Stage",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    screenprogress.failCurrentStage();
                  },
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: size.height * 0.3,
              width: size.width,
              child: Carousel(
                indicatorBarColor: Colors.black.withOpacity(0.2),
                autoScrollDuration: Duration(seconds: 2),
                animationPageDuration: Duration(milliseconds: 450),
                activateIndicatorColor: Colors.black,
                animationPageCurve: Curves.bounceInOut,
                indicatorBarHeight: 20,
                indicatorHeight: 7,
                indicatorWidth: 7,
                unActivatedIndicatorColor: Colors.grey,
                stopAtEnd: false,
                autoScroll: true,
                // widgets
                items: [
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.yellow,
                  )
                ],
              )
              )
          ],
        ),
      ),
    );
  }
}
