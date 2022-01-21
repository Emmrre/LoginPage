import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
        ),
        body: Center(child: _buildColumn()),
      );
}

Widget _buildColumn() => Column(
      children: const [

        Flexible(flex:6,child: Text('Welcome')),
        Flexible(
            flex: 2,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'User',
              ),
            )),
        Flexible(
            flex: 2,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            )),
      ],
    );

    Widget _buildButtons()=> Row(
      
    );

  
