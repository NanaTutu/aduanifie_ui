import 'package:flutter/material.dart';

import 'Utils/FoodItemModel.dart';
import 'Utils/popularCategoriesModel.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                      tabBar(height, width),
                      SizedBox(height: height*0.02,),
                      tabView(height, width),
                      // SizedBox(height: height*0.02,),
                      // promoWidget(height, width),
                      // promoIndicators(height, width),
                      // SizedBox(height: height*0.03),
                      // popularCategories(height, width),
                      // SizedBox(height: height*0.02),
                      // Expanded(
                      //   child: foodList(height, width),
                      // )
                    ],
                  ),
                )
              ],
            ),
          )
      )
    );
  }

  Widget tabView(double height, double width){
    return Container(
      height: height*0.75,
      color: Colors.transparent,
      child: TabBarView(
        children: [
          Container(
            child: ListView.builder(
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
            ),
          ),
          Container(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 1,
                itemBuilder: (context, index){
                  return Container(
                    height: height*0.15,
                    width: width,
                    margin: EdgeInsets.only(bottom: height*0.001),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.transparent
                    ),
                    child: InProgressdOrder(height, width, index),
                  );
                }
            ),
          ),
          Container(
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
                    child: CompletedOrder(height, width, index),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }

  Widget tabBar(double height, double width){
    return Container(
      height: height*0.05,
      width: width,
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
            text: 'All',
          ),
          Tab(
            text: "In Progress",
          ),
          Tab(
            text: "Past",
          )
        ],
      ),
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
                text: 'My Orders',
                style: TextStyle(
                    color:  Color.fromRGBO(112, 32, 30, 1),
                    fontFamily: "Raleway",
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 20,
                    child: Image.asset(
                      "assets/images/profilepicture.png",
                    ),
                  ),
                ],
              )
          )
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
          child: Row(
            children: [
              Container(
                height: height*0.15,
                width: width*0.5,
                padding: EdgeInsets.only(left: width*0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(foodItems[index].title,
                      style: const TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 18,
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
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // const Text("Completed",
                      //   style: TextStyle(
                      //     color: Color.fromRGBO(92, 195, 6, 1),
                      //     fontFamily: "Raleway",
                      //     fontSize: 16,
                      //     fontWeight: FontWeight.bold
                      //   ),
                      // ),
                      // SizedBox(height: height*0.035,),
                      Container(
                        alignment: Alignment.center,
                        height: height*0.05,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(112, 32, 30, 1),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)
                          ),
                        ),
                        child:  const Text("View",
                          style: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
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
  Widget CompletedOrder(double height, double width, int index){
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
          child: Row(
            children: [
              Container(
                height: height*0.15,
                width: width*0.5,
                padding: EdgeInsets.only(left: width*0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(foodItems[index].title,
                      style: const TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 18,
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
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Completed",
                        style: TextStyle(
                            color: Color.fromRGBO(92, 195, 6, 1),
                            fontFamily: "Raleway",
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: height*0.035,),
                      Container(
                        alignment: Alignment.center,
                        height: height*0.05,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(112, 32, 30, 1),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)
                          ),
                        ),
                        child:  const Text("View",
                          style: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
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
  Widget InProgressdOrder(double height, double width, int index){
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
          child: Row(
            children: [
              Container(
                height: height*0.15,
                width: width*0.5,
                padding: EdgeInsets.only(left: width*0.08),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(foodItems[index].title,
                      style: const TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 18,
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
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("ETA: 9 mins",
                        style: TextStyle(
                            color: Color.fromRGBO(92, 195, 6, 1),
                            fontFamily: "Raleway",
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: height*0.035,),
                      Container(
                        alignment: Alignment.center,
                        height: height*0.05,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(112, 32, 30, 1),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)
                          ),
                        ),
                        child:  const Text("View",
                          style: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
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
