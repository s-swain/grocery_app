import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/buttons/recent_bought_button.dart';
import 'package:grocery_app/buttons/scroll_buttons.dart';
import 'package:grocery_app/screens/orange_screen.dart';

const double iconWidth = 35.0;
const double iconHeight = 35.0;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 12.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(
                'images/cart.png',
              ),
              width: iconWidth,
              height: iconHeight,
              filterQuality: FilterQuality.none,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(
                'images/home_icon.png',
              ),
              width: iconWidth,
              height: iconHeight,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(
                'images/menu.png',
              ),
              width: iconWidth,
              height: iconHeight,
            ),
            label: '',
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(
          left: 10.0,
          top: 29.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Welcome',
              style: TextStyle(
                color: Colors.orangeAccent,
                fontWeight: FontWeight.w800,
                fontSize: 25.0,
              ),
            ),
            Row(
              children: const <Widget>[
                Text(
                  'Swadhin Swain',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 35.0,
                  ),
                ),
                SizedBox(
                  width: 90.0,
                ),
                Image(
                  image: AssetImage('images/user.png'),
                  width: 60.0,
                  height: 60.0,
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Categories',
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: const <Widget>[
                Text(
                  'All',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w800,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Fruit',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w800,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Veggies',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w800,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Meat',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w800,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Diary',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w800,
                    fontSize: 17.0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              height: 160.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OrangeScreen(),
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    constraints: const BoxConstraints.tightFor(
                      width: 150.0,
                    ),
                    fillColor: const Color(0xFFF5F5F5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Image(
                          image: AssetImage('images/orange.png'),
                          height: 80.0,
                          width: 80.0,
                        ),
                        Text(
                          'Orange',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 25.0,
                          ),
                        ),
                        Text(
                          'Fruit',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          '₹ 100',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const ScrollButtons(
                      buttonImage: 'images/broccoli.png',
                      buttonName: 'Broccoli',
                      groceryType: 'Vegetable',
                      groceryPrice: '₹ 120'),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const ScrollButtons(
                      buttonImage: 'images/mango.png',
                      buttonName: 'Mango',
                      groceryType: 'Fruit',
                      groceryPrice: '₹ 300'),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const ScrollButtons(
                      buttonImage: 'images/cabbage.png',
                      buttonName: 'Cabbage',
                      groceryType: 'Vegetable',
                      groceryPrice: '₹ 70'),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const ScrollButtons(
                      buttonImage: 'images/egg.png',
                      buttonName: 'Eggs',
                      groceryType: 'Non-Veg',
                      groceryPrice: '₹ 10'),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const ScrollButtons(
                      buttonImage: 'images/banana.png',
                      buttonName: 'Banana',
                      groceryType: 'Fruit',
                      groceryPrice: '₹ 30'),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              'Recently Bought',
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  RecentButtons(
                      buttonImage: 'images/Potato.png',
                      buttonName: 'Potato',
                      groceryAmount: '2 Kg',
                      groceryPrice: '₹ 30'),
                  SizedBox(
                    width: 15.0,
                  ),
                  RecentButtons(
                      buttonImage: 'images/carrot.png',
                      buttonName: 'Carrot',
                      groceryAmount: '3 Kg',
                      groceryPrice: '₹ 50'),
                  SizedBox(
                    width: 15.0,
                  ),
                  RecentButtons(
                      buttonImage: 'images/Cheese.png',
                      buttonName: 'Cheese',
                      groceryAmount: '500 gms',
                      groceryPrice: '₹ 300'),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
