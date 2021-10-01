import 'package:flutter/material.dart';
import 'package:login_app/view/bottom_bar.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      // restorationId: "Hello",
      // drawerEnableOpenDragGesture: true,
      body: SafeArea(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.30,
              child: Image.network(
                "https://media.cntraveler.com/photos/5e7904d34ab09800086faec5/3:4/w_2598,h_3464,c_limit/crabshack-savannah-amymurphy-2020-2.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40),
              alignment: Alignment.topCenter,
              child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold),
              ),
            ),
            // Positioned(
            //   right: 55,
            //   child: Image.asset(
            //     "assets/images/login_pizza.png",
            //     height: 120,
            //   ),
            // ),
            SingleChildScrollView(
              child: Container(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 25, top: 75),
                        padding: EdgeInsets.only(top: 60),
                        child: Text(
                          "Username",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          initialValue: "afasd",
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please Enter  Username";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: "Type Your Username",
                              prefixIcon: Icon(Icons.person_outline)),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 25, top: 18),
                        child: Text(
                          "Password",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: TextFormField(
                          initialValue: "dfqf",
                          validator: (value) {
                            // bool validPassword =
                            //     RegExp(r"^[0-9]+$").hasMatch(value);
                            if (value.isEmpty) {
                              return "Please Enter Password";
                            }
                            // if (!validPassword) {
                            //   return "Please Enter Valid Password";
                            // }
                            if (value.length < 6) {
                              return "Enter Valid Password";
                            }
                            try {
                              int.parse(value);
                            } catch (e) {
                              return "Enter only digit";
                            }

                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: "Type Your password",
                              prefixIcon: Icon(Icons.lock_outline_rounded)),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                        alignment: Alignment.centerRight,
                        child: Text("Forget Password?"),
                      ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          if (formKey.currentState.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomPage(),
                              ),
                            );
                          }
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          alignment: Alignment.center,
                          margin:
                              EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            gradient: LinearGradient(
                              colors: [
                                Colors.cyan,
                                Colors.deepPurpleAccent.shade100,
                                Colors.pink.shade400
                              ],
                            ),
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Or Sign Up Using"),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            child: Image.asset(
                              "assets/images/facebook.png",
                              // colorBlendMode: BlendMode.,
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            height: 40,
                            child: Image.asset("assets/images/twitter.png"),
                          ),
                          SizedBox(width: 15),
                          Container(
                            height: 40,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/google.png"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Text(
                          "Or Sign Up Using\n\n\Sign Up",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
