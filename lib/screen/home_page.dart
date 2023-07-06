import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../all_constants.dart';
import '../ques_ans_file.dart';
import '../reusable_card.dart';
import '../ques_ans_file_algoritma.dart';
import '../ques_ans_file_api.dart';
import '../ques_ans_file_ds.dart';
import '../ques_ans_file_ml.dart';

class HomePage extends StatefulWidget {
  final String mataKuliah;

  const HomePage({Key? key, required this.mataKuliah}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndexNumber = 0;
  double _initial = 0.25;
  var mataKuliah;

  @override
  void initState() {
    super.initState();
    mataKuliah = widget.mataKuliah;
  }


  @override
  Widget build(BuildContext context) {
    String value = (_initial * 4).toStringAsFixed(0);
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
            centerTitle: true,
            title: Text("AMIK Flashcards", style: TextStyle(fontSize: 30)),
            backgroundColor: mainColor,
            toolbarHeight: 80,
            elevation: 5,
            shadowColor: mainColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text("Question $value of 4 Completed", style: otherTextStyle),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation(Colors.pinkAccent),
                  minHeight: 5,
                  value: _initial,
                ),
              ),
              SizedBox(height: 25),

              if (mataKuliah == "algoritma") ...[
                   SizedBox(
                  width: 300,
                  height: 300,
                  child: FlipCard(
                      direction: FlipDirection.VERTICAL,
                      front: ReusableCard(
                          // text: quesAnsList[_currentIndexNumber].question),
                          text: quesAnsListAlgo[_currentIndexNumber].question,
                          ) 
                          ,
                      back: ReusableCard(
                          text: quesAnsListAlgo[_currentIndexNumber].answer))),
              ] else if (mataKuliah == "data struktur") ... [
                SizedBox(
                  width: 300,
                  height: 300,
                  child: FlipCard(
                      direction: FlipDirection.VERTICAL,
                      front: ReusableCard(
                          // text: quesAnsList[_currentIndexNumber].question),
                          text: quesAnsListDs[_currentIndexNumber].question,
                          ) 
                          ,
                      back: ReusableCard(
                          text: quesAnsListDs[_currentIndexNumber].answer))),
              ] else if (mataKuliah == "API") ... [
                SizedBox(
                  width: 300,
                  height: 300,
                  child: FlipCard(
                      direction: FlipDirection.VERTICAL,
                      front: ReusableCard(
                          // text: quesAnsList[_currentIndexNumber].question),
                          text: quesAnsListApi[_currentIndexNumber].question,
                          ) 
                          ,
                      back: ReusableCard(
                          text: quesAnsListApi[_currentIndexNumber].answer))),
              ] else if (mataKuliah == "machine learning") ... [
                SizedBox(
                  width: 300,
                  height: 300,
                  child: FlipCard(
                      direction: FlipDirection.VERTICAL,
                      front: ReusableCard(
                          // text: quesAnsList[_currentIndexNumber].question),
                          text: quesAnsListMl[_currentIndexNumber].question,
                          ) 
                          ,
                      back: ReusableCard(
                          text: quesAnsListMl[_currentIndexNumber].answer))),
              ] else ... [

              ],

             

              Text("Tab to see Answer", style: otherTextStyle),
              SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton.icon(
                        onPressed: () {
                          showPreviousCard();
                          updateToPrev();
                        },
                        icon: Icon(FontAwesomeIcons.handPointLeft, size: 30),
                        label: Text(""),
                        style: ElevatedButton.styleFrom(
                            primary: mainColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.only(
                                right: 20, left: 25, top: 15, bottom: 15))),
                    ElevatedButton.icon(
                        onPressed: () {
                          showNextCard();
                          updateToNext();
                        },
                        icon: Icon(FontAwesomeIcons.handPointRight, size: 30),
                        label: Text(""),
                        style: ElevatedButton.styleFrom(
                            primary: mainColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.only(
                                right: 20, left: 25, top: 15, bottom: 15)))
                  ])
            ])));
  }

  void updateToNext() {
    setState(() {
      _initial = _initial + 0.25;
      if (_initial > 1.0) {
        _initial = 0.25;
      }
    });
  }

  void updateToPrev() {
    setState(() {
      _initial = _initial - 0.25;
      if (_initial < 0.1) {
        _initial = 1.0;
      }
    });
  }

  void showNextCard() {
    setState(() {
      _currentIndexNumber = (_currentIndexNumber + 1 < quesAnsList.length)
          ? _currentIndexNumber + 1
          : 0;
    });
  }

  void showPreviousCard() {
    setState(() {
      _currentIndexNumber = (_currentIndexNumber - 1 >= 0)
          ? _currentIndexNumber - 1
          : quesAnsList.length - 1;
    });
  }
}