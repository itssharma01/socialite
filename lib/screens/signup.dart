import 'package:flutter/material.dart';
import 'package:social_media/screens/welcome.dart';
import 'package:social_media/utils/colors.dart';

class Signup extends StatefulWidget {
  // static String sign_id = 'signup';
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    final page_tittle = Container(
      alignment: Alignment.center,
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

    final sign_up = Container(
      height: 50.0,
      padding: EdgeInsets.fromLTRB(10,10,10,0),
      child: ElevatedButton(
        onPressed: (){
          //required action->(back to welcome page)
          // Navigator.pushNamed(context, Welcome.welcome_id);
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Welcome()));
        },
        child: Text('Sign up'),
      ),
    );



    return Material(
      child: Scaffold(
        body:Container(
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
                height: 40,
              ),
              email_add,
              SizedBox(
                height: 15,
              ),
              pass,
              SizedBox(
                height: 30,
              ),
              sign_up,
            ],
          ),
        )
      ),
    );
  }
}
