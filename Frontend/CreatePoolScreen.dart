import 'package:flutter/material.dart';

class CreatePoolScreen extends StatefulWidget {
  @override
  _CreatePoolScreenState createState() => _CreatePoolScreenState();
}

class _CreatePoolScreenState extends State<CreatePoolScreen> {
  final TextEditingController _carTypeController = TextEditingController();
  final TextEditingController _carNumberController = TextEditingController();
  final TextEditingController _carNameController = TextEditingController();
  final TextEditingController _costPerPersonController = TextEditingController();
  final TextEditingController _numberOfPassengersController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF52BDD6),
        leading: IconButton(
          icon: Text('<', style: TextStyle(color: Color(0xFF52BDD6), fontSize: 24)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Create Pool', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: _carTypeController,
              decoration: InputDecoration(
                labelText: 'Car Type',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _carNumberController,
              decoration: InputDecoration(
                labelText: 'Car Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _carNameController,
              decoration: InputDecoration(
                labelText: 'Car Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _costPerPersonController,
              decoration: InputDecoration(
                labelText: 'Cost per person',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _numberOfPassengersController,
              decoration: InputDecoration(
                labelText: 'No. of Passengers',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement create pool logic
              },
              child: Text('Create Pool', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF52BDD6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
