import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var i;
    List<String> town = [
      'Bruxelle',
      'New York',
      'Chicago',
      'London',
      'San Francisco',
      'Berlin',
      'Madrid',
      'tokyo',
      'Mexico',
      'Paris',
      'Nairobi'
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 255),
      body: Container(
        child: SafeArea(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.menu,
                      color: Colors.purple,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Hi, Raphael",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.blueGrey),
                              ),
                              Text(
                                "Find Deals",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(158, 150, 120, 188),
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.purple),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color.fromARGB(255, 208, 208, 223),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search flight, hotels, etc...',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CardCategory(
                          'Flight',
                          Color.fromARGB(255, 95, 105, 232),
                          Icon(Icons.flight, color: Colors.white, size: 30),
                        ),
                        CardCategory(
                          'Hotel',
                          Color.fromARGB(255, 255, 111, 65),
                          Icon(Icons.hotel, color: Colors.white, size: 30),
                        ),
                        CardCategory(
                          'Car',
                          Color.fromARGB(255, 255, 169, 74),
                          Icon(Icons.car_rental_outlined,
                              color: Colors.white, size: 30),
                        ),
                        CardCategory(
                          'More',
                          Color.fromARGB(255, 95, 169, 244),
                          Icon(Icons.more_sharp, color: Colors.white, size: 30),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 35),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Popular places',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 7),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (i = 0; i < 11; i++)
                            MyCard(i.toString(), town[i]),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
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
