import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Count.it',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var count = 0;

  void counter() {
    setState(() {
      count++;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Counter Application',
          style: TextStyle(
              fontFamily: 'Techy',
              color: Colors.lightGreenAccent,
              fontSize: 24,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_white_pattern.png',),
                opacity: 0.06,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // const Positioned(top: 70,
          //   child: Text(
          //     'Count.it',
          //     style: TextStyle(
          //         fontFamily: 'Techy',
          //         fontSize: 23,
          //         color: Colors.lightGreenAccent,
          //         fontWeight: FontWeight.w600),
          //   ),
          // ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text('"',
                        style: TextStyle(
                            fontFamily: 'Tech',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreenAccent)),
                    Text(
                      '$count',
                      style: const TextStyle(
                          fontFamily: 'Tech',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreenAccent),
                    ),
                    const Text('"',
                        style: TextStyle(
                            fontFamily: 'Tech',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreenAccent)),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: 160,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: counter,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)),
                      backgroundColor: Colors.white10,
                    ),
                    child: const Text(
                      'PRESS IT',
                      style: TextStyle(
                          fontFamily: 'Tech',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreenAccent),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: SizedBox(
              width: 50,
              height: 50,
              child: IconButton(
                onPressed: reset,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)),
                  backgroundColor: Colors.white10,
                ),
                icon: const Icon(Icons.restart_alt, color: Colors.lightGreenAccent, size: 27,) ,
              ),
            ),
          ),
        ],
      ),
      // floatingActionButtonLocation:FloatingActionButtonLocation.endContained,
      // floatingActionButton: FloatingActionButton(onPressed: (){},child:  Icon(Icons.restart_alt, color: Colors.lightGreenAccent,),),
    );
  }
}
