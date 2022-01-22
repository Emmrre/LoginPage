import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  static const String _signUp = ' Sign Up';
  static const String _name = ' Name';
  static const String _surname = ' Surname';
  static const String _email = ' E-mail';
  static const String _password = 'Password';

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: _buildButtons(),
        appBar: AppBar(
          title: const Text(_signUp),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(child: _buildformText()),
            ],
          ),
        ),
      );

  Widget _buildformText() => ListView(
        children: const [
          Card(
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(labelText: _name),
            ),
          ),
          Card(
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(labelText: _surname),
            ),
          ),
          Card(
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(labelText: _email),
            ),
          ),
          Card(
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(labelText: _password),
            ),
          ),
          Card(
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(labelText: _password),
            ),
          ),
        ],
      );

  Widget _buildButtons() => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 70,
            width: 410,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.amber),
              onPressed: () {},
              child: const Text(
                'Sign Up',
                style: TextStyle(color: Colors.white , fontSize: 20),
              ),
            ),
          ),
        ],
      );
}
