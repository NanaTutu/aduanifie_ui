import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodOrderPage extends StatefulWidget {
  String image;
  String title;
  String accompaniment;
  String price;
  FoodOrderPage({Key? key, required this.image, required this.title, required this.accompaniment, required this.price}) : super(key: key);

  @override
  State<FoodOrderPage> createState() => _FoodOrderPageState();
}

class _FoodOrderPageState extends State<FoodOrderPage> {
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
                  color: Color.fromRGBO(112, 32, 30, 1)
                ),
              ),
              Container(
                height: height*0.8,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                    )
                ),
              ),
              Container(
                height: height*0.8,
                decoration: const BoxDecoration(
                    color: const Color.fromRGBO(112, 32, 30, 0.17),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                    )
                ),
              ),
              Container(
                height: height*0.87,
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
                              color: Color.fromRGBO(0, 0, 0, 0.5),
                              blurRadius: 20,
                              offset: Offset(0, 0), // Shadow position
                            ),
                          ]
                      ),
                      child: CircleAvatar(
                        child: Image.asset(widget.image),
                      ),
                    ),
                    SizedBox(height: height*0.03,),
                    foodDetails(height, width, widget.title, widget.accompaniment),
                    SizedBox(height: height*0.05,),
                    foodQuantity(height, width, widget.price),
                    SizedBox(height: height*0.05,),
                    foodIngredients(height, width),
                    SizedBox(height: height*0.05,),
                    extraOptions(height, width),
                    Expanded(
                      child: totalPrice(height, width)
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }

  Widget foodDetails(double height, double width, String title, String accompaniment){
    return Container(
      width: width,
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(title,
            style: const TextStyle(
                fontFamily: "Raleway",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromRGBO(58, 20, 19, 0.9)
            ),
          ),
          SizedBox(height: height*0.002),
          Text(accompaniment,
            style: const TextStyle(
                fontFamily: "Raleway",
                fontSize: 20,
                color: Color.fromRGBO(45, 20, 19, 0.9)
            ),
          ),
        ],
      )
    );
  }
  Widget foodQuantity(double height, double width, String price){
    return Container(
      height: height*0.05,
      width: width*0.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: width*0.2,
            child: const Text("Ghc20",
              style: TextStyle(
                fontFamily: "Raleway",
                color: Color.fromRGBO(112, 32, 30, 1),
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: height*0.05,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(242, 163, 15, 1),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: height*0.05,
                    width: width*0.1,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.transparent
                    ),
                    child: const Text("-",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Raleway",
                        fontSize: 40
                      ),
                    ),
                  ),
                  Container(
                    height: height*0.05,
                    width: width*0.08,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                    ),
                    child: const Text("1",
                      style: TextStyle(
                          color: Color.fromRGBO(58, 20, 19, 1),
                          fontFamily: "Raleway",
                          fontSize:25
                      ),
                    ),
                  ),
                  Container(
                    height: height*0.05,
                    width: width*0.1,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.transparent
                    ),
                    child: const Text("+",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Raleway",
                          fontSize: 40
                      ),
                    ),
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
  Widget foodIngredients(double height, double width){
    return Container(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          const Text("Ingredients",
            style: TextStyle(
              color: Color.fromRGBO(58, 20, 19, 0.9),
              fontFamily: "Raleway",
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: height*0.002),
          const Text("2 balls of Banku, Okro, Wele, Fish, Crab, Agushie",
            style: TextStyle(
                color: Color.fromRGBO(58, 20, 19, 0.9),
                fontFamily: "Raleway",
                fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
  Widget extraOptions(double height, double width){
    return Container(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text("Extra Options",
            style: TextStyle(
                color: Color.fromRGBO(58, 20, 19, 0.9),
                fontFamily: "Raleway",
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: height*0.03,),
          Container(
            height: height*0.06,
            width: width,
            padding: EdgeInsets.symmetric(horizontal: height*0.02),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                 BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 20,
                    offset: Offset(0, 1), // Shadow position
                  ),
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: width*0.7,
                  height: height*0.06,
                  decoration: const BoxDecoration(
                    color: Colors.transparent
                  ),
                  child: Row(
                    children: [
                      Container(
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
                      const Text("2 extra balls of banku",
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(45, 20, 19, 0.8)
                        ),
                      )
                    ],
                  ),
                ),
                const Text("Ghc5",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Raleway",
                      color: Color.fromRGBO(112, 32, 30, 1)
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: height*0.03,),
          Container(
            height: height*0.06,
            width: width,
            padding: EdgeInsets.symmetric(horizontal: height*0.02),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 20,
                    offset: Offset(0, 1), // Shadow position
                  ),
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: width*0.7,
                  height: height*0.06,
                  decoration: const BoxDecoration(
                      color: Colors.transparent
                  ),
                  child: Row(
                    children: [
                      Container(
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
                      const Text("2 extra balls of banku",
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(45, 20, 19, 0.8)
                        ),
                      )
                    ],
                  ),
                ),
                const Text("Ghc5",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Raleway",
                      color: Color.fromRGBO(112, 32, 30, 1)
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: height*0.03,),
          Container(
            height: height*0.06,
            width: width,
            padding: EdgeInsets.symmetric(horizontal: height*0.02),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 20,
                    offset: Offset(0, 1), // Shadow position
                  ),
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: width*0.7,
                  height: height*0.06,
                  decoration: const BoxDecoration(
                      color: Colors.transparent
                  ),
                  child: Row(
                    children: [
                      Container(
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
                      const Text("2 extra balls of banku",
                        style: TextStyle(
                            fontSize: 22,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(45, 20, 19, 0.8)
                        ),
                      )
                    ],
                  ),
                ),
                const Text("Ghc5",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Raleway",
                      color: Color.fromRGBO(112, 32, 30, 1)
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget totalPrice(double height, double width){
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Total price",
                style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(112, 32, 30, 1)
                ),
              ),
              SizedBox(height: height*0.005),
              const Text("Ghc25.00",
                  style: TextStyle(
                      fontFamily: "Raleway",
                      fontSize: 25,
                      // fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(58, 20, 19, 0.9)
                  ))
            ],
          ),
          Expanded(
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
                    child: const Text("Add to cart",
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
        ],
      ),
    );
  }

}
