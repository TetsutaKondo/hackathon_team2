import 'package:flutter/material.dart';

import 'Materials/subject_icon.dart';

class ResultDetail extends StatelessWidget {
  static const String id = "result_detail_screen";
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.4,
                    vertical: 30),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    "理系",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.black),
                      bottom: BorderSide(color: Colors.black),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text(
                        "工学部",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Container(
                      width: 10,
                      color: Colors.lightGreenAccent,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Flexible(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("生活環境の中にあるすべてのモノや仕組みを作る為に必要な技術や知識を学び、人間と社会にとって役立つものを生み出す学部"),
                            SizedBox(height: 30,),
                            Row(
                              children: [
                                Text("[あなたにおすすめの学科]",style: TextStyle(color: Colors.pink),),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Text("・機械工学科"),
                                    Text("・ロボット工学科"),
                                    Text("・電子情報工学科"),
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.black),
                      bottom: BorderSide(color: Colors.black),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: Text(
                        "ものづくり系エンジニア",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("英語"),
                              SizedBox(width: 20,),
                              Text("40%")
                            ],
                          ),
                          Row(
                            children: [
                              Text("数学"),
                              SizedBox(width: 20,),
                              Text("30%")
                            ],
                          ),
                          Row(
                            children: [
                              Text("物理"),
                              SizedBox(width: 20,),
                              Text("30%")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("[実際どんな時に使う？]",style: TextStyle(color: Colors.pink),),
                      SizedBox(height: 10,),
                      SubjectIcon(subject: "英", color: Colors.orange, weight: 0.5),
                      Text("・ビジネスのやりとり"),
                      Text("・プログラミングの内容"),
                      Text("・仕様書、参考文献"),
                      SizedBox(height: 10,),
                      SubjectIcon(subject: "数", color: Colors.blueAccent, weight: 0.5),
                      Text("・性能測定の結果分析"),
                      SizedBox(height: 10,),
                      SubjectIcon(subject: "物", color: Colors.green, weight: 0.5),
                      Text("・航空機エンジンなどの開発"),
                      Text("・自動車などの設計"),
                      Text("・製品の組み立て"),
                      ],
                  )
                ),
              SizedBox(height: 30,),
              Text(
                "実際に働く人の声",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
                ),
              ),
              SizedBox(height: 10),
              Voice1(),
              SizedBox(height: 40),
              Voice2(),
            ],
          ),
        ),
      ),
    );
  }
}

class Result_box extends StatelessWidget {
  final String text;
  final String subject;
  final Color color;
  Result_box({required this.text, required this.subject, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(color: Colors.black),
        bottom: BorderSide(color: Colors.black),
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              text,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SubjectIcon(subject: subject, color: color, weight: 0.6),
        ],
      ),
    );
  }
}

class Voice1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Row(
        children: [
          Image.asset(
            "images/k0898_6.jpg",
            fit: BoxFit.contain,
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "自動車メーカーエンジニア　男性 36歳",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      "高校時代、物理は得意だったのですが、働いてからもよく使うのでやっててよかったなと思います。英語は苦手で避けていたのですが、働く上でとてもよく使うのでやっておけばよかったと感じました。",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Voice2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Row(
        children: [
          Image.asset(
            "images/k0898_6.jpg",
            fit: BoxFit.contain,
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "航空機メーカーエンジニア　男性 26歳",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      "学生時代、数学で習ったことなど使わないだろうと思っていました。しかし、確かに微分積分など習ったことは使わないのですが、数学的思考法はとてもよく使うので、やっておいて損はないと思います。",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
