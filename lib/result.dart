import 'package:flutter/material.dart';
import 'package:hackathon_team2/Materials/subject_icon.dart';
import 'package:hackathon_team2/result_detail.dart';

class Result extends StatelessWidget {
  static const String id = "result_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Campus Compass"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Graph(30),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ResultDetail.id);
                },
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightBlueAccent),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "理",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SubjectIcon(
                                      subject: "英",
                                      color: Colors.orange,
                                      weight: 1),
                                  SubjectIcon(
                                      subject: "数",
                                      color: Colors.blueAccent,
                                      weight: 0.7),
                                  SubjectIcon(
                                      subject: "物",
                                      color: Colors.green,
                                      weight: 0.7),
                                ],
                              ),
                              Text(
                                "工学部 → ものづくり系エンジニア",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: InkWell(
                onTap: () {
                  // print("Tapped");
                },
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightBlueAccent),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "文",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SubjectIcon(
                                      subject: "数",
                                      color: Colors.blueAccent,
                                      weight: 1),
                                  SubjectIcon(
                                      subject: "国",
                                      color: Colors.redAccent,
                                      weight: 0.7),
                                  SubjectIcon(
                                      subject: "社",
                                      color: Colors.brown,
                                      weight: 0.7),
                                ],
                              ),
                              Text(
                                "経済学部 → 営業",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: InkWell(
                onTap: () {
                  // print("Tapped");
                },
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightBlueAccent),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "理",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SubjectIcon(
                                      subject: "数",
                                      color: Colors.blueAccent,
                                      weight: 1),
                                  SubjectIcon(
                                      subject: "英",
                                      color: Colors.orange,
                                      weight: 0.7),
                                  SubjectIcon(
                                      subject: "物",
                                      color: Colors.green,
                                      weight: 0.7),
                                ],
                              ),
                              Text(
                                "工学部 → IT/通信系エンジニア",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Graph extends StatelessWidget {
  final int percentage;
  Graph(this.percentage);

  @override
  Widget build(BuildContext context) {
    final int percentage_rest = 100 - percentage;
    return Column(
      children: [
        Text("文理の割合",style: TextStyle(fontSize: 20),),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("文系"),
            SizedBox(width: 5,),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width * 0.8 * percentage / 100,
              color: Colors.deepOrange,
              child: Center(
                child: Text(
                  "$percentage%",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width * 0.8 * percentage_rest / 100,
              color: Colors.lightGreen,
                child: Center(
                  child: Text(
                    "$percentage_rest%",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
            ),
            SizedBox(width: 5,),
            Text("理系"),
          ],
        ),
      ],
    );
  }
}


