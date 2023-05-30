import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp_ui/fruititems.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int selectedIndex = 0;

  List<String> choices = [
    'Fruits',
    'Vegetables',
    'Bakery',
    'Drinks',
  ];
  List<String> captions = [
    'Juicy Strawberry',
    'Organic Banana',
    'Organic Avocado',
    'Orange',
    'Apples',
    'Watermelon',
  ];
  List<String> images = [
    'https://cdn-icons-png.flaticon.com/128/9702/9702221.png',
    'https://cdn-icons-png.flaticon.com/128/3143/3143645.png',
    'https://cdn-icons-png.flaticon.com/128/2079/2079249.png',
    'https://cdn-icons-png.flaticon.com/128/1791/1791312.png',
    'https://cdn-icons-png.flaticon.com/128/415/415733.png',
    'https://cdn-icons-png.flaticon.com/128/5582/5582664.png',
  ];
  final List<String> prices = [
    '\$20.65',
    '\$15.00',
    '\$23.65',
    '\$18.00',
    '\$10.00',
    '\$19.00',
  ];
  List<bool> isFavoriteList = [false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 35,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.black,
                size: 35,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List<Widget>.generate(choices.length, (int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ChoiceChip(
                      label: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(choices[index],
                            style: GoogleFonts.albertSans(fontSize: 15)),
                      ),
                      selected: selectedIndex == index,
                      selectedColor: Colors.green,
                      onSelected: (bool selected) {
                        setState(() {
                          selectedIndex = selected ? index : -1;
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Item',
                    style: GoogleFonts.albertSans(
                        fontWeight: FontWeight.w700, fontSize: 25),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_alt_sharp,
                        color: Colors.grey,
                      ))
                ],
              ),
            ),
            const FruitItems()
          ],
        ),
      ),
    );
  }
}
