import 'package:flutter/material.dart';
import 'package:live_score/rebuild.dart';
import 'package:live_score/src/core/utils/app_colors.dart';
import 'main.dart';

class Recreate extends StatelessWidget {
  const Recreate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset'),
      ),
      body: _recreate(),
    );
  }
}

class _recreate extends StatefulWidget {
  const _recreate({Key? key}) : super(key: key);

  @override
  State<_recreate> createState() => _recreateState();
}

class _recreateState extends State<_recreate> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' UserName',
            style: TextStyle(
              color: AppColors.darkBlue,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 36.0,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
            ),
            width: double.infinity,
          ),
      Text(
        ' Reset Password',
        style: TextStyle(
          color: AppColors.darkBlue,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontSize: 36.0,
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: TextField(
          obscureText: true,
          controller: passwordController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: TextField(
          obscureText: true,
          controller: passwordController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Ensure Password',
          ),
        ),
      ),
          Row(
            children: [
              Text(
                'Verification And Velidation',
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 19.0,
                ),
              ),
              Expanded(
                child: Container(
                  height: 69,
                  width: 155,
                  padding: EdgeInsets.all(12.0),
                  margin: EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    child: const Text('Submit'),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) => rebuild()),
                      );
                    },
                  ),

                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 69,
                  width: 155,
                  padding: EdgeInsets.all(12.0),
                  margin: EdgeInsets.all(12.0),
                  child: ElevatedButton(
                    child: const Text('Login'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(AppColors.darkBlue),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) => Login()),
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
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
                        MaterialPageRoute(builder: (BuildContext context) => Login()),
                      );
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


