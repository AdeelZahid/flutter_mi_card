import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primaryColor: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text(
          "ANDROPPLE",
          style: TextStyle(
              letterSpacing: 2.6,
              fontWeight: FontWeight.w400,
              fontFamily: 'Source Sans Pro'),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('Assets/images/adeel.jpg'),
            radius: 50.0,
          ),
          Text(
            'Andropple Lab',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 36.0,
              color: Colors.white,
              fontWeight: FontWeight.w100,
              letterSpacing: 1.4,
            ),
          ),
          Text(
            'FLUTTER DEVELOPER',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              fontSize: 20.0,
              letterSpacing: 2.4,
              color: Colors.teal[100],
            ),
          ),
          SizedBox(
            width: 150.0,
            height: 30.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            // padding: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                size: 30.0,
                color: Colors.teal,
              ),
              title: Text(
                '+92 302 3322433',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Colors.teal,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: ListTile(
              leading: Icon(
                Icons.email,
                size: 30.0,
                color: Colors.teal[400],
              ),
              title: Text(
                'andropplelab1@gmail.com',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Colors.teal,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
