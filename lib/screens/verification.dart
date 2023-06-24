import 'package:flutter/material.dart';
import 'package:social_media/screens/resetPassword.dart';
import '../utils/colors.dart';

class verifyEmail extends StatefulWidget {
  @override
  _verifyEmailState createState() => _verifyEmailState();
}

class _verifyEmailState extends State<verifyEmail> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final appBar = Padding(
      padding: EdgeInsets.only(bottom: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          )
        ],
      ),
    );

    final pageTitle = Container(
      child: Text(
        "Verify Email",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 40.0,
        ),
      ),
    );

    final emailField = TextFormField(
      decoration: InputDecoration(
        labelText: 'Enter verification code',
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
    );

    final resetPasswordForm = Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[emailField],
        ),
      ),
    );

    final resetPasswordBtn = Container(
      margin: EdgeInsets.only(top: 40.0),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        border: Border.all(color: Colors.white),
        color: Colors.white,
      ),
      child: ElevatedButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>resetPassword())),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(7.0),
          ),
        ),
        child: Text(
          'VERIFY',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
              color: Colors.black
          ),
        ),
      ),
    );

    final newUser = Padding(
      padding: EdgeInsets.only(top: 50.0),
      child: InkWell(
        // onTap: () => Navigator.pushNamed(context, registerViewRoute),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              ' if you did not receive code,' ,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Resend',
              style: TextStyle(
                color: Colors.red.shade900,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 40.0),
          decoration: BoxDecoration(gradient: primaryGradient),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              appBar,
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    pageTitle,
                    resetPasswordForm,
                    newUser,
                    resetPasswordBtn
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}