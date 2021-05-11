import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String ddvalue = '1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Menu',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                wordSpacing: 5)),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushNamed(context, 'main');
            }),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              cardsMenu('meal', 'Meal'),
              cardsMenu('pizza', 'Pizza'),
              cardsMenu('burger', 'Burger'),
              cardsMenu('sushi', 'Sushi'),
              cardsMenu('fish', 'Fish'),
              cardsMenu('fries', 'Fries'),
              cardsMenu('salad', 'Salad'),
              cardsMenu('drinks', 'Drinks'),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardsMenu(image, text) {
    return Card(
      margin: EdgeInsets.only(bottom:10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      shadowColor: Colors.black26,
      elevation: 15,
      color: Colors.orange,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  child: Container(
                    margin: EdgeInsets.all(16),
                    alignment: Alignment.center,
                    height: 150,
                    width: 230,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Image.asset(
                      'images/$image.png',
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                DropdownButton<String>(
                  dropdownColor: Colors.white30,
                  iconSize: 20,
                  value: ddvalue,
                  icon: Icon(Icons.arrow_drop_down),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  underline: Container(
                    height: 2,
                    color: Colors.white70,
                  ),
                  onChanged: (String change) {
                    setState(() {
                      ddvalue = change;
                    });
                  },
                  items: <String>['1', '2', '3', '4']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 10),
              alignment: Alignment.bottomLeft,
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 5,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
