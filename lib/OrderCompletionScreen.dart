import 'package:flutter/material.dart';

class CompletionPage extends StatefulWidget {
  CompletionPage({Key? key}) : super(key: key);

  @override
  State<CompletionPage> createState() => _CompletionPageState();
}

class _CompletionPageState extends State<CompletionPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: width*0.05),
              height: height*0.45,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Purchase successful", style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(112, 32, 30, 1)
                  ),),
                  SizedBox(height: height*0.02,),
                  const Text("We have received your order. You can keep track of your order as we prepare to deliver.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(58, 20, 19, 0.9)
                    ),
                  ),
                  SizedBox(height: height*0.05,),
                  const Text("Track Order", style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(242, 163, 15, 1)
                  ),),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/images/completion_vector.png"),
                    height: height*0.4,
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
