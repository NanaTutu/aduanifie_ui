import 'package:aduanifie_ui/Utils/FoodItemModel.dart';
import 'package:aduanifie_ui/Utils/popularCategoriesModel.dart';
import 'package:aduanifie_ui/Utils/promoModel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex=0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


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
                  previousOrder(height, width),
                  SizedBox(height: height*0.02,),
                  promoWidget(height, width),
                  promoIndicators(height, width),
                  SizedBox(height: height*0.03),
                  popularCategories(height, width),
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

  Widget foodList(double height, double width){
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 2,
      itemBuilder: (context, index){
        return Container(
          height: height*0.15,
          width: width,
          margin: EdgeInsets.only(bottom: height*0.03),
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
          height: height*0.15,
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
                padding: EdgeInsets.only(left: width*0.15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(foodItems[index].title,
                      style: const TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 24,
                          color: Color.fromRGBO(58, 20, 19, 0.9),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(foodItems[index].accompaniment,
                      style: const TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 22,
                          color: Color.fromRGBO(45, 20, 19, 0.6),
                      ),
                    ),
                    SizedBox(height: height*0.015,),
                    Text(foodItems[index].price,
                      style: const TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 22,
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
                      child:  const Text("View",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          color: Color.fromRGBO(242, 163, 15, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                    ),
                    Expanded(
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: height*0.15,
          width: width*0.25,
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

  Widget popularCategories(double height, double width){
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Popular Categories", style: TextStyle(
              color: Color.fromRGBO(112, 32, 30, 1),
              fontFamily: "Raleway",
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),),
          SizedBox(height: height*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                popularCat.length, (index) =>
                Container(
                  margin: EdgeInsets.only(right: height*0.01),
                  height: height*0.14,
                  width: width*0.2,
                  decoration: BoxDecoration(
                    color: index == 0? const Color.fromRGBO(242, 163, 15, 1):Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: index == 0?const [
                      BoxShadow(
                        color: Color.fromRGBO(242, 163, 15, 1),
                        blurRadius: 10,
                        offset: Offset(0, 0), // Shadow position
                      ),
                    ]:const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        blurRadius: 10,
                        offset: Offset(0,0), // Shadow position
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Image.asset(
                          popularCat[index].image,
                        ),
                      ),
                      Text(popularCat[index].category,
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.bold,
                          color: index==0?Colors.white:const Color.fromRGBO(45, 20, 19, 0.9)
                        ),
                      )
                    ],
                  ),
                )
            ),
          ),
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
                  text: 'Aduanefie ',
                  style: TextStyle(
                      color:  Color.fromRGBO(112, 32, 30, 1),
                      fontFamily: "Montserrat",
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: '.',
                        style: TextStyle(
                            color: Color.fromRGBO(242, 163, 15, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                        )
                    )
                  ]
              ),
            ),
          ),
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.shopping_cart_outlined,
                    size: 25,
                    color: Color.fromRGBO(242, 163, 15, 1),
                  ),
                  SizedBox(width: width*0.03),
                  const Icon(
                    Icons.search,
                    size: 25,
                    color: Color.fromRGBO(242, 163, 15, 1),
                  ),
                  SizedBox(width: width*0.03),
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

  Widget previousOrder(double height, double width){
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Previous Order", style: TextStyle(
              color: Color.fromRGBO(112, 32, 30, 1),
              fontFamily: "Raleway",
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),),
          SizedBox(height: height*0.01,),
          Container(
            height: height*0.1,
            width: width,
            padding: EdgeInsets.symmetric(horizontal: width*0.05),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  blurRadius: 2,
                  offset: Offset(1, 1), // Shadow position
                ),
              ],
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  child: Image.asset(
                    "assets/images/fufuGoat.png",
                  ),
                ),
                SizedBox(width: width*0.02,),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Fufu & Goat Soup", style: TextStyle(
                          color: Color.fromRGBO(45, 20, 19, 0.7),
                          fontFamily: "Raleway",
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                      Text("Ghc 20.00", style: TextStyle(
                          color: Color.fromRGBO(45, 20, 19, 0.7),
                          fontFamily: "Raleway",
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("Reorder", style: TextStyle(
                            color: Color.fromRGBO(242, 163, 15, 1),
                            fontFamily: "Raleway",
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),)
                      ],
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget promoWidget(double height, double width){
    return Container(
      height: height*0.2,
      width: width,
      child: PageView.builder(
        controller: _controller,
        itemCount: promos.length,
        onPageChanged: (int index){
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (_,i){
          return Column(
            children: [
              Container(
                height: height*0.2,
                width: width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(promos[i].image),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget promoIndicators(double height, double width){
    return Container(
      width: width,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            promos.length,
                (index) => Container(
              height: 10,
              width: currentIndex == index?width*0.15:10,
              margin: const EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: currentIndex == index?const Color.fromRGBO(243, 163, 15, 1):Colors.grey
              ),
            )
        ),
      ),
    );
  }
}