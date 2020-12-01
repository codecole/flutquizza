import 'package:flutquiza/screens/sign_up.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _signInFormKey = GlobalKey<FormState>();
  String email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Flut'),
            Text(
              'Quizza',
              style: TextStyle(color: Colors.yellow),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom:32.0),
        child: Form(
          key: _signInFormKey,
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextFormField(
                  validator: (val) {
                    return val.isEmpty ? 'Enter Email address ' : null;
                  },
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                  onChanged: (val) {
                    email = val;
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 24.0,
                ),
                TextFormField(
                  obscureText: true,
                  validator: (val) {
                    return val.isEmpty ? 'Enter valid password ' : null;
                  },
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                  onChanged: (val) {
                    password = val;
                  },
                  keyboardType: TextInputType.visiblePassword,
                ),
                SizedBox(
                  height: 24.0,
                ),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(4.0)),
                  width: MediaQuery.of(context).size.width,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    SizedBox(
                      width: 8.0,
                    ),
                    GestureDetector(
                      onTap:()=>  Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      ),
                      child: Text(

                        "Sign Up",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
