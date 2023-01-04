import 'package:aduanifie_ui/FoodOrderPage.dart';
import 'package:aduanifie_ui/myCart.dart';
import 'package:flutter/material.dart';

import 'Utils/FoodItemModel.dart';
import 'Utils/popularCategoriesModel.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: const Color.fromRGBO(112, 32, 30, 0.2),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: width*0.05),
              child: Column(
                children: [
                  header(height, width),
                  categories(height, width),
                  // SizedBox(height: height*0.02,),
                  // promoWidget(height, width),
                  // promoIndicators(height, width),
                  // SizedBox(height: height*0.03),
                  // popularCategories(height, width),
                  SizedBox(height: height*0.02),
                  Expanded(
                    child: foodList(height, width),
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
      width: width,
      child: Row(
        children: [
          Container(
            child: RichText(
              text: const TextSpan(
                  text: 'Categories ',
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
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: foodItems.length,
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
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:  (BuildContext context) {
                                return FoodOrderPage(
                                  image: foodItems[index].image,
                                  title: foodItems[index].title,
                                  accompaniment: foodItems[index].accompaniment,
                                  price: foodItems[index].price,
                                );
                              },
                            )
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: width*0.05),
                        child:  const Text("View",
                          style: TextStyle(
                              fontFamily: "Raleway",
                              color: Color.fromRGBO(242, 163, 15, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:  (BuildContext context) {
                                  return const MyCart();
                                },
                              )
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: height*0.05,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(112, 32, 30, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)
                            ),
                          ),
                          child:  const Text("Order",
                            style: TextStyle(
                                fontFamily: "Raleway",
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),
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
}
