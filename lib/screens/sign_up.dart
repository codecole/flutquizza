import 'package:flutquiza/screens/sign_in.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _signUpFormKey = GlobalKey<FormState>();
  String email, password,name;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          key: _signUpFormKey,
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextFormField(
                  validator: (val) {
                    return val.isEmpty ? 'Enter Full Name ' : null;
                  },
                  decoration: InputDecoration(
                    hintText: "Full Name",
                  ),
                  onChanged: (val) {
                    email = val;
                  },
                  keyboardType: TextInputType.name,
                ),
                SizedBox(
                  height: 24.0,
                ),
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
                      'Sign Up',
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
                    Text(" Already have an account?"),
                    SizedBox(
                      width: 8.0,
                    ),
                    GestureDetector(
                      onTap:()=>  Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignIn()),
                      ),
                      child: Text(
                        "Sign In",
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
    );;
  }
}
