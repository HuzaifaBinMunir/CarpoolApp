import 'package:flutter/material.dart';
import 'package:humsafar/view/PoolDetailsScreen.dart';


class JoinPoolScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF52BDD6),
        leading: Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            icon: Text('<', style: TextStyle(color: Color(0xFF52BDD6), fontSize: 24)),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        title: Text('Join Pool', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          PoolButton(
            name: 'Huzaifa',
            passengers: '3',
            from: 'Fast Nuces, Lahore',
            to: 'Johar town, Lahore',
            fare: 'Rs. 500',
            dateTime: '6/02/2024 7:30 AM',
          ),
          PoolButton(
            name: 'Maaz',
            passengers: '2',
            from: 'Model town, Lahore',
            to: 'Garden town, Lahore',
            fare: 'Rs. 700',
            dateTime: '6/12/2024 8:30 AM',
          ),
          PoolButton(
            name: 'Faez',
            passengers: '1',
            from: 'DHA phase II, Lahore',
            to: 'State Life Housing Society, Lahore',
            fare: 'Rs. 1000',
            dateTime: '6/02/2024 10:30 PM',
          ),
        ],
      ),
    );
  }
}

class PoolButton extends StatelessWidget {
  final String name;
  final String passengers;
  final String from;
  final String to;
  final String fare;
  final String dateTime;

  const PoolButton({
    Key? key,
    required this.name,
    required this.passengers,
    required this.from,
    required this.to,
    required this.fare,
    required this.dateTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFD6F3FA),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Color(0xFF0C94D3)),
      ),
      child: ListTile(
        title: Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Passengers: $passengers'),
            Text('From: $from'),
            Text('To: $to'),
            Text('Fare: $fare'),
            Text('Date/Time: $dateTime'),
          ],
        ),
        onTap: () {
          // Navigate to Pool Details Screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PoolDetailsScreen()),
          );
        },
      ),
    );
  }
}


