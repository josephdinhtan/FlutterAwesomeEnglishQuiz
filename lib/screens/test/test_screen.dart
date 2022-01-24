import 'package:flutter/material.dart';
import 'package:flutter_toeic_quiz/constants.dart';
import 'package:flutter_toeic_quiz/screens/test/part_item.dart';
import 'package:flutter_toeic_quiz/widgets/rounded_botton.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<PartItem> partItems = [
      PartItem(partNumber: 1),
      PartItem(partNumber: 2),
      PartItem(partNumber: 3),
      PartItem(partNumber: 4),
      PartItem(partNumber: 5),
      PartItem(partNumber: 6),
      PartItem(partNumber: 7),
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('START FULL TEST'),
        icon: Icon(Icons.play_arrow_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text(
          'Test 1',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
                left: 4.0, right: 4.0, top: index == 0 ? 4.0 : 0.0),
            child: partItems[index],
          );
        },
        itemCount: partItems.length,
      ),
    );
  }
}