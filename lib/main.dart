import 'package:flutter/material.dart';
import 'package:hackathon_team2/result.dart';
import 'package:hackathon_team2/result_detail.dart';
import 'package:hackathon_team2/scratch.dart';
import 'package:hackathon_team2/test.dart';

import 'ck_box_1.dart';

void main() => runApp(MaterialApp(
  initialRoute: MyHomePage.id,
  routes: {
    MyHomePage.id: (context) => MyHomePage(),
    Choice.id: (context) => Choice(),
    Result.id: (context) => Result(),
    ResultDetail.id: (context) => ResultDetail(),
  },
));

