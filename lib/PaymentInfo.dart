import 'package:aduanifie_ui/OrderCompletionScreen.dart';
import 'package:flutter/material.dart';

class PaymentInfo extends StatefulWidget {
  const PaymentInfo({Key? key}) : super(key: key);

  @override
  State<PaymentInfo> createState() => _PaymentInfoState();
}

class _PaymentInfoState extends State<PaymentInfo> {
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
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage('assets/images/momo.png'),
                                  height: height*0.05,
                                ),
                                SizedBox(width: width*0.05,),
                                const Text("Mobile Money",
                                 style: TextStyle(
                                   color: Color.fromRGBO(112, 32, 30, 1),
                                   fontWeight: FontWeight.bold,
                                   fontFamily: "Raleway",
                                   fontSize: 26
                                 ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: height*0.05),
                          Container(
                            width: width,
                            height: height*0.05,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(194, 209, 217, 0.5),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: height*0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Network",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Raleway",
                                    fontSize: 16,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: const Color.fromRGBO(194, 209, 217, 1),
                                  size: height*0.03,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: height*0.03),
                          Container(
                            width: width,
                            height: height*0.05,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(194, 209, 217, 0.5),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: height*0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("Number",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Raleway",
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: height*0.03),
                          Container(
                            width: width,
                            height: height*0.05,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(194, 209, 217, 0.5),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: height*0.02),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:const [
                                Text("Name",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Raleway",
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:  (BuildContext context) {
                                            return CompletionPage();
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
                                    child: const Text("Complete purchase",
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
