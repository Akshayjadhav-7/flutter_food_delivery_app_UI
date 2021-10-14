// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/home_page.dart';


class StartPage extends StatefulWidget {
  // const StartPage({required Key key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/starter-image.jpg'),
                fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.center, colors: [
              Colors.black.withOpacity(0.7),
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.2),
            ])),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: () {
                          print('button pressed');
                        },
                        icon: Icon(
                          Icons.location_pin,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset('assets/images/food_delivery.png'),
                          ),
                        ),
                      ),
                      Container(

                        child: Text(
                          'Order Food Online via. CraveYum',
                          style: TextStyle(
                              fontSize: 45,
                              color: Colors.white,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 8.5,
                        child: Text(
                          'See Restaurants near by around your Location',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.9), fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient:
                              // ignore: prefer_const_literals_to_create_immutables
                              LinearGradient(
                                  colors: [Colors.yellow, Colors.orange]),
                        ),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                          },
                          child: Text(
                            'Start Here',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                          child: Text(
                        'Now Delivering 24/7 at your Doorstep',
                        style: TextStyle(color: Colors.white.withOpacity(0.9)),
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
