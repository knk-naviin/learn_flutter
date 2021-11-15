import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


class UserRegistration extends StatelessWidget {
  const UserRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xff08c8f6), Color(0xff4d5dfb)],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.network(
                  "https://media.istockphoto.com/vectors/business-communication-internet-blogging-post-flat-design-vector-vector-id1143088863?k=20&m=1143088863&s=612x612&w=0&h=kJgOoz9QAhbT83Acyhm9whRtxt2j7J7VzWAxCHuEa8o="),
              Padding(
                padding: const EdgeInsets.only(top: 380.0),
                child: Center(
                  child: Text(
                    'Learn Flutter',
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Text("Present by YAASH SCHOOL OF TECHNOLOGY",style: TextStyle(
              fontSize: 12
            ),),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    height: 54,
                    width: 290,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.grey.shade200,
                      ),
                    ),
                    child: Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        onPressed: () {
                          GoogleSignIn().signIn().then((value) => {
                            print("Success")
                          });
                        },
                        child: Row(
                          children: [
                            Image.asset("images/Googlelogo.png"),
                            Text(
                              "Sign in with google",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
