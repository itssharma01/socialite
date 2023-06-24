import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'package:social_media/utils/constants.dart';


class resetPassword extends StatefulWidget {
  @override
  _resetPasswordState createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
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
        "New Password",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 40.0,
        ),
      ),
    );

    final passwordField = TextFormField(
      decoration: kfeildecoration,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
    );

    final resetPasswordForm = Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[passwordField],
        ),
      ),
    );

    final confirmpasswordField = TextFormField(
      decoration: kfeildecoration.copyWith(
        labelText: 'Confirm password'
      ),
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
    );

    // final confirmPasswordForm = Padding(
    //   padding: EdgeInsets.only(top: 30.0),
    //   child: Form(
    //     key: _formKey,
    //     child: Column(
    //       children: <Widget>[confirmpasswordField],
    //     ),
    //   ),
    // );

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
        // onPressed: () => Navigator.pushNamed(context, landingViewRoute),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(7.0),
          ),
        ),
        onPressed: () {},
        child: Text(
          'Save Password',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
              color: Colors.black
          ),
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
                    confirmpasswordField,
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