// ignore_for_file: deprecated_member_use
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/screen/Hotels/HotelsY.dart';
import 'package:myapp/screen/Hotels/HotelsG.dart';
import 'package:myapp/screen/Hotels/HotelsB.dart';
import 'package:myapp/screen/Hotels/HotelsK.dart';
import 'package:myapp/screen/Restaurants/RestY.dart';
import 'package:myapp/screen/Restaurants/RestG.dart';
import 'package:myapp/screen/Restaurants/RestB.dart';
import 'package:myapp/screen/Restaurants/RestK.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(255, 160, 181, 235),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Uttarakhand Tourism',
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 3500),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const FirstScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Image.asset(
        'splash.gif',
        fit: BoxFit.fill, // cover
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue,
              Colors.purple,
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            'Welcome To Uttarakhand!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.black45,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Yamunotri()),
                  );
                },
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Expanded(
                          child: Image.asset(
                        "assets/yamunotri.jpg",
                        fit: BoxFit.cover,
                      )),
                      const Text(
                        'YAMUNOTRI',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Gangotri()),
                  );
                },
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Expanded(
                          child: Image.asset(
                        "assets/gangotri.jfif",
                        fit: BoxFit.cover,
                      )),
                      const Text(
                        'GANGOTRI',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Kedarnath()),
                  );
                },
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Expanded(
                          child: Image.asset(
                        "assets/kedarnath.jpg",
                        fit: BoxFit.cover,
                      )),
                      const Text(
                        'KEDARNATH',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Badrinath()),
                  );
                },
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Expanded(
                          child: Image.asset(
                        "assets/badrinath.jpg",
                        fit: BoxFit.cover,
                      )),
                      const Text(
                        'BADRINATH',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Yamunotri extends StatelessWidget {
  const Yamunotri({Key? key}) : super(key: key);
  static const String title = 'Yamunotri';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: const MainPageY(title),
      );
}

class Gangotri extends StatelessWidget {
  const Gangotri({Key? key}) : super(key: key);
  static const String title = 'Gangotri';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: const MainPageG(),
      );
}

class Kedarnath extends StatelessWidget {
  const Kedarnath({Key? key}) : super(key: key);
  static const String title = 'Kedarnath';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: const MainPageK(),
      );
}

class Badrinath extends StatelessWidget {
  const Badrinath({Key? key}) : super(key: key);
  static const String title = 'Badrinath';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: const MainPageB(),
      );
}

class MainPageY extends StatelessWidget {
  const MainPageY(String title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.blueGrey,
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 15, 54, 99),
                title: const Text('Yamunotri'),
                automaticallyImplyLeading: false,
              ),
              body: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('hotel.gif'), fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HotelsY()),
                        );
                      },
                      child: const Text(' '),
                    ),
                    margin: const EdgeInsets.all(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('restaurant.gif'),
                          fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RestY()),
                        );
                      },
                      child: const Text(' '),
                    ),
                    margin: const EdgeInsets.all(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('helicopter.gif'),
                          fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        const url = 'https://heliservices.uk.gov.in';

                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url\n';
                        }
                      },
                      child: const Text(''),
                    ),
                    margin: const EdgeInsets.all(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('others.gif'), fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OthersY()),
                        );
                      },
                      child: const Text(' '),
                    ),
                    margin: const EdgeInsets.all(5),
                  ),
                ],
              )),
        ));
  }
}

class MainPageG extends StatelessWidget {
  const MainPageG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.blueGrey,
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 15, 54, 99),
                title: const Text('Gangotri'),
              ),
              body: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('hotel.gif'), fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HotelsG()),
                        );
                      },
                      child: const Text(' '),
                    ),
                    margin: const EdgeInsets.all(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('restaurant.gif'),
                          fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RestG()),
                        );
                      },
                      child: const Text(' '),
                    ),
                    margin: const EdgeInsets.all(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('helicopter.gif'),
                          fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        const url = 'https://heliservices.uk.gov.in';

                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url\n';
                        }
                      },
                      child: const Text(''),
                    ),
                    margin: const EdgeInsets.all(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('others.gif'), fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OthersG()),
                        );
                      },
                      child: const Text(' '),
                    ),
                    margin: const EdgeInsets.all(5),
                  ),
                ],
              )),
        ));
  }
}

class MainPageK extends StatelessWidget {
  const MainPageK({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.blueGrey,
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 15, 54, 99),
                title: const Text('Kedarnath'),
              ),
              body: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('hotel.gif'), fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HotelsK()),
                        );
                      },
                      child: const Text(' '),
                    ),
                    margin: const EdgeInsets.all(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('restaurant.gif'),
                          fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RestK()),
                        );
                      },
                      child: const Text(' '),
                    ),
                    margin: const EdgeInsets.all(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('helicopter.gif'),
                          fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        const url = 'https://heliservices.uk.gov.in';

                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url\n';
                        }
                      },
                      child: const Text(''),
                    ),
                    margin: const EdgeInsets.all(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('others.gif'), fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OthersK()),
                        );
                      },
                      child: const Text(' '),
                    ),
                    margin: const EdgeInsets.all(5),
                  ),
                ],
              )),
        ));
  }
}

