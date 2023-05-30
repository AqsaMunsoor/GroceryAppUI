import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FruitItems extends StatefulWidget {
  const FruitItems({super.key});

  @override
  State<FruitItems> createState() => _FruitItemsState();
}

class _FruitItemsState extends State<FruitItems> {
  int selectedIndex = 0;

  List<String> choices = [
    'Fruits',
    'Vegetables',
    'Bakery',
    'Drinks',
  ];
  List<String> captions = [
    'Apples',
    'Watermelon',
  ];
  List<String> images = [];
  final List<String> prices = [
    '\$10.00',
    '\$19.00',
  ];
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      height: size.height / 5,
                      width: size.width / 2.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.network(
                          'https://cdn-icons-png.flaticon.com/128/9702/9702221.png',
                          fit: BoxFit.contain,
                          width: 60,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: isFavorite ? Colors.red : Colors.grey,
                          size: 24,
                        ),
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Juicy Strawberry',
                      style: GoogleFonts.albertSans(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$20.65',
                      style: GoogleFonts.albertSans(
                          fontSize: 20, color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      height: size.height / 5,
                      width: size.width / 2.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.network(
                          'https://cdn-icons-png.flaticon.com/128/3143/3143645.png',
                          fit: BoxFit.contain,
                          width: 60,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: isFavorite ? Colors.red : Colors.grey,
                          size: 24,
                        ),
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Organic Bananas',
                      style: GoogleFonts.albertSans(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$15.00',
                      style: GoogleFonts.albertSans(
                          fontSize: 20, color: Colors.green),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        height: size.height / 5,
                        width: size.width / 2.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/128/2079/2079249.png',
                            fit: BoxFit.contain,
                            width: 60,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: isFavorite ? Colors.red : Colors.grey,
                            size: 24,
                          ),
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Organic Avocado',
                        style: GoogleFonts.albertSans(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$23.65',
                        style: GoogleFonts.albertSans(
                            fontSize: 20, color: Colors.green),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        height: size.height / 5,
                        width: size.width / 2.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/128/1791/1791312.png',
                            fit: BoxFit.contain,
                            width: 60,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: isFavorite ? Colors.red : Colors.grey,
                            size: 24,
                          ),
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Oranges',
                        style: GoogleFonts.albertSans(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$18.00',
                        style: GoogleFonts.albertSans(
                            fontSize: 20, color: Colors.green),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        height: size.height / 5,
                        width: size.width / 2.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/128/415/415733.png',
                            fit: BoxFit.contain,
                            width: 60,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: isFavorite ? Colors.red : Colors.grey,
                            size: 24,
                          ),
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Apples',
                        style: GoogleFonts.albertSans(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$10.00',
                        style: GoogleFonts.albertSans(
                            fontSize: 20, color: Colors.green),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        height: size.height / 5,
                        width: size.width / 2.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.network(
                            'https://cdn-icons-png.flaticon.com/128/5582/5582664.png',
                            fit: BoxFit.contain,
                            width: 60,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: isFavorite ? Colors.red : Colors.grey,
                            size: 24,
                          ),
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Watermelon',
                        style: GoogleFonts.albertSans(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$18.00',
                        style: GoogleFonts.albertSans(
                            fontSize: 20, color: Colors.green),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
