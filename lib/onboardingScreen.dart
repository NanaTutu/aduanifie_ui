import 'package:aduanifie_ui/Utils/onboardingModel.dart';
import 'package:aduanifie_ui/homePage.dart';
import 'package:aduanifie_ui/Auth_Screen.dart';
import 'package:clip_shadow/clip_shadow.dart';
import 'package:flutter/material.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({Key? key}) : super(key: key);

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
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
    return Scaffold(
      body: Stack(
        children: [SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: contents.length,
                    onPageChanged: (int index){
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (_,i){
                      return Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            children:  [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height*0.5,
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: ClipShadow(
                                  clipper: myClipperPath(),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.2),
                                        blurRadius: 4,
                                        offset: Offset(4, 8), // Shadow position
                                      ),
                                    ],
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        image: DecorationImage(
                                            image: AssetImage(contents[i].image),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  )
                                )
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.06),
                              Padding(
                                padding:EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.1),
                                child: Text(contents[i].description,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(58, 20, 19, 0.5)
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          )
                      );
                    },
                  ),
                ),
                Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05),
                      child:Column(
                        children: [
                          InkWell(
                            onTap: (){
                              if(currentIndex!=2){
                                _controller.nextPage(
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.linear
                                );
                              }else{
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder:  (BuildContext context) {
                                      return const AuthPage();
                                    },
                                  )
                                );
                              }
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.5,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(112, 32, 30, 1),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: Text(currentIndex!=2?"Next":"Finish",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: "Raleway",
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.02,
                          ),
                          Visibility(
                            visible: currentIndex!=2?true:false,
                            child: InkWell(
                              onTap: (){
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder:  (BuildContext context) {
                                        return const AuthPage();
                                      },
                                    )
                                );
                              },
                              child: const Text("Skip",
                                style: TextStyle(
                                    color: Color.fromRGBO(112, 32, 30, 1),
                                    fontSize: 20,
                                    fontFamily: "Raleway",
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.55,
            left: MediaQuery.of(context).size.width*0.45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  contents.length,
                      (index) => Container(
                    height: 10,
                    width: currentIndex == index?25:10,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(243, 163, 15, 1)
                    ),
                  )
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.05,
            left: MediaQuery.of(context).size.width*0.05,
            child: RichText(
              text: const TextSpan(
                  text: 'Aduanefie ',
                  style: TextStyle(
                      color: Colors.white,
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
                            fontSize: 40
                        )
                    )
                  ]
              ),
            )
          ),
        ],
      )
    );
  }
}

class myClipperPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    double w = size.width;
    double h = size.height;

    final path = Path();

    path.lineTo(0, h-100);
    path.quadraticBezierTo(
      w*0.5,
      h+100,
      w,
      h-100
    );
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}
