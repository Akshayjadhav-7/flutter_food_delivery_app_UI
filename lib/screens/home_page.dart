import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        elevation: 0.0,
        actions: [
          // ignore: prefer_const_constructors
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(10.0),
              // ignore: prefer_const_constructors
              child: Text(
                'CraveYum',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            Container(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                        onTap: () {
                          print('Pizza pressed');
                        },
                        child: makeCategory(isActive: true, title: 'Pizza')),
                    makeCategory(isActive: false, title: 'Burgers'),
                    makeCategory(isActive: false, title: 'Kebabs'),
                    makeCategory(isActive: false, title: 'Desert'),
                    makeCategory(isActive: false, title: 'Salad'),
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
            ),
            SizedBox(
              height: 10,
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Select Items',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    makeItems(
                        image: 'assets/images/one.jpg',
                        price: '\$15',
                        title: 'Veg Pizza'),
                    makeItems(
                        image: 'assets/images/two.jpg',
                        price: '\$24',
                        title: 'NonVeg Pizza'),
                    makeItems(
                        image: 'assets/images/three.jpg',
                        price: '\$12',
                        title: 'Kebab'),
                    makeItems(
                        image: 'assets/images/starter-image.jpg',
                        price: '\$10',
                        title: 'Salad'),
                    makeItems(
                        image: 'assets/images/one.jpg',
                        price: '\$18',
                        title: 'Paneer Tikka Pizza'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeCategory({isActive, title}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isActive ? Colors.yellow[700] : Colors.white,
        ),
        child: Align(
            child: Text(
          title,
          style: TextStyle(
              color: isActive ? Colors.white : Colors.grey[500],
              fontSize: 18,
              fontWeight: isActive ? FontWeight.bold : FontWeight.w500),
        )),
      ),
    );
  }

  Widget makeItems({image, price, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: GestureDetector(
        onTap: () {
          print('Tile Pressed');
        },
        child: Container(
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.2,
                0.9
              ], colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.3),
              ]),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        title,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: FloatingActionButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor: Colors.grey,
                              elevation: 0.0,
                              child: Center(
                                  child: Icon(
                                Icons.minimize,
                                size: 20,
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '1',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: FloatingActionButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 0.0,
                              backgroundColor: Colors.grey,
                              child: Icon(Icons.add),
                            ),
                          ),
                        ],
                      )
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
