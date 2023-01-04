import 'package:flutter/material.dart';

import 'LandingPage.dart';
import 'PaymentScreen.dart';

class CheckOut extends StatefulWidget {
  CheckOut({Key? key}) : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/checkoutbg.png"),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      height: MediaQuery.of(context).size.height*0.75,
                      padding: EdgeInsets.symmetric(horizontal: width*0.05, vertical: height*0.02),
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
                            width: width,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.grey.shade300,
                                )
                              )
                            ),
                            padding: EdgeInsets.symmetric(vertical: height*0.01),
                            child: Row(
                              children: [
                                Container(
                                  width: width*0.2,
                                  height: height*0.1,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle
                                  ),
                                  child: const CircleAvatar(
                                    child: Image(
                                      image: AssetImage("assets/images/bankuOkro.png"),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.only(left: width*0.05),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("Banku & Okro Stew",
                                          style: TextStyle(
                                            fontFamily: "Raleway",
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromRGBO(58, 20, 19, 0.9)
                                          ),
                                        ),
                                        Text("Ghc20",
                                          style: TextStyle(
                                              fontFamily: "Raleway",
                                              fontSize: 18,
                                              color: Color.fromRGBO(112, 32, 30, 1)
                                          ),)
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: width*0.1,
                                  height: height*0.1,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent
                                  ),
                                  child: const Text("2",
                                    style: TextStyle(
                                        fontFamily: "Raleway",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(58, 20, 19, 0.9)
                                    ),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: width,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey.shade300,
                                    )
                                )
                            ),
                            padding: EdgeInsets.symmetric(vertical: height*0.01),
                            child: Row(
                              children: [
                                Container(
                                  width: width*0.2,
                                  height: height*0.1,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent,
                                      shape: BoxShape.circle
                                  ),
                                  child: const CircleAvatar(
                                    child: Image(
                                      image: AssetImage("assets/images/fufuPalm.png"),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.only(left: width*0.05),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("Fufu & Palmnut Soup",
                                          style: TextStyle(
                                              fontFamily: "Raleway",
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(58, 20, 19, 0.9)
                                          ),
                                        ),
                                        Text("Ghc20",
                                          style: TextStyle(
                                              fontFamily: "Raleway",
                                              fontSize: 18,
                                              color: Color.fromRGBO(112, 32, 30, 1)
                                          ),)
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: width*0.1,
                                  height: height*0.1,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent
                                  ),
                                  child: const Text("1",
                                    style: TextStyle(
                                        fontFamily: "Raleway",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(58, 20, 19, 0.9)
                                    ),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: width,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey.shade300,
                                    )
                                )
                            ),
                            padding: EdgeInsets.symmetric(vertical: height*0.01),
                            child: Row(
                              children: [
                                Container(
                                  width: width*0.2,
                                  height: height*0.1,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent,
                                      shape: BoxShape.circle
                                  ),
                                  child: const CircleAvatar(
                                    child: Image(
                                      image: AssetImage("assets/images/waakye.png"),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.only(left: width*0.05),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("Waakye",
                                          style: TextStyle(
                                              fontFamily: "Raleway",
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(58, 20, 19, 0.9)
                                          ),
                                        ),
                                        Text("Ghc20",
                                          style: TextStyle(
                                              fontFamily: "Raleway",
                                              fontSize: 18,
                                              color: Color.fromRGBO(112, 32, 30, 1)
                                          ),)
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: width*0.1,
                                  height: height*0.1,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                      color: Colors.transparent
                                  ),
                                  child: const Text("3",
                                    style: TextStyle(
                                        fontFamily: "Raleway",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(58, 20, 19, 0.9)
                                    ),),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text("Total price",
                                  style: TextStyle(
                                    color: Color.fromRGBO(112, 32, 30, 1),
                                    fontFamily: "Raleway",
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                const Text("Ghc60",
                                  style: TextStyle(
                                      color: Color.fromRGBO(58, 20, 19, 0.9),
                                      fontFamily: "Raleway",
                                      fontSize: 30,
                                  ),
                                ),
                                SizedBox(height: height*0.02),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:  (BuildContext context) {
                                            return PaymentDelivery();
                                          },
                                        )
                                    );
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: width*0.5,
                                    height: height*0.05,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(112, 32, 30, 1),
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: const Text("Checkout",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Raleway",
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: height*0.03),
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
    );
  }
}
