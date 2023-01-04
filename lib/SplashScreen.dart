import 'package:aduanifie_ui/onboardingScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void onTimerFinished() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (BuildContext context) {
        return const OnbordingScreen();
      },
    ));
  }

  @override
  void initState() {
    // TODO: implement initState
    const delay = Duration(seconds: 8);
    Future.delayed(delay, () => onTimerFinished());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/SplashScreen.png'),
                    fit: BoxFit.cover
                )
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: const TextSpan(
                      text: 'Aduanefie ',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Montserrat",
                          fontSize: 35,
                          fontWeight: FontWeight.bold
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '.',
                            style: TextStyle(
                                color: Color.fromRGBO(242, 163, 15, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 70
                            )
                        )
                      ]
                  ),
                ),
                const Text("Your online local chopbar",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.white,
                    fontSize: 25
                  ),
                )
              ],
            )
          ),
          // Container(
          //   padding: const EdgeInsets.only(bottom: 20),
          //  child: Column(
          //    mainAxisAlignment: MainAxisAlignment.end,
          //    children: [
          //      RichText(
          //        text: const TextSpan(
          //            text: 'Designed by ',
          //            style: TextStyle(
          //                color: Colors.white,
          //                fontFamily: "Montserrat",
          //                fontSize: 14,
          //                fontStyle: FontStyle.italic
          //            ),
          //            children: <TextSpan>[
          //              TextSpan(
          //                  text: 'Jacqueline Asare-Dartey',
          //                  style: TextStyle(
          //                      color: Color.fromRGBO(242, 163, 15, 1),
          //                      fontSize: 16,
          //                       fontStyle: FontStyle.normal
          //                  )
          //              )
          //            ]
          //        ),
          //      ),
          //      const SizedBox(height: 10,),
          //      RichText(
          //        text: const TextSpan(
          //            text: 'Powered by ',
          //            style: TextStyle(
          //                color: Colors.white,
          //                fontFamily: "Raleway",
          //                fontSize: 14,
          //                fontStyle: FontStyle.italic
          //            ),
          //            children: <TextSpan>[
          //              TextSpan(
          //                  text: 'Benjamin Ohene-Affih',
          //                  style: TextStyle(
          //                      color: Color.fromRGBO(242, 163, 15, 1),
          //                      fontSize: 16,
          //                      fontStyle: FontStyle.normal
          //                  )
          //              )
          //            ]
          //        ),
          //      ),
          //    ],
          //  ),
          // )
        ],
      ),
    );
  }
}
