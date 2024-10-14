import 'package:flutter/material.dart';
import 'package:humsafar/view/JoinPoolScreen.dart';
import 'package:humsafar/view/CreatePoolScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          Container(
              width: 250,
              height: 50,
              child: Image(image: AssetImage("view/map.jpg"))),
          SizedBox(height: 10),
          Container(
              width: 250,
              height: 50,
              child: Image(image: AssetImage("view/map.jpg"))),
          const Image(
            image: AssetImage("view/map.jpg"),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                SizedBox(
                  height: 46,
                  width: 136,
                  child: ElevatedButton(
                    onPressed: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => JoinPoolScreen()),
                    );
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor:
                            const Color.fromARGB(255, 22, 209, 237),
                        foregroundColor: Colors.white),
                    child: const Text('Join Pool'),
                  ),
                ),
                SizedBox(width: 30),
                SizedBox(
                  height: 46,
                  width: 136,
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreatePoolScreen()),
                    );
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor:
                            const Color.fromARGB(255, 22, 209, 237),
                        foregroundColor: Colors.white),
                    child: const Text('Create Pool'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
