import 'package:flutter/material.dart';
import 'package:next_task/utils/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController;
  TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController(text: "");
    passwordController = TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 100.0),
              Text("Login", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),),
              const SizedBox(height: 10.0,),
              RaisedButton(
                child: Text("Login with Google"),
                onPressed: () async {
                  bool res = await AuthProvider().loginWithGoogle();
                  if(!res)
                    print("error logging in with Google");
                },
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "Enter your Email"
                ),
              ),
              const SizedBox(height: 10.0,),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter your Password"
                ),
              ),
              const SizedBox(height: 10.0,),
              RaisedButton(
                child: Text("login"),
                onPressed: ()async {
                  var _emailController;
                  var _passwordController;
                  if(_emailController.text.isEmpty || _passwordController.text.isEmpty){
                    print("Email and password cannot be empty");
                    return;
                  }
                  bool res = await AuthProvider().signInWithEmail(_emailController.text, _passwordController.text);
                  if(!res) {
                    print("Login failed");
                  }
                },
              )
            ],
          ),
        ),

      ),
    );
  }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 30.0,),
            ]
      ),
      )
    );

}