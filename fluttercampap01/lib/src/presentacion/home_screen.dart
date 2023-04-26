
import 'package:flutter/material.dart';
import 'package:fluttercampap01/src/presentacion/widgets/custom_icon.dart';

List<Map<String, dynamic>> list = [
  {
    "image": 'assets/img5.png',
    "title": "Training Plan",
    "color": Colors.blue,
  },
  {
    "image": 'assets/img2.webp',
    "title": "Meal Plan",
    "color": Colors.pink,
  },
  {
    "image": 'assets/img3.png',
    "title": "Supplement Plan",
    "color": Colors.black,
  },
  {
    "image": 'assets/img4.png',
    "title": "Excersise Plan",
    "color": Colors.orange,
  },
  {
    "image": 'assets/img1.png',
    "title": "Gym Plan",
    "color": Colors.teal,
  },
];

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          CustomIcon(),
        ],
        title: Column(
          children: const [
            SizedBox(
              height: 30,
            ),
            Text(
              "Store",
              style: TextStyle(
                fontSize: 28,
                color: Color.fromARGB(255, 9, 42, 90),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: const _CustomBody(),
      bottomNavigationBar: const _Navigation(),
    );
  }
}

class _Navigation extends StatefulWidget {
  const _Navigation();

  @override
  State<_Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<_Navigation> {
  int i = 0;

  set setIndex(int index) {
    i = index;
    setState(() {});
  }

  get getIndex => i;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        print(value);
        setIndex = value;
      },
      currentIndex: getIndex,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.dynamic_feed_outlined),
          label: 'Feed',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart_rounded),
          label: 'Progress',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundColor: Colors.pink,
            radius: 25,
            child: Text(
              "V",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket_rounded),
          label: 'Store',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'Menu',
        ),
      ],
    );
  }
}

class _CustomBody extends StatelessWidget {
  const _CustomBody();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: list[index]['color'],
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset(
                    list[index]['image'],
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    list[index]['title'],
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}