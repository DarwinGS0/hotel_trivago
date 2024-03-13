import 'package:flutter/material.dart';
import 'package:hotel_trivago/components/travelcard.dart';
//import 'package:hotel/componenets/travelcard.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TravelApp(),
  ));
}

class TravelApp extends StatefulWidget {
  const TravelApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xFFF6F7FF),
        title: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                )),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Bienvenidos al hotel",
              style: TextStyle(
                color: Colors.black,
                fontSize: 32.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Text(
              "lugar de destino",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w200,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: const Color(0x55434343),
              child: const TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Buscar Hoteles, vuelos...",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            DefaultTabController(
              length: 3,
              child: Expanded(
                  child: Column(
                children: [
                  const TabBar(
                    indicatorColor: Color(0xFFFE8C68),
                    unselectedLabelColor: Color(0xFF555555),
                    labelColor: Color(0xFFFE8C68),
                    labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                    tabs: [
                      Tab(
                        text: "Tendencias",
                      ),
                      Tab(
                        text: "Promociones",
                      ),
                      Tab(
                        text: "Favoritos",
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    height: 300.0,
                    child: TabBarView(
                      children: [
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              travelCard('assets/Luxury.jpeg', 'Luxury',
                                  'Caroline', 3),
                              travelCard('assets/Italy.jpg', 'Plaza Italy',
                                  'Italy', 4),
                              travelCard('assets/Suite.jpeg',
                                  'Comfort Suites Odessa', 'England', 3),
                              travelCard('assets/suiza.jpeg', 'Beau-Rivage',
                                  'Suiza', 5)
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              travelCard('assets/mexico.jpeg',
                                  'Mauritania Tanger', 'Mexico', 2),
                              travelCard('assets/argentina.jpeg',
                                  'Kelta Puerto Iguazu', 'Argentina', 3),
                              travelCard('assets/honduras.jpeg', 'Hyatt Place',
                                  'Honduran', 3),
                            ],
                          ),
                        ),
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFB7B7B7),
        selectedItemColor: Color.fromARGB(255, 33, 91, 218),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Marcadores',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Ubicación',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificaciones',
          ),
        ],
      ),
    );
  }
}
