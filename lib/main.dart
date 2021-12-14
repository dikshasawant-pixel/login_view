import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 120,
                  ),
                  Image.asset('assets/login.jpg'),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Material Login',
                    style: TextStyle(fontSize: 25, color: Colors.green),
                  )
                ],
              ),
              SizedBox(
                height: 60.0,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(fontSize: 20),
                  filled: true,
                ),
              ),
              SizedBox(
                height: 60.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(fontSize: 20),
                  filled: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  ButtonTheme(
                    height: 50,
                    disabledColor: Colors.blueAccent,
                    child: RaisedButton(
                      disabledElevation: 4.0,
                      onPressed: null,
                      child: Text('Login',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('New User? Sign up here')
                ],
              ),
            ]),
      ),
    );
  }
}
