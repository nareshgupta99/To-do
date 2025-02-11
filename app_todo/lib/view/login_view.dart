import 'package:app_todo/fragement/email_fragements.dart';
import 'package:app_todo/view/signup_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? emailController;
    TextEditingController? passwordController;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 100),
          child: Column(children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.network("https://99designs-blog.imgix.net/blog/wp-content/uploads/2022/06/Starbucks_Corporation_Logo_2011.svg-e1657703028844.png?auto=format&q=60&fit=max&w=80"),
                    Text(
                      "Login",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 40,
                      child: Text(
                        "Please Enter Your Login Details",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16, left: 16, top: 30),
                      child: TextField(
                        decoration: InputDecoration(hintText: "Email Address", prefixIcon: Icon(Icons.mail_outline_outlined), fillColor: Colors.black12, filled: true, border: OutlineInputBorder(borderSide: BorderSide(width: 0))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16, left: 16, top: 16),
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        obscureText: true,
                        decoration: InputDecoration(suffixIcon: Icon(Icons.remove_red_eye_rounded), fillColor: Colors.black12, filled: true, hintText: "Enter Password", prefixIcon: Icon(Icons.key), border: OutlineInputBorder(borderSide: BorderSide(width: 0))),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return EmailFragements(title: "Verify Email", function: () {});
                                }),
                              );
                            },
                            child: Text("Verify Email?")),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return EmailFragements(title: "Forgot Password ?", function: () {});
                              }));
                            },
                            child: Text("Forgot Password?")),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16, left: 16, top: 20),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: (ElevatedButton(
                              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)), backgroundColor: Colors.green[700]),
                              onPressed: () {
                                // if (emailController!.text.isNotEmpty && passwordController!.text.isNotEmpty) {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => OtpView()));
                                // }
                              },
                              child: Text(
                                "Continue",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              )))),
                    ),
                    Padding(padding: EdgeInsets.only(top: 40), child: IconButton(onPressed: () {}, icon: Image.network(width: 40, "https://cdn.iconscout.com/icon/free/png-512/free-google-logo-icon-download-in-svg-png-gif-file-formats--suits-pack-logos-icons-93913.png?f=webp&w=256"))),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ?  ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupView()),
                    );
                  },
                  child: Text("Register", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, decorationStyle: TextDecorationStyle.solid, decoration: TextDecoration.underline)),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
