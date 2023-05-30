import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp_ui/listview.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Organic Hass \nAvocado',
                      style: GoogleFonts.albertSans(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    CounterBottomSheet()
                  ],
                ),
                Text(
                  '\$23.65',
                  style:
                      GoogleFonts.albertSans(fontSize: 20, color: Colors.green),
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: GoogleFonts.albertSans(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Related Items',
                  style: GoogleFonts.albertSans(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 100, child: RelatedItemsList()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text(
                          'Add to Cart',
                          style: GoogleFonts.albertSans(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/128/2079/2079249.png',
              fit: BoxFit.contain,
              width: size.width / 2,
              height: size.height / 4,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showBottomSheet(context);
            },
            child: const Text('Show Bottom Sheet'),
          ),
        ],
      ),
    );
  }
}

class CounterBottomSheet extends StatefulWidget {
  @override
  _CounterBottomSheetState createState() => _CounterBottomSheetState();
}

class _CounterBottomSheetState extends State<CounterBottomSheet> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey.shade100,
      ),
      child: Row(
        children: [
          IconButton(
            iconSize: 30,
            color: Colors.grey,
            icon: const Icon(Icons.remove),
            onPressed: _decrementCounter,
          ),
          Container(
            color: Colors.white,
            height: 45,
            width: 55,
            child: Text(
              '$_counter',
              style: const TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          IconButton(
            iconSize: 30,
            color: Colors.grey,
            icon: const Icon(Icons.add),
            onPressed: _incrementCounter,
          ),
        ],
      ),
    );
  }
}
