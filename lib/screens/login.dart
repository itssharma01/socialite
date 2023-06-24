import 'package:flutter/material.dart';
import 'package:social_media/screens/profile.dart';
import 'package:social_media/screens/resetPassword.dart';
import 'package:social_media/screens/signup.dart';
import 'package:social_media/screens/verification.dart';

import '../utils/colors.dart';


class Login extends StatefulWidget {
  // static String login_id='login';
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final page_tittle = Container(
      padding: EdgeInsets.all(10.0),
      child: Text(
        'Socialite',
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
        ),
      ),
    );

    final email_add = Container(
      padding: EdgeInsets.all(10.0),
      child: TextField(
        controller: null, //has to be changed.
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(),
          labelText: 'Email-address',
        ),
      ),
    );

    final pass = Container(
      padding: EdgeInsets.fromLTRB(10,10,10,0),
      child: TextField(
        obscureText: true,
        controller: null,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          border: OutlineInputBorder(),
          labelText: 'Password',
        ),
      ),
    );

    final txt_button = TextButton(
      onPressed: (){
        //required action->(reset page)
        // Navigator.pushNamed(context, Resetpassword.reset_id);
        Navigator.push(context, MaterialPageRoute(builder: (context)=> resetPassword()));
      },
      child: Text('Forgot Password',
      style: TextStyle(
        color: Colors.black,
      ),
      ),
    );

    final login_button = Container(
      height: 50.0,
      padding: EdgeInsets.fromLTRB(10,10,10,0),
      child: ElevatedButton(
        onPressed: (){
          //required action->(after the log in page)
          // Navigator.push( context,MaterialPageRoute(builder: (context)=> Profile()));
          Navigator.push(context, MaterialPageRoute(builder: (context)=> verifyEmail()));

        },
        child: Text('Log in'),
      ),
    );


    final does_have_account = Row(
      children: <Widget>[
        TextButton(
            onPressed: () {
              //required action->(sign up page)
              Navigator.push(context,MaterialPageRoute(builder: (context)=> Signup()));
            },
            child:  Text('Does not have account?',
            style: TextStyle(
              color: Colors.black,
            ),
            )
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
    return  Material(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 40.0),
          decoration: BoxDecoration(gradient: primaryGradient),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              page_tittle,
              SizedBox(
                height: 50.0,
              ),
              email_add,
              SizedBox(
                height: 10,
              ),
              pass,
              txt_button,
              login_button,
              SizedBox(
                height: 10.0,
              ),
              does_have_account,
            ],
          ),
        ),
      ),
    );
  }
}
