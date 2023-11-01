import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  final screens = [
    Center(
      child: Text(
        'Home',
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        'Quran',
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        'Prayer',
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        'Tasbeeh',
        style: TextStyle(fontSize: 20),
      ),
    ),
    Center(
      child: Text(
        'More',
        style: TextStyle(fontSize: 20),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Bottom Nav Bar"),
      ),
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          indicatorColor: Colors.white,
          height: 60,
          elevation: 10,
          shadowColor: Colors.red,
          surfaceTintColor: Colors.white,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        ),
        child: NavigationBar(
          // height: 60,
          selectedIndex: index,
          onDestinationSelected: (index) {
            setState(() {
              this.index = index;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
              selectedIcon: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Divider(
                    height: 0,
                    indent: 27,
                    endIndent: 27,
                    color: Colors.green,
                    thickness: 3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
            NavigationDestination(
              icon: Icon(Icons.book),
              label: 'Quran',
              selectedIcon: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Divider(
                    height: 0,
                    indent: 27,
                    endIndent: 27,
                    color: Colors.green,
                    thickness: 3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.book,
                    color: Colors.green,
                  ),
                  Text(
                    'Quran',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
            NavigationDestination(
              icon: Icon(Icons.man),
              label: 'Prayer',
              selectedIcon: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Divider(
                    height: 0,
                    indent: 27,
                    endIndent: 27,
                    color: Colors.green,
                    thickness: 3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.man,
                    color: Colors.green,
                  ),
                  Text(
                    'Man',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
            NavigationDestination(
              icon: Icon(Icons.sports_volleyball_rounded),
              label: 'Tasbeeh',
              selectedIcon: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Divider(
                    height: 0,
                    indent: 27,
                    endIndent: 27,
                    color: Colors.green,
                    thickness: 3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.sports_volleyball_rounded,
                    color: Colors.green,
                  ),
                  Text(
                    'Ball',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
            NavigationDestination(
              icon: Icon(Icons.more),
              label: 'More',
              selectedIcon: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Divider(
                    height: 0,
                    indent: 27,
                    endIndent: 27,
                    color: Colors.green,
                    thickness: 3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.more,
                    color: Colors.green,
                  ),
                  Text(
                    'More',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
