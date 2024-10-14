import 'package:flutter/material.dart';

class PoolDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF52BDD6),
        leading: IconButton(
          icon: Text('<', style: TextStyle(color: Color(0xFF52BDD6), fontSize: 24)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Pool Details', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('RS: 500', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text('Pool Details', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                SizedBox(height: 10),
                Text('Name: Huzaila', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                Text('Passenger Capacity: 4', style: TextStyle(fontSize: 16)),
                Text('Seats Occcupied: 2', style: TextStyle(fontSize: 16)),
                Text('Remaining Seats: 2', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                Text('Suzuki WagonR', style: TextStyle(fontSize: 16)),
                Text('Sedan', style: TextStyle(fontSize: 16)),
                Text('Car Number ABC123', style: TextStyle(fontSize: 16)),
                Text('Date/Time: 6/12/2024, 7:30 AM', style: TextStyle(fontSize: 16)),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Icon(Icons.location_on, color: Color(0xFF52BDD6)),
                    Text('Fast NUCES, Lahore', style: TextStyle(fontSize: 16)),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.flag, color: Color(0xFF52BDD6)),
                    Text('Johar Town, Lahore', style: TextStyle(fontSize: 16)),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle join request
                    },
                    child: Text('Send Join Request'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF52BDD6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
