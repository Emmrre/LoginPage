import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_page/screen/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const String _title = 'Login';
  static const String _email = ' E-mail';
  static const String _password = 'Password';
  static const String _login = 'Login';
  static const String _welcome = 'Welcome';  
  static const String _signUp = ' Sign Up';  
 
  

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          leading: const Icon(Icons.person),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              children: [
                const Spacer(),
                Expanded(flex: 10, child: _buildText()),
                Expanded(flex: 5, child: _buildEmailTextField()),
                Expanded(flex: 5, child: _buildPasswordTextField()),
                Expanded(flex: 5, child: _buildSignup()),
                const Spacer(flex: 6),
                Expanded(flex: 10, child: _buildButtons()),
                const Spacer(flex: 10),
              ],
            ),
          ),
        ),
      );

  Widget _buildEmailTextField() => const TextField(
        decoration: InputDecoration(
          labelText: _email,
        ),
      );
  Widget _buildPasswordTextField() => const TextField(
        decoration: InputDecoration(
          labelText: _password,
        ),
      );

  Widget _buildButtons() => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.amber),
              onPressed: () {},
              child: const Text(_login , style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      );

  Widget _buildText() => const Text(
        _welcome,
        style: TextStyle(fontSize: 50, color: Colors.grey),
      );

  Widget _buildSignup() => Container(
        alignment: Alignment.centerRight,
        child: TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()));
            },
            child: const Text(
              _signUp,
              style: TextStyle(color: Colors.grey),
            )),
      );
}

   

