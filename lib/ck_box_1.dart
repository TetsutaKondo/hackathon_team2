import 'package:flutter/material.dart';
import 'package:hackathon_team2/result.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';

// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

class Choice extends StatefulWidget {
  static const String id = "choice_screen";
  @override
  _ChoiceState createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  List? _myActivities;
  late String _myActivitiesResult;
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myActivities = [];
    _myActivitiesResult = '';
  }

  _saveForm() {
    var form = formKey.currentState!;
    if (form.validate()) {
      form.save();
      setState(() {
        _myActivitiesResult = _myActivities.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('あなたのことを教えてください！'),
      ),
      body: Center(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                child: MultiSelectFormField(
                  autovalidate: false,
                  chipBackGroundColor: Colors.blue,
                  chipLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  dialogTextStyle: TextStyle(fontWeight: FontWeight.bold),
                  checkBoxActiveColor: Colors.blue,
                  checkBoxCheckColor: Colors.white,
                  dialogShapeBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  title: Text(
                    "好きな科目",
                    style: TextStyle(fontSize: 16),
                  ),

                  dataSource: [
                    {
                      "display": "英語",
                      "value": "英語",
                    },
                    {
                      "display": "現代文",
                      "value": "現代文",
                    },
                    {
                      "display": "古文",
                      "value": "古文",
                    },
                    {
                      "display": "数学",
                      "value": "数学",
                    },
                    {
                      "display": "物理",
                      "value": "物理",
                    },
                    {
                      "display": "生物",
                      "value": "生物",
                    },
                    {
                      "display": "地学",
                      "value": "地学",
                    },
                    {
                      "display": "化学",
                      "value": "化学",
                    },
                    {
                      "display": "世界史",
                      "value": "世界史",
                    },
                    {
                      "display": "日本史",
                      "value": "日本史",
                    },
                    {
                      "display": "倫理",
                      "value": "倫理",
                    },
                    {
                      "display": "地理",
                      "value": "地理",
                    },
                    {
                      "display": "音楽",
                      "value": "音楽",
                    },
                    {
                      "display": "美術",
                      "value": "美術",
                    },
                    {
                      "display": "保健体育",
                      "value": "保健体育",
                    },
                    {
                      "display": "情報",
                      "value": "家庭",
                    },
                    {
                      "display": "地学",
                      "value": "地学",
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
                  okButtonLabel: 'OK',
                  cancelButtonLabel: 'CANCEL',
                  hintWidget: Text('なしでもいいよ'),
                  initialValue: _myActivities,
                  onSaved: (value) {
                    if (value == null) return;
                    setState(() {
                      _myActivities = value;
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: MultiSelectFormField(
                  autovalidate: false,
                  chipBackGroundColor: Colors.blue,
                  chipLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  dialogTextStyle: TextStyle(fontWeight: FontWeight.bold),
                  checkBoxActiveColor: Colors.blue,
                  checkBoxCheckColor: Colors.white,
                  dialogShapeBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  title: Text(
                    "興味のある職種",
                    style: TextStyle(fontSize: 16),
                  ),
                  dataSource: [
                  {
                    "display": "営業",
                    "value": "営業",
                  },
                  {
                    "display": "企画",
                    "value": "企画",
                  },
                  {
                    "display": "データ分析",
                    "value": "データ分析",
                  },
                  {
                    "display": "会計",
                    "value": "会計",
                  },
                  {
                    "display": "法律系",
                    "value": "法律系",
                  },
                  {
                    "display": "事務/秘書",
                    "value": "事務/秘書",
                  },
                  {
                    "display": "IT/通信",
                    "value": "IT/通信",
                  },
                  {
                    "display": "機械",
                    "value": "機械",
                  },
                  {
                    "display": "建築/土木",
                    "value": "建築/土木",
                  },
                  {
                    "display": "素材/化学/食品",
                    "value": "素材/化学/食品",
                  },
                  {
                    "display": "医療",
                    "value": "医療",
                  },
                  {
                    "display": "金融",
                    "value": "金融",
                  },
                  {
                    "display": "コンサルタント/不動産",
                    "value": "コンサルタント/不動産",
                  },
                  {
                    "display": "教育",
                    "value": "教育",
                  },
                  {
                    "display": "販売",
                    "value": "販売",
                  },
                  {
                    "display": "飲食店",
                    "value": "飲食店",
                  },
                  {
                    "display": "デザイナー/クリエイター",
                    "value": "デザイナー/クリエイター",
                  },
                  {
                    "display": "編集者",
                    "value": "編集者",
                  },  {
                    "display": "ファッション",
                    "value": "ファッション",
                  },
                ],
                  textField: 'display',
                  valueField: 'value',
                  okButtonLabel: 'OK',
                  cancelButtonLabel: 'CANCEL',
                  hintWidget: Text('なしでもいいよ'),
                  initialValue: _myActivities,
                  onSaved: (value) {
                    if (value == null) return;
                    setState(() {
                      _myActivities = value;
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: MultiSelectFormField(
                  autovalidate: false,
                  chipBackGroundColor: Colors.blue,
                  chipLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  dialogTextStyle: TextStyle(fontWeight: FontWeight.bold),
                  checkBoxActiveColor: Colors.blue,
                  checkBoxCheckColor: Colors.white,
                  dialogShapeBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  title: Text(
                    "興味のある学問",
                    style: TextStyle(fontSize: 16),
                  ),
                dataSource: [
                {
                "display": "法学",
                "value": "法学",
                },
                {
                "display": "経済学",
                "value": "経済学",
                },
                {
                "display": "音楽",
                "value": "音楽",
                },
                {
                "display": "美術",
                "value": "美術",
                },
                {
                "display": "建築",
                "value": "建築",
                },
                {
                "display": "文学部",
                "value": "文学部",
                },
                {
                "display": "国際学部",
                "value": "国際学部",
                },
                {
                "display": "栄養学部",
                "value": "栄養学部",
                },
                {
                "display": "服飾学",
                "value": "服飾学",
                },
                {
                "display": "住居学",
                "value": "住居学",
                },
                {
                "display": "医学/歯学",
                "value": "医学/歯学",
                },
                {
                "display": "看護学",
                "value": "看護学",
                },
                {
                "display": "薬学",
                "value": "薬学",
                },
                {
                "display": "保健学",
                "value": "保健学",
                },
                {
                "display": "スポーツ学",
                "value": "スポーツ学",
                },
                {
                "display": "哲学",
                "value": "哲学",
                },
                {
                "display": "心理学",
                "value": "心理学",
                },
                {
                "display": "教育",
                "value": "教育",
                },  {
                "display": "地球・資源科学",
                "value": "地球・資源科学",
                },
                {
                "display": "生物学",
                "value": "生物学",
                },
                {
                "display": "農学",
                "value": "農学",
                },
                {
                "display": "獣医学",
                "value": "獣医学",
                },
                {
                "display": "物理学",
                "value": "物理学",
                },
                {
                "display": "化学",
                "value": "化学",
                },
                {
                "display": "情報工学",
                "value": "情報工学",
                },
                    {
                    "display": "機械工学",
                    "value": "機械工学",
                    },
                    {
                    "display": "電子工学",
                    "value": "電子工学",
                    },
                ],
                  textField: 'display',
                  valueField: 'value',
                  okButtonLabel: 'OK',
                  cancelButtonLabel: 'CANCEL',
                  hintWidget: Text('なしでもいいよ'),
                  initialValue: _myActivities,
                  onSaved: (value) {
                    if (value == null) return;
                    setState(() {
                      _myActivities = value;
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: MultiSelectFormField(
                  autovalidate: false,
                  chipBackGroundColor: Colors.blue,
                  chipLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  dialogTextStyle: TextStyle(fontWeight: FontWeight.bold),
                  checkBoxActiveColor: Colors.blue,
                  checkBoxCheckColor: Colors.white,
                  dialogShapeBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  title: Text(
                    "将来やる仕事に求めるもの(今大切にしている価値観)",
                    style: TextStyle(fontSize: 16),
                  ),

                  dataSource: [
                    {
                      "display": "やりがいがある",
                      "value": "やりがいがある",
                    },
                    {
                      "display": "儲かる",
                      "value": "儲かる",
                    },
                    {
                      "display": "人間関係が良い",
                      "value": "人間関係が良い",
                    },
                    {
                      "display": "コミュニケーションが少ない",
                      "value": "コミュニケーションが少ない",
                    },
                    {
                      "display": "チームワークが大事",
                      "value": "チームワークが大事",
                    },
                    {
                      "display": "一人で黙々やれる",
                      "value": "一人で黙々やれる",
                    },
                    {
                      "display": "残業が少ない",
                      "value": "残業が少ない",
                    },
                    {
                      "display": "安定性がある",
                      "value": "安定性がある",
                    },
                  ],

                  textField: 'display',
                  valueField: 'value',
                  okButtonLabel: 'OK',
                  cancelButtonLabel: 'CANCEL',
                  hintWidget: Text('なしでもいいよ'),
                  initialValue: _myActivities,
                  onSaved: (value) {
                    if (value == null) return;
                    setState(() {
                      _myActivities = value;
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: MultiSelectFormField(
                  autovalidate: false,
                  chipBackGroundColor: Colors.blue,
                  chipLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  dialogTextStyle: TextStyle(fontWeight: FontWeight.bold),
                  checkBoxActiveColor: Colors.blue,
                  checkBoxCheckColor: Colors.white,
                  dialogShapeBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  title: Text(
                    "好きなもの",
                    style: TextStyle(fontSize: 16),
                  ),

                    dataSource: [
                    {
                    "display": "自動車",
                    "value": "自動車",
                    },
                    {
                      "display": "電車",
                      "value": "電車",
                    },
                    {
                      "display": "ギター",
                      "value": "ギター",
                    },
                    {
                      "display": "ベース",
                      "value": "ベース",
                    },
                    {
                    "display": "ゲーム",
                    "value": "ゲーム",
                    },
                    {
                    "display": "テニス",
                    "value": "テニス",
                    },
                    {
                    "display": "バスケ",
                    "value": "バスケ",
                    },
                    {
                    "display": "テレビ",
                    "value": "テレビ",
                    },
                    ],
                  textField: 'display',
                  valueField: 'value',
                  okButtonLabel: 'OK',
                  cancelButtonLabel: 'CANCEL',
                  hintWidget: Text('なしでもいいよ'),
                  initialValue: _myActivities,
                  onSaved: (value) {
                    if (value == null) return;
                    setState(() {
                      _myActivities = value;
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: ElevatedButton(
                  child: Text('COMPASS!'),
                  onPressed: (){
                    Navigator.pushNamed(context, Result.id);
                  }, //////ここに画面遷移のコードを書く
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Text(_myActivitiesResult),
              )
            ],
          ),
        ),
      ),
      ),
    );
  }
}