class MainPageB extends StatelessWidget {
  const MainPageB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.blueGrey,
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 15, 54, 99),
                title: const Text('Badrinath'),
              ),
              body: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('hotel.gif'), fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HotelsB()),
                        );
                      },
                      child: const Text(' '),
                    ),
                    margin: const EdgeInsets.all(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('restaurant.gif'),
                          fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RestB()),
                        );
                      },
                      child: const Text(' '),
                    ),
                    margin: const EdgeInsets.all(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('helicopter.gif'),
                          fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        const url = 'https://heliservices.uk.gov.in';

                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url\n';
                        }
                      },
                      child: const Text(''),
                    ),
                    margin: const EdgeInsets.all(5),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: const DecorationImage(
                          image: AssetImage('others.gif'), fit: BoxFit.fill),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OthersB()),
                        );
                      },
                      child: const Text(' '),
                    ),
                    margin: const EdgeInsets.all(5),
                  ),
                ],
              )),
        ));
  }
}

class OthersY extends StatelessWidget {
  const OthersY({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Travel Essentials',
        home: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 110, 219, 174),
                  Color.fromARGB(255, 186, 87, 231)
                ]),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: <Widget>[
                    SizedBox(
                      child: Text(
                        'ATMs Nearby',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: const Color.fromARGB(255, 2, 18, 31)),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Axis Bank ATM'),
                        subtitle: Text(
                            'Ward No 6, Ground Floor, Everest Hotel Bhatwari Road, Uttarakhand 249193'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Bank of Baroda ATM'),
                        subtitle: Text('NH-34, Uttarkashi, Uttarakhand 249193'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Canara Bank ATM'),
                        subtitle: Text(
                            'Uttarkashi Bhatwari, Chowk, Uttarkashi, Uttarakhand 249193'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Punjab National Bank ATM'),
                        subtitle: Text(
                            'Syana Chatti, NH-94, Barkot Yamunotri Road, Uttarkashi, Uttarakhand 249171'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('State Bank of India ATM'),
                        subtitle: Text(
                            'NH-123, Vikash Nagar Barkot Road, Uttarkashi, Uttarakhand 249193'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: <Widget>[
                    SizedBox(
                      child: Text(
                        'Medical Services Nearby',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: const Color.fromARGB(255, 2, 18, 31)),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Rajkiya Allopathic Chikitsalaya'),
                        subtitle: Text(
                            'Kharadi, NH-94, Barkot Yamunotri Road, Uttarkashi, Uttarakhand 249171'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Swami Vivekanand Dharmarth Chikitsalay'),
                        subtitle: Text('R643+QXM, Barkot, Uttarakhand 249141'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Govt.Ayurvedic Hospital Khand'),
                        subtitle:
                            Text('P9JW+5GV, Barahat Range, Uttarakhand 249151'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('District Hospital'),
                        subtitle: Text(
                            'Vishwanath Chowk, Uttarkashi, Uttarakhand 249193'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Aditri dental clinic'),
                        subtitle: Text(
                            'Joshiyara Motor Pul, Uttarkashi, Uttarakhand 249193'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: <Widget>[
                    SizedBox(
                        child: Text(
                      'Petrol Pumps Nearby',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: const Color.fromARGB(255, 2, 18, 31)),
                    )),
                    const Card(
                      child: ListTile(
                        title: Text('Krishna Filling Station'),
                        subtitle: Text(
                            'Gangotri Road, Uttarkashi, Uttarakhand 249193'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Panwar Filling Station'),
                        subtitle:
                            Text('PCM9+2C8, Uttarkashi, Uttarakhand 249193'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Vishwnath Filling Station'),
                        subtitle: Text('Matli, Uttarakhand 249193'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title:
                            Text('Yamuna Valley Service Station Petrol Pump'),
                        subtitle: Text(
                            'Naugaon NH-123, Vikasnagar - Barkot Rd, Uttarakhand 249171'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class OthersG extends StatelessWidget {
  const OthersG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Travel Essentials',
        home: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 110, 219, 174),
                  Color.fromARGB(255, 186, 87, 231)
                ]),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: <Widget>[
                    SizedBox(
                      child: Text(
                        'ATMs Nearby',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: const Color.fromARGB(255, 2, 18, 31)),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('HDFC Bank ATM'),
                        subtitle: Text(
                            'Ground Floor Gangotari Marg, Lakdi Tal, Uttarkashi, Uttarakhand 249193'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('State Bank of India ATM'),
                        subtitle: Text(
                            'RJ89+W8, Gangotri Road, Bhatwari, Uttarakhand 249135'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: <Widget>[
                    SizedBox(
                      child: Text(
                        'Medical Services Nearby',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: const Color.fromARGB(255, 2, 18, 31)),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Gangotri Medical Store'),
                        subtitle: Text(
                            'XWWP+4R, Gangotri Rd, Gangotri, Uttarakhand 249135'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: <Widget>[
                    SizedBox(
                      child: Text(
                        'Petrol Pumps Nearby',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: const Color.fromARGB(255, 2, 18, 31)),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Krishna Filling Station'),
                        subtitle:
                            Text('QF39+G6, Barahat Range, Uttarakhand 249193'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('H.P. Gangotri Filling Station'),
                        subtitle: Text('F9H5+V4W, Bagori, Uttarakhand 249132'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('HP Petroleum Station'),
                        subtitle: Text('PCM9+2C, NH-34, Uttarakhand 249193'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class OthersK extends StatelessWidget {
  const OthersK({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Travel Essentials',
        home: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 110, 219, 174),
                  Color.fromARGB(255, 186, 87, 231)
                ]),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: <Widget>[
                    SizedBox(
                      child: Text(
                        'ATMs Nearby',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: const Color.fromARGB(255, 2, 18, 31)),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('HDFC Bank ATM'),
                        subtitle: Text(
                            'Kedarnath Temple Hat Bazar, Uttarakhand 246445'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: <Widget>[
                    SizedBox(
                      child: Text(
                        'Medical Services Nearby',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: const Color.fromARGB(255, 2, 18, 31)),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Falcon Air Ambulance'),
                        subtitle: Text('+91 925909876'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: <Widget>[
                    SizedBox(
                      child: Text(
                        'Petrol Pumps Nearby',
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: const Color.fromARGB(255, 2, 18, 31)),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Chardham Filling Station'),
                        subtitle: Text(
                            'Rudradrayag Kund, Kedarnath Road, Dehradun, 246469'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Local Petrol Pump'),
                        subtitle: Text(
                            'Kedarnath Road, Guptkashi, Uttarakhand 246439'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Tilwara Petrol Pump'),
                        subtitle:
                            Text('Kedarnath Road, Tilwara, Uttarakhand 246448'),
                      ),
                    ),
                    const Card(
                      child: ListTile(
                        title: Text('Kargil Shaheed Service Station'),
                        subtitle: Text(
                            'NH-109, Kedarnath Road, Rudraprayag, Uttarakhand 246421'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class OthersB extends StatelessWidget {
  const OthersB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Essentials',
      home: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 110, 219, 174),
                Color.fromARGB(255, 186, 87, 231)
              ]),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  SizedBox(
                    child: Text(
                      'ATMs Nearby',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: const Color.fromARGB(255, 2, 18, 31)),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('State Bank of India ATM'),
                      subtitle: Text(
                          'PFVR+RG, Mata Murti road, Badrinath, Uttarakhand 246422'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('HDFC Bank ATM'),
                      subtitle: Text(
                          'PFRV+RJ, Ground Floor, near GMVN Guest House, Upper Bazar, Chamoli, Uttarakhand 246443'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  SizedBox(
                    child: Text(
                      'Medical Services Nearby',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: const Color.fromARGB(255, 2, 18, 31)),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('Siddhant Medicos'),
                      subtitle: Text(
                          'C22V+MQ Bedu Bagad, Kedarnath Road, Uttarakhand 246421'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('Gangesh Kedar Memorial Clinic'),
                      subtitle: Text(
                          'HH47+39, Upper Bazar, Joshimath, Uttarakhand 246443'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('Medical Relief Post Bhimbali'),
                      subtitle: Text(
                          'M2QX+VW Saranatok, Gauri Kund - Kedarnath Dham Trekking Way, Uttarakhand 246471'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  SizedBox(
                    child: Text(
                      'Petrol Pumps Nearby',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: const Color.fromARGB(255, 2, 18, 31)),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('Hindustan Petroleum'),
                      subtitle: Text(
                          'C953+62, NH-58, Badrinath Road, Joshimath, Uttarakhand 246422'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title:
                          Text('HP Petrol Pump - Garhwal Motor Owners Union'),
                      subtitle: Text(
                          '7678+22, Badrinath Road, Karanprayag, Dehradun, Uttarakhand, 246444'),
                    ),
                  ),
                  const Card(
                    child: ListTile(
                      title: Text('Alaknanda Automobiles Petrol Pump'),
                      subtitle: Text(
                          '7XQP+3C, NH-58, Main Market, Badrinath Road, Rudraprayag, Uttarakhand 246422'),
                    ),
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
