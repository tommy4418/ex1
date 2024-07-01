import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ExampleScreen(),
    );
  }
}

class ExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EXERCISE 1',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: GoogleFonts.lato().fontFamily,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 4, 12, 36),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 5, 37, 97),
        ),
        child: Center(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.map, color: Colors.white, size: 30.0),
                title: Text(
                  'Map',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontFamily: GoogleFonts.lato().fontFamily,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 24.0,
                  ),
                ),
                onTap: () {
                  print('Map tapped');
                },
              ),
              ListTile(
                leading:
                    Icon(Icons.photo_album, color: Colors.white, size: 30.0),
                title: Text(
                  'Album',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontFamily: GoogleFonts.lato().fontFamily,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 24.0,
                  ),
                ),
                onTap: () {
                  print('Album tapped');
                },
              ),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.white, size: 30.0),
                title: Text(
                  'Phone',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontFamily: GoogleFonts.lato().fontFamily,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 24.0,
                  ),
                ),
                onTap: () {
                  print('Phone tapped');
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Floating action button pressed');
        },
        child: Icon(Icons.navigation, color: Colors.white, size: 30.0),
        backgroundColor: Color.fromARGB(255, 197, 156, 43),
      ),
    );
  }
}
