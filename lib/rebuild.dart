import 'dart:math';
import 'package:flutter/material.dart';
import 'package:live_score/main.dart';
import 'package:live_score/recreate.dart';
import 'package:live_score/src/core/utils/app_colors.dart';

class rebuild extends StatefulWidget {
  @override
  _rebuild createState() => _rebuild();
}

class _rebuild extends State<rebuild> {
  int num1 = 0;
  int num2 = 0;
  String operator = 'operator';
  int result = 0;
  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _generateChallenge();
  }

  void _generateChallenge() {
    setState(() {
      // Generate two random numbers between 1 and 10
      num1 = Random().nextInt(10) + 1;
      num2 = Random().nextInt(10) + 1;

      // Randomly choose an operator (+ or -)
      operator = Random().nextBool() ? '+' : '-';

      // Calculate the correct result based on the operator
      if (operator == '+') {
        result = num1 + num2;
      } else {
        result = num1 - num2;
      }

      // Clear the text field for user input
      _textEditingController.clear();
    });
  }

  void response() {
    int? userAnswer = int.tryParse(_textEditingController.text);
    if (userAnswer == result) {
      // Correct answer
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Verification And Validation Success'),
            content: Text('You are verified as human.'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => Recreate()),
                  );
                  Alert(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      // Incorrect answer
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Verification And Validation Failed'),
            content: Text('Please try again.'),
            actions: [
              ElevatedButton(
                onPressed: () {
                  _textEditingController.clear();
                  Navigator.pop(context);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verification And Validation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Display the challenge to the user as an AlertDialog
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Verification And Validation'),
                      content: Text('$num1 $operator $num2 = ?'),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Prompt Verification And Validation Question'),
            ),
            SizedBox(height: 16.0),
            // Text field for user input
            TextField(
              controller: _textEditingController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter The Result',
              ),
            ),
            SizedBox(height: 16.0),
            // Button to validate the answer
            ElevatedButton(
              onPressed: response,
              child: Text('Submit'),
            ),
            SizedBox(height: 16.0),
      Container(
          height: 69,
          width: 155,
          padding: EdgeInsets.all(12.0),
          margin: EdgeInsets.all(12.0),
          child: ElevatedButton(
            child: const Text('Back'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(AppColors.darkBlue),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (BuildContext context) => Recreate()),
              );
            },
          ),
      ),
          ],
        ),
      ),
    );
  }
}

void Alert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("Successful"),
        content: new Text("Please Return To Login Page And Login Again"),
      );
    },
  );
}
