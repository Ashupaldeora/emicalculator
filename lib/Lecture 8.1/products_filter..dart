import 'package:flutter/material.dart';

void main() {
  runApp(products());
}

class products extends StatefulWidget {
  const products({super.key});

  @override
  State<products> createState() => _productsState();
}

class _productsState extends State<products> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfffafafa),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Products Filter",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.apps,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      trackHeight: 3,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8)),
                  child: Slider(
                    min: 0,
                    max: 80000,
                    divisions: 800,
                    thumbColor: Colors.blue,
                    activeColor: Colors.blue,
                    value: val,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    },
                  ),
                ),
              ),
              Text(
                "All Products < ${val.toStringAsFixed(0)}",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              Column(
                children: List.generate(
                    productslist.length,
                    (index) => (productslist[index]['price'] <= val)
                        ? pro(
                            productslist[index]['sr'],
                            productslist[index]['name'],
                            productslist[index]['sub'],
                            productslist[index]['price'])
                        : Container()),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget pro(int sr, String name, String sub, int price) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 3,
                  offset: Offset(0, 2))
            ]),
        child: ListTile(
          leading: Text(
            "$sr",
            style: TextStyle(fontSize: 20),
          ),
          trailing: Text("Rs. $price",
              style: TextStyle(fontSize: 20, letterSpacing: -0.5)),
          title: Text(name,
              style: TextStyle(
                  fontSize: 20,
                  letterSpacing: -0.5,
                  fontWeight: FontWeight.w600)),
          subtitle:
              Text(sub, style: TextStyle(fontSize: 17, letterSpacing: -0.5)),
        ),
      ),
    );
  }
}

double val = 100;

List productslist = [
  {'sr': 1, 'name': 'Watch', 'sub': 'Wearables', 'price': 1000},
  {'sr': 2, 'name': 'T-Shirt', 'sub': 'Wearables', 'price': 520},
  {'sr': 3, 'name': 'jeans', 'sub': 'Wearables', 'price': 840},
  {'sr': 4, 'name': 'Refrigerator', 'sub': 'Electronics', 'price': 18000},
  {'sr': 5, 'name': 'Microwave', 'sub': 'Electronics', 'price': 15000},
  {'sr': 6, 'name': 'Blazer', 'sub': 'Wearables', 'price': 1500},
  {'sr': 7, 'name': 'Laptop', 'sub': 'Electronics', 'price': 70000},
  {'sr': 8, 'name': 'Mobile', 'sub': 'Electronics', 'price': 20000},
  {'sr': 9, 'name': 'Cold-Drinks', 'sub': 'refreshment', 'price': 100},
  {'sr': 10, 'name': 'Earbuds', 'sub': 'Electronics', 'price': 1000},
  {'sr': 11, 'name': 'Iphone', 'sub': 'Electronics', 'price': 60000},
  {'sr': 12, 'name': 'Macbook', 'sub': 'Electronics', 'price': 80000},
];
