import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  _CategoriesListState createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
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
  bool isFavorite = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.all(20),
          width: size.width / 5,
          child: Column(
            children: [
              Container(
                height: size.width / 5.5,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.network(
                    images[index],
                    width: size.width / 4,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                captions[index],
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        );
      },
    );
  }
}

class FreshProduceList extends StatefulWidget {
  const FreshProduceList({super.key});

  @override
  State<FreshProduceList> createState() => _FreshProduceListState();
}

class _FreshProduceListState extends State<FreshProduceList> {
  final List<String> captions = [
    'Organic Hass \nAvocado',
    'Organic Banana \n(each)',
    'Peeled Beetroot \nCarrots',
  ];
  final List<String> prices = [
    '\$23.65',
    '\$15.00',
    '\$16.00',
  ];
  final List<String> images = [
    'https://cdn-icons-png.flaticon.com/128/2079/2079249.png',
    'https://cdn-icons-png.flaticon.com/128/3143/3143645.png',
    'https://cdn-icons-png.flaticon.com/128/2346/2346980.png',
  ];
  List<bool> isFavoriteList = [false, false, false];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: size.width / 3,
                    width: size.width / 2.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Image.network(
                        images[index],
                        fit: BoxFit.contain,
                        width: 50,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: isFavoriteList[index] ? Colors.red : Colors.grey,
                        size: 24,
                      ),
                      onPressed: () {
                        setState(() {
                          isFavoriteList[index] = !isFavoriteList[index];
                        });
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Text(
                captions[index],
                style: GoogleFonts.albertSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                prices[index],
                style: GoogleFonts.albertSans(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SnacksList extends StatefulWidget {
  const SnacksList({super.key});

  @override
  State<SnacksList> createState() => _SnacksListState();
}

class _SnacksListState extends State<SnacksList> {
  final List<String> captions = [
    'Red Lays',
    'Yellow Lays',
    'Red Cheetos',
  ];
  final List<String> prices = [
    '\$23.65',
    '\$15.00',
    '\$16.00',
  ];
  final List<String> images = [
    'https://cdn-icons-png.flaticon.com/128/859/859293.png',
    'https://cdn-icons-png.flaticon.com/128/1261/1261123.png',
    'https://cdn-icons-png.flaticon.com/128/6533/6533979.png',
  ];
  List<bool> isFavoriteList = [false, false, false];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: size.width / 3,
                    width: size.width / 2.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Image.network(
                        images[index],
                        fit: BoxFit.contain,
                        width: 50,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: isFavoriteList[index] ? Colors.red : Colors.grey,
                        size: 24,
                      ),
                      onPressed: () {
                        setState(() {
                          isFavoriteList[index] = !isFavoriteList[index];
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                captions[index],
                style: GoogleFonts.albertSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                prices[index],
                style: GoogleFonts.albertSans(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class RelatedItemsList extends StatefulWidget {
  const RelatedItemsList({super.key});

  @override
  State<RelatedItemsList> createState() => _RelatedItemsListState();
}

class _RelatedItemsListState extends State<RelatedItemsList> {
  int selectedIndex = 0;

  List<String> captions = [
    'Banana',
    'Oranges',
    'Apples',
    'Watermelon',
    'Strawberry',
  ];
  List<String> images = [
    'https://cdn-icons-png.flaticon.com/128/3143/3143645.png',
    'https://cdn-icons-png.flaticon.com/128/1791/1791312.png',
    'https://cdn-icons-png.flaticon.com/128/415/415733.png',
    'https://cdn-icons-png.flaticon.com/128/5582/5582664.png',
    'https://cdn-icons-png.flaticon.com/128/9702/9702221.png',
  ];
  final List<String> prices = [
    '\$15.00',
    '\$18.00',
    '\$10.00',
    '\$18.00',
    '\$20.65',
  ];
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height / 10,
                    width: size.width / 2,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          images[index],
                          fit: BoxFit.contain,
                          width: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              captions[index],
                              style: GoogleFonts.albertSans(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              prices[index],
                              style: GoogleFonts.albertSans(
                                  fontSize: 15, color: Colors.green),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 5,
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: isFavorite ? Colors.red : Colors.grey,
                        size: 20,
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
            ],
          ),
        );
      },
    );
  }
}
