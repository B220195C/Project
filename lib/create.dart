import 'package:flutter/material.dart';
import 'package:live_score/src/core/utils/app_colors.dart';
import 'main.dart';

class Create extends StatelessWidget {
  const Create({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login And Sign Up'),
      ),
      body: _create(),
    );
  }
}

class _create extends StatefulWidget {
  const _create({Key? key}) : super(key: key);

  @override
  State<_create> createState() => _createState();
}

class _createState extends State<_create> {
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
        'UserName',
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
            'Password',
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
            width: double.infinity,
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
            width: double.infinity,
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
                  child: const Text('Sign Up'),
                  onPressed: () {
                    print(nameController.text);

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => Login()),
                    );
                    log_in(context);
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
                  onPressed: () {
                    alert(context);
                  },
                ),
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void alert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("Cancel The Sign Up And Login"),
        content: new Text("Return Login Page"),
        actions: <Widget>[
          new TextButton(
            child: new Text("Yes"),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => Login()),
              );
            },
          ),
          new TextButton(
            child: new Text("No"),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (BuildContext context) => Create()),
              );
            },
          ),
        ],
      );
    },
  );
}

void log_in(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("Hi"),
        content: new Text("Please Login Again"),
      );
    },
  );
}


