import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Login Page'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network('https://events.flutter.dev/engage/assets/img/home/Flutter_MarketingAssets_Web__0008_ExperienceWithFriends.png?v=1614876446'),
            Padding(padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  hintText: 'Enter your name here',
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: 'Enter your password here',
              ),
              obscureText: true,
            ),
            ),
           Padding(padding: EdgeInsets.all(20),
           child: SliderButton(
             action: () {
               ///Do something here OnSlide
             },

             ///Put label over here
             label: Text(
               "Slide to continue!",
               style: TextStyle(
                   color: Colors.white,
                   fontWeight: FontWeight.w200,
                   fontSize: 20),
                   textAlign: TextAlign.left,
             ),
             icon: Center(
                 child: Icon(
                   Icons.send_rounded,
                   color: Colors.white,
                   size: 30.0,
                   semanticLabel: 'Text to announce in accessibility modes',
                 )),

             ///Change All the color and size from here.
             width: double.infinity,
             radius: 40,
             buttonColor: Colors.blue,
             backgroundColor: Colors.white,
             highlightedColor: Colors.blue,
             baseColor: Colors.blue,
           )),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}




