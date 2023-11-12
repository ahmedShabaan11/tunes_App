import 'package:flutter/material.dart';
import 'package:tunes/model/tuneModel.dart';
import 'package:tunes/tune_item/tune_Item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final List<tuneModel> tunes = [
    tuneModel(color: Color(0xffF44336), sound: 'note1.wav'),
    tuneModel(color: Color(0xffF89800), sound: 'note2.wav'),
    tuneModel(color: Color(0xffFEEB3B), sound: 'note3.wav'),
    tuneModel(color: Color(0xff4CAF50), sound: 'note4.wav'),
    tuneModel(color: Color(0xff2F9688), sound: 'note5.wav'),
    tuneModel(color: Color(0xff2896F3), sound: 'note6.wav'),
    tuneModel(color: Color(0xff9C27B0), sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff121412),
        title: const Center(child: Text("Flutter Tune")),
      ),
      body: Column(children: tunes.map((e) => tune_Item(tune: e)).toList()),
    );
  }
}
