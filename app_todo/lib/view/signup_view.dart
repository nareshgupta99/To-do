import 'package:app_todo/service/authentication_api.dart';
import 'package:app_todo/view/login_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginView()),
              );
            },
            icon: Icon(weight: 10, Icons.arrow_back)),
      ),
      body: Column(children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Image.network("https://99designs-blog.imgix.net/blog/wp-content/uploads/2022/06/Starbucks_Corporation_Logo_2011.svg-e1657703028844.png?auto=format&q=60&fit=max&w=80"),
                    Text(
                      "Register",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                    Text(
                      "Please Enter Your Details",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 30),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(prefixIcon: Icon(Icons.person_outline), hintText: "Full Name *", fillColor: Colors.black12, filled: true, border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)), borderSide: BorderSide.none)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(prefixIcon: Icon(Icons.mail_outline), hintText: "Email Address *", fillColor: Colors.black12, filled: true, border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)), borderSide: BorderSide.none)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    obscureText: true,
                    decoration: InputDecoration(prefixIcon: Icon(Icons.key), suffixIcon: Icon(Icons.remove_red_eye), hintText: "Enter Password *", fillColor: Colors.black12, filled: true, border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)), borderSide: BorderSide.none)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(prefixIcon: Icon(Icons.key), suffixIcon: Icon(Icons.remove_red_eye), hintText: "Confirm Password *", fillColor: Colors.black12, filled: true, border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)), borderSide: BorderSide.none)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(prefixIcon: Icon(Icons.map), hintText: "Address *", fillColor: Colors.black12, filled: true, border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)), borderSide: BorderSide.none)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(prefixIcon: Icon(Icons.location_city), hintText: "City *", fillColor: Colors.black12, filled: true, border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)), borderSide: BorderSide.none)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(prefixIcon: Icon(Icons.folder_zip), hintText: "Zip Code *", fillColor: Colors.black12, filled: true, border: UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)), borderSide: BorderSide.none)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 16),
                  child: Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) => {},
                      ),
                      Flexible(
                        child: RichText(
                            text: TextSpan(style: TextStyle(color: Colors.black), children: [
                          TextSpan(text: "I agree on the "),
                          TextSpan(text: "Terms & Conditions", style: TextStyle(decoration: TextDecoration.underline)),
                          TextSpan(text: " & "),
                          TextSpan(text: "Privacy & Policy", style: TextStyle(decoration: TextDecoration.underline))
                        ])),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      Text("Subscribe for updates")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 16),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      AuthenticationApi.registeredUser(name: "Naresh", email: "nareshgupta170899@gmail.com",password: "naresh");
                    },
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))), backgroundColor: Colors.green, foregroundColor: Colors.white),
                    child: Text(
                      "Create Your Account",
                    )),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: RichText(
              text: TextSpan(style: TextStyle(color: Colors.black), children: [
            TextSpan(text: "Already have an account ? "),
            TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
                  },
                text: "Login",
                style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, decoration: TextDecoration.underline)),
          ])),
        )
      ]),
    );
  }
}
