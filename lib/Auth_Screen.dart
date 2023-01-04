import 'package:aduanifie_ui/homePage.dart';
import 'package:flutter/material.dart';

import 'LandingPage.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            body: SafeArea(
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/Signup_bg.png"),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top:  MediaQuery.of(context).size.height*0.1),
                          alignment: Alignment.center,
                          child: RichText(
                            text: const TextSpan(
                                text: 'Aduanefie ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Montserrat",
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '.',
                                      style: TextStyle(
                                          color: Color.fromRGBO(242, 163, 15, 1),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40
                                      )
                                  )
                                ]
                            ),
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.05),
                        Container(
                          width: MediaQuery.of(context).size.width*0.8,
                          height: MediaQuery.of(context).size.height*0.65,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                                blurRadius: 4,
                                offset: Offset(4, 8), // Shadow position
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*1,
                                height: MediaQuery.of(context).size.height*0.05,
                                margin: EdgeInsets.symmetric(
                                    vertical: MediaQuery.of(context).size.height*0.02,
                                    horizontal: MediaQuery.of(context).size.width*0.05),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: const BorderRadius.all(Radius.circular(50))
                                ),
                                child: const TabBar(
                                  indicator: BoxDecoration(
                                    color: Color.fromRGBO(112, 32, 30, 1),
                                    borderRadius: BorderRadius.all(Radius.circular(50))
                                  ),
                                  labelStyle: TextStyle(
                                    fontFamily: "Raleway",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18
                                  ),
                                  unselectedLabelColor: Color.fromRGBO(112, 32, 30, 1),
                                  tabs: [
                                    Tab(
                                      text: 'Sign Up',
                                    ),
                                    Tab(
                                      text: "Sign In",
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.06,),
                              Container(
                                height: MediaQuery.of(context).size.height*0.5,
                                color: Colors.transparent,
                                child: TabBarView(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.06,
                                            width: MediaQuery.of(context).size.width,
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.08),
                                            decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.3),
                                              borderRadius: BorderRadius.circular(15)
                                            ),
                                            child: const Text("Full name",
                                              style: TextStyle(
                                                fontFamily: "Raleway",
                                                color: Colors.grey,
                                                fontSize: 18
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.06,
                                            width: MediaQuery.of(context).size.width,
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.08),
                                            decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.3),
                                                borderRadius: BorderRadius.circular(15)
                                            ),
                                            child: const Text("Email address",
                                              style: TextStyle(
                                                  fontFamily: "Raleway",
                                                  color: Colors.grey,
                                                  fontSize: 18
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.06,
                                            width: MediaQuery.of(context).size.width,
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.08),
                                            decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.3),
                                                borderRadius: BorderRadius.circular(15)
                                            ),
                                            child: const Text("Password",
                                              style: TextStyle(
                                                  fontFamily: "Raleway",
                                                  color: Colors.grey,
                                                  fontSize: 18
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.06,
                                            width: MediaQuery.of(context).size.width,
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.08),
                                            decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.3),
                                                borderRadius: BorderRadius.circular(15)
                                            ),
                                            child: const Text("Confirm password",
                                              style: TextStyle(
                                                  fontFamily: "Raleway",
                                                  color: Colors.grey,
                                                  fontSize: 18
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.05),
                                          InkWell(
                                            onTap: (){
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder:  (BuildContext context) {
                                                      return const LandingPage();
                                                    },
                                                  )
                                              );
                                            },
                                            child: Container(
                                              height: MediaQuery.of(context).size.height*0.05,
                                              width: MediaQuery.of(context).size.width*0.4,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(112, 32, 30, 1),
                                                  borderRadius: BorderRadius.circular(20)
                                              ),
                                              child: const Text("Sign Up",
                                                style: TextStyle(
                                                    fontFamily: "Raleway",
                                                    color: Color.fromRGBO(255, 255, 255, 1),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ),
                                          )

                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.06,
                                            width: MediaQuery.of(context).size.width,
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.08),
                                            decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.3),
                                                borderRadius: BorderRadius.circular(15)
                                            ),
                                            child: const Text("Email address",
                                              style: TextStyle(
                                                  fontFamily: "Raleway",
                                                  color: Colors.grey,
                                                  fontSize: 18
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                                          Container(
                                            height: MediaQuery.of(context).size.height*0.06,
                                            width: MediaQuery.of(context).size.width,
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.08),
                                            decoration: BoxDecoration(
                                                color: Colors.grey.withOpacity(0.3),
                                                borderRadius: BorderRadius.circular(15)
                                            ),
                                            child: const Text("Password",
                                              style: TextStyle(
                                                  fontFamily: "Raleway",
                                                  color: Colors.grey,
                                                  fontSize: 18
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            child: const Text("Forgot password?",
                                              style: TextStyle(
                                                  fontFamily: "Raleway",
                                                  color: Color.fromRGBO(242, 163, 15, 1),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.05),
                                          InkWell(
                                            onTap: (){
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder:  (BuildContext context) {
                                                      return const LandingPage();
                                                    },
                                                  )
                                              );
                                            },
                                            child: Container(
                                              height: MediaQuery.of(context).size.height*0.05,
                                              width: MediaQuery.of(context).size.width*0.4,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(112, 32, 30, 1),
                                                  borderRadius: BorderRadius.circular(20)
                                              ),
                                              child: const Text("Sign In",
                                                style: TextStyle(
                                                    fontFamily: "Raleway",
                                                    color: Color.fromRGBO(255, 255, 255, 1),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
            )
        )
    );
  }
}
