import 'package:apifetching/Screen/Login_Screen.dart';
import 'package:apifetching/Widgets/Widgets_Support.dart';
import 'package:flutter/material.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                   Color.fromARGB(255, 255, 0, 0), 
                  Color.fromARGB(255, 0, 0, 255),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 3.5),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 209, 166, 166),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
            ),
            Container(
              margin: const EdgeInsets.only(top: 60.0, right: 20, left: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.8,
                      decoration: BoxDecoration(
                        color:Color.fromARGB(255, 225, 216, 216),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Sign Up",
                            style: AppWidget.headLineTextFieldStyle(),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.person),
                                hintText: "Name",
                                hintStyle: AppWidget.semiboldTextFieldStyle()),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.email_outlined),
                                hintText: "Email",
                                hintStyle: AppWidget.semiboldTextFieldStyle()),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.password),
                                hintText: "Password",
                                hintStyle: AppWidget.semiboldTextFieldStyle()),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 200,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFe74b1a),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Center(
                                  child: Text(
                                "SIGN UP",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70.0,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                      child: Text(
                        "Already have an account? Login",
                        style: AppWidget.semiboldTextFieldStyle(),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
