import 'package:flutter/material.dart';
import 'package:social_media/screens/login.dart';
import 'package:social_media/screens/signup.dart';

import '../utils/colors.dart';


class Welcome extends StatefulWidget {
  // static String welcome_id = 'welcome';
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  @override
  Widget build(BuildContext context) {
    final page_title =Container(
      child: Text('Socialite',
        style: TextStyle(
          color: Colors.black87,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final spage_title = Container(
      child: Text('Be Social',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
      ),
    );

    final log_button = Container(
      padding: EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: () {
          //direct to log in page.
          // Navigator.pushNamed(context, Login.login_id);
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
        },
        child: Text('Log In',
        style: TextStyle(
          fontSize: 15,
        ),
        ),
      ),
    );

    final signup_button = Container(
      padding: EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: () {
          //direct to sign up page.
          // Navigator.pushNamed(context, Signup.sign_id);
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
        },
        child: Text('Sign Up',
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    );


    return Material(
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
                page_title,
                spage_title,
                SizedBox(
                  height: 180,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    log_button,
                    signup_button,
                  ],
                ),
              ],
            ),
          ),
      ),
    );
  }
}
