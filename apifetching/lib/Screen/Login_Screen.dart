import 'package:apifetching/Screen/Post_Screen.dart';
import 'package:apifetching/Screen/Sign_Screen.dart';
import 'package:apifetching/Widgets/Widgets_Support.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
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
                ])),
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 3.5,
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 209, 166, 166),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 60, right: 20, left: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 225, 216, 216),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Login",
                          style: AppWidget.headLineTextFieldStyle(),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  labelText: "Email",
                                  prefixIcon: const Icon(Icons.email_outlined),
                                  hintStyle: AppWidget.semiboldTextFieldStyle(),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Plaes Enter Your Email Address";
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  labelText: "Password",
                                  prefixIcon:
                                      const Icon(Icons.password_outlined),
                                  hintStyle: AppWidget.semiboldTextFieldStyle(),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Plaes Enter Your Password";
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(
                                height: 10.0,
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
                                height: 10.0,
                              ),
                              InkWell(
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text("Form is valid!")));
                                  }
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => PostScreen(),));
                                },
                                child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 200,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFFe74b1a),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Center(
                                        child: Text(
                                      "LOGIN",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
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
                            builder: (context) => SignPage(),
                          ));
                    },
                    child: Text(
                      "Don't have an account? Sign up",
                      style: AppWidget.semiboldTextFieldStyle(),
                    ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
