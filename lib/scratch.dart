import 'package:flutter/material.dart';
import 'package:hackathon_team2/ck_box_1.dart';

// class MyApp extends StatelessWidget {
//   // const MyApp({key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // return container();
//     return MaterialApp(
//       title: 'Flutter2 hackathon',
//       theme: ThemeData(
//
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'team2 さぼろーず'),
//     );
//   }
// }


class MyHomePage extends StatefulWidget {
  static const String id = "home_screen";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Canvas Compass"),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/canvas_compass_background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("納得のいく文理選択を",style: TextStyle(fontSize: 30),),
                ElevatedButton(
                  child: const Text('start',style:TextStyle(fontSize: 50),),
                  // style: ElevatedButton.styleFrom(
                  //   primary: Colors.orange,
                  //   onPrimary: Colors.white,
                  // ),
                  onPressed: () {
                    Navigator.pushNamed(context, Choice.id);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
