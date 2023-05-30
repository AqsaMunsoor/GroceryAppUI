import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp_ui/listview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<String> captions = [
    'Fruits',
    'Vegetables',
    'Drink',
    'Bakery',
  ];
  final List<String> images = [
    'https://cdn-icons-png.flaticon.com/128/1147/1147883.png',
    'https://cdn-icons-png.flaticon.com/128/706/706133.png',
    'https://cdn-icons-png.flaticon.com/128/851/851674.png',
    'https://cdn-icons-png.flaticon.com/128/837/837648.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(
            Icons.menu_rounded,
            color: Colors.white,
            size: 35,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Home',
          style: GoogleFonts.albertSans(color: Colors.white, fontSize: 30),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        toolbarHeight: 100,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.white,
                size: 35,
              )),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_rounded),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard_rounded),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
              ),
            ],
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.green,
            iconSize: 40,
            onTap: _onItemTapped,
            elevation: 5),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Categories',
                  style: GoogleFonts.albertSans(
                      fontWeight: FontWeight.w700, fontSize: 25),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'View items',
                      style: GoogleFonts.albertSans(
                          fontSize: 15, color: Colors.grey),
                    ))
              ],
            ),
          ),
          SizedBox(height: 150, child: CategoriesList()),
          TextButton(
              onPressed: () {},
              child: Text(
                'Offers',
                style:
                    GoogleFonts.albertSans(fontSize: 20, color: Colors.green),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Fresh Produce',
                  style: GoogleFonts.albertSans(
                      fontWeight: FontWeight.w700, fontSize: 25),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'View more',
                      style: GoogleFonts.albertSans(
                          fontSize: 15, color: Colors.grey),
                    ))
              ],
            ),
          ),
          const SizedBox(height: 250, child: FreshProduceList()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Snacks',
                  style: GoogleFonts.albertSans(
                      fontWeight: FontWeight.w700, fontSize: 25),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'View more',
                      style: GoogleFonts.albertSans(
                          fontSize: 15, color: Colors.grey),
                    ))
              ],
            ),
          ),
          const SizedBox(height: 250, child: SnacksList())
        ]),
      ),
    );
  }
}
