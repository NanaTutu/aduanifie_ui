import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/profileBackground.png"),
                  fit: BoxFit.fill
                )
              ),
            ),
            Container(
              height: height*0.7,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                )
              ),
            ),
            Container(
              height: height*0.7,
              decoration: const BoxDecoration(
                  color: const Color.fromRGBO(112, 32, 30, 0.17),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                  )
              ),
            ),
            Container(
              height: height*0.78,
              padding: EdgeInsets.symmetric(horizontal: width*0.05),
              child: Column(
                children: [
                  Container(
                    height: height*0.15,
                    width: width*0.5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(242, 163, 15, 0.5),
                          blurRadius: 50,
                          offset: Offset(0, 0), // Shadow position
                        ),
                      ]
                    ),
                    child: CircleAvatar(
                      child: Image.asset("assets/images/profilepicture.png"),
                    ),
                  ),
                  SizedBox(height: height*0.05,),
                  Container(
                    height: height*0.07,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: width*0.15,
                          color: Colors.transparent,
                            child: Image.asset("assets/images/mdi_account-cog.png",
                              scale: 3,
                            )
                        ),
                        Container(
                          width: width*0.55,
                          padding: EdgeInsets.only(left: width*0.02),
                          color: Colors.transparent,
                          child: const Text("Account",
                            style: TextStyle(
                                fontFamily: "Raleway",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(58, 20, 19, 0.9)
                            ),
                          )
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.transparent,
                            child: const Icon(
                              CupertinoIcons.arrow_right,
                              color: Color.fromRGBO(242, 163, 15, 1),
                              size: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height*0.03,),
                  Container(
                    height: height*0.07,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: width*0.15,
                          color: Colors.transparent,
                            child: Image.asset("assets/images/bi_shield-lock-fill.png",
                              scale: 3,
                            )
                        ),
                        Container(
                            width: width*0.55,
                            padding: EdgeInsets.only(left: width*0.02),
                            color: Colors.transparent,
                            child: const Text("Security",
                              style: TextStyle(
                                  fontFamily: "Raleway",
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(58, 20, 19, 0.9)
                              ),
                            )
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.transparent,
                            child: const Icon(
                              CupertinoIcons.arrow_right,
                              color: Color.fromRGBO(242, 163, 15, 1),
                              size: 20,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: height*0.03,),
                  Container(
                    height: height*0.07,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: width*0.15,
                          color: Colors.transparent,
                          child: Image.asset("assets/images/ion_accessibility.png",
                            scale: 3,
                          )
                        ),
                        Container(
                            width: width*0.55,
                            padding: EdgeInsets.only(left: width*0.02),
                            color: Colors.transparent,
                            child: const Text("Accessibility",
                              style: TextStyle(
                                  fontFamily: "Raleway",
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(58, 20, 19, 0.9)
                              ),
                            )
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.transparent,
                            child: const Icon(
                              CupertinoIcons.arrow_right,
                              color: Color.fromRGBO(242, 163, 15, 1),
                              size: 20,
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
    );;
  }
}
