import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        // padding: const EdgeInsets.only(
        //   left: 10.0,
        //   right: 10.0,
        //   top: 10.0,
        //   bottom: 10.0,
        // ),
        height: 900,
        width: 500,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: 200.0,
              height: 200.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/welcome_image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 400.0,
              child: Container(
                width: 420.0,
                height: 900.0,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(200),
                      topRight: Radius.circular(200),
                    )),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 70.0,
                    ),
                    Container(
                      width: 240.0,
                      height: 70.0,
                      child: const Text(
                        'Buy Fresh Grocery From Us.',
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      shape: const RoundedRectangleBorder(),
                      constraints: const BoxConstraints.tightFor(
                        width: 200.0,
                        height: 60.0,
                      ),
                      child: Container(
                        width: 200.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: const LinearGradient(
                            colors: <Color>[
                              Color(0xFF8ad25f),
                              Color(0xFF60c467),
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Get Started',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
