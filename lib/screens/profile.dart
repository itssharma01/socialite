import 'package:flutter/material.dart';
import 'package:social_media/screens/login.dart';

import '../utils/colors.dart';


class Profile extends StatefulWidget {
  static String Profile_id = 'profile';

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final app_bar =AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back,color: Colors.black),
        onPressed: () {
          //back to the previous page.
          Navigator.push( context,MaterialPageRoute(builder: (context)=> Login()));
        },
      ),
    );

    final heading = Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: Text(
        'Tell us about you!',
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w500,
          fontSize: 40,
        ),
      ),
    );

    final name = Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        controller: null, //update
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
          border: OutlineInputBorder(),
          labelText: 'Name',
        ),
      ),
    );

    final email_add = Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        controller: null, //update
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(),
          labelText: 'E-mail address',
        ),
      ),
    );

    final phone_num =Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        controller: null, //update
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.phone_android),
          border: OutlineInputBorder(),
          labelText: 'Phone number',
        ),
      ),
    );

    final pass = Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        controller: null, //update
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          border: OutlineInputBorder(),
          labelText: 'Password',
        ),
      ),
    );

    final gen = Container(
    padding: EdgeInsets.all(10),
    child: TextField(
    controller: null,
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.female),
    border: OutlineInputBorder(),
    labelText: 'Gender',
    ),
    ),
    );

    final create_acc = Container(
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: (){
          //details entered.
        },
        child: Text('CREATE ACCOUNT'),
      ),
    );

    return Material(
      child: Scaffold(
        appBar: app_bar,
        body: Container(
          padding: EdgeInsets.only(top: 40.0),
          decoration: BoxDecoration(gradient: primaryGradient),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              heading,
              SizedBox(
                height: 20,
              ),
              name,
              SizedBox(
                height: 10,
              ),
              email_add,
              SizedBox(
                height: 10,
              ),
              phone_num,
              SizedBox(
                height: 10,
              ),
              pass,
              SizedBox(
                height: 10,
              ),
              gen,
              SizedBox(
                height: 20,
              ),
              create_acc,
            ],
          ),
        )
      ),
    );
  }
}


