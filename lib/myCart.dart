import 'package:aduanifie_ui/CheckoutScreen.dart';
import 'package:aduanifie_ui/PaymentScreen.dart';
import 'package:flutter/material.dart';

import 'Utils/FoodItemModel.dart';
import 'Utils/popularCategoriesModel.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
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
                    // categories(height, width),
                    // SizedBox(height: height*0.02,),
                    // promoWidget(height, width),
                    // promoIndicators(height, width),
                    // SizedBox(height: height*0.03),
                    // popularCategories(height, width),
                    // SizedBox(height: height*0.02),
                    foodList(height, width),
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
                text: 'My Cart',
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
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
                popularCat.length, (index) =>
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: height*0.02),
                    width: width*0.15,
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
                    child: Text(popularCat[index].category,
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
  Widget foodList(double height, double width){
    return Container(
      height: height*0.75,
      padding: EdgeInsets.only(left: width*0.05, right: width*0.05, top: height*0.02),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(112, 32, 30, 0.2),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30)
        )
      ),
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (context, index){
            return Container(
              height: height*0.15,
              width: width,
              margin: EdgeInsets.only(bottom: height*0.001),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.transparent
              ),
              child: FoodItemDetails(height, width, index),
            );
          }
      ),
    );
  }
  Widget FoodItemDetails(double height, double width, int index){
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: width*0.15),
          height: height*0.12,
          width: width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  blurRadius: 5,
                  offset: Offset(-1,0), // Shadow position
                ),
              ]
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: height*0.15,
                width: width,
                padding: EdgeInsets.only(left: width*0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(foodItems[index].title,
                      style: const TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 20,
                          color: Color.fromRGBO(58, 20, 19, 0.9),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(foodItems[index].accompaniment,
                      style: const TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 18,
                        color: Color.fromRGBO(45, 20, 19, 0.6),
                      ),
                    ),
                    SizedBox(height: height*0.015,),
                    Text(foodItems[index].price,
                      style: const TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 20,
                          color: Color.fromRGBO(112, 32, 30, 1),
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: height*0.015,),
                  ],
                ),
              ),
              Container(
                width: width*0.4,
                height: height*0.05,
                decoration: const BoxDecoration(
                  // color: Color.fromRGBO(112, 32, 30, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: width*0.05),
                      height: height*0.05,
                      width: width*0.15,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(112, 32, 30, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)
                        )
                      ),
                      child:  const Text("-",
                        style: TextStyle(
                            fontFamily: "Raleway",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: height*0.05,
                        decoration: const BoxDecoration(

                        ),
                        child:  const Text("0",
                          style: TextStyle(
                              fontFamily: "Raleway",
                              color: Color.fromRGBO(152, 163, 179, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: width*0.05),
                      height: height*0.05,
                      width: width*0.15,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(112, 32, 30, 1),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)
                        ),
                      ),
                      child:  const Text("+",
                        style: TextStyle(
                            fontFamily: "Raleway",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: height*0.12,
          width: width*0.2,
          decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  blurRadius: 10,
                  offset: Offset(5,0), // Shadow position
                ),
              ]
          ),
          child: CircleAvatar(
            backgroundColor: Colors.brown,
            child: Image.asset(foodItems[index].image),
          ),
        )
      ],
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
                        return CheckOut();
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
                      child: const Text("Checkout order",
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
