import 'package:app_todo/view/login_view.dart';
import 'package:flutter/material.dart';

class EmailFragements extends StatelessWidget {
  final String title;
  final Function() function;

  const EmailFragements({super.key, required this.title, required this.function});

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
            icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.network("https://99designs-blog.imgix.net/blog/wp-content/uploads/2022/06/Starbucks_Corporation_Logo_2011.svg-e1657703028844.png?auto=format&q=60&fit=max&w=80"),
                      Text(
                        title,
                        style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Please Enter Your Email",
                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 16, left: 16, top: 30, bottom: 30),
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            fillColor: Colors.black12,
                            filled: true,
                            border: UnderlineInputBorder(borderSide: BorderSide.none),
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: "Email Address",
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 16, left: 16),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(padding: EdgeInsets.only(top: 8, bottom: 8), backgroundColor: Colors.green, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
                              onPressed: () {},
                              child: Text(
                                "Continue",
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Back to",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginView()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
