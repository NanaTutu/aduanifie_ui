import 'package:aduanifie_ui/Utils/deliveryOptions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PaymentInfo.dart';
import 'Utils/FoodItemModel.dart';
import 'Utils/popularCategoriesModel.dart';

class PaymentDelivery extends StatefulWidget {
  PaymentDelivery({Key? key}) : super(key: key);

  @override
  State<PaymentDelivery> createState() => _PaymentDeliveryState();
}

class _PaymentDeliveryState extends State<PaymentDelivery> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                // color: const Color.fromRGBO(112, 32, 30, 0.2),
                color: Colors.white,
              ),
              Container(
                child: Column(
                  children: [
                    header(height, width),
                    categories(height, width),
                    // SizedBox(height: height*0.02,),
                    paymentMethods(height, width),
                    // promoWidget(height, width),
                    // promoIndicators(height, width),
                    // SizedBox(height: height*0.03),
                    // popularCategories(height, width),
                    // SizedBox(height: height*0.02),
                    // foodList(height, width),
                    Expanded(
                      child: priceTotal(height, width),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }

  Widget header(double height, double width){
    return Container(
      height: height*0.08,
      padding: EdgeInsets.symmetric(horizontal: width*0.05),
      width: width,
      decoration: const BoxDecoration(
        color: const Color.fromRGBO(112, 32, 30, 0.2),
      ),
      child: Row(
        children: [
          Container(
            child: RichText(
              text: const TextSpan(
                text: 'Delivery & Payment',
                style: TextStyle(
                    color:  Color.fromRGBO(112, 32, 30, 1),
                    fontFamily: "Raleway",
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget categories(double height, double width){
    return Container(
      width: width,
      color: const Color.fromRGBO(112, 32, 30, 0.2),
      padding: EdgeInsets.symmetric(horizontal: width*0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
                options.length, (index) =>
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: height*0.02),
                    width: width*0.2,
                    padding: EdgeInsets.symmetric(vertical: height*0.015),
                    decoration: BoxDecoration(
                      color: index == 0? const Color.fromRGBO(242, 163, 15, 1):Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: index == 0?const [
                        BoxShadow(
                          color: Color.fromRGBO(242, 163, 15, 1),
                          blurRadius: 10,
                          offset: Offset(0, 4), // Shadow position
                        ),
                      ]:const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.4),
                          blurRadius: 10,
                          offset: Offset(0,4), // Shadow position
                        ),
                      ],
                    ),
                    child: Text(options[index].optionOne,
                      style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.bold,
                          color: index==0?Colors.white:const Color.fromRGBO(45, 20, 19, 0.9)
                      ),
                    )
                )
            ),
          ),
        ],
      ),
    );
  }
  Widget paymentMethods(double height, double width){
    return Container(
      height: height*0.65,
      padding: EdgeInsets.only(left: width*0.05, right: width*0.05, top: height*0.06),
      decoration: const BoxDecoration(
          color: Color.fromRGBO(112, 32, 30, 0.2),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)
          )
      ),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Payment Methods",
          style: TextStyle(
            fontFamily: "Raleway",
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color:  Color.fromRGBO(112, 32, 30, 1),
           )
          ),
          SizedBox( height: height*0.05),
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
                    child: Image.asset("assets/images/momo.png",
                      scale: 3,
                    )
                ),
                Container(
                    width: width*0.55,
                    padding: EdgeInsets.only(left: width*0.02),
                    color: Colors.transparent,
                    child: const Text("Mobile Money",
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
                    width: width*0.1,
                    height: height*0.025,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(242, 163, 15, 1),
                        shape: BoxShape.circle
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox( height: height*0.02),
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
                    child: Image.asset("assets/images/creditcard.png",
                      scale: 3,
                    )
                ),
                Container(
                    width: width*0.55,
                    padding: EdgeInsets.only(left: width*0.02),
                    color: Colors.transparent,
                    child: const Text("Credit Card",
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
                    width: width*0.1,
                    height: height*0.025,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        shape: BoxShape.circle
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox( height: height*0.02),
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
                    child: Image.asset("assets/images/cashdelivery.png",
                      scale: 3,
                    )
                ),
                Container(
                    width: width*0.55,
                    padding: EdgeInsets.only(left: width*0.02),
                    color: Colors.transparent,
                    child: const Text("Cash on Delivery",
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
                    width: width*0.1,
                    height: height*0.025,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        shape: BoxShape.circle
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget priceTotal(double height, double width){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: height*0.05),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Total price",
                style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(112, 32, 30, 1)
                ),
              ),
              SizedBox(height: height*0.005),
              const Text("Ghc70",
                  style: TextStyle(
                      fontFamily: "Raleway",
                      fontSize: 25,
                      // fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(58, 20, 19, 0.9)
                  ))
            ],
          ),
          Expanded(
            child: InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:  (BuildContext context) {
                        return PaymentInfo();
                      },
                    )
                );
              },
              child: Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: height*0.06,
                      width: width*0.45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(112, 32, 30, 1),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: const Text("Enter payment info",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}
