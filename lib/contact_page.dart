import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact WOW Pizza',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),

            SizedBox(height: 20),

            Text(
              'Address:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              '123 Pizza Street, Kuching, Sarawak',
              style: TextStyle(fontSize: 16),
            ),

            SizedBox(height: 15),

            Text(
              'Phone:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              '+60 12-345 6789',
              style: TextStyle(fontSize: 16),
            ),

            SizedBox(height: 15),

            Text(
              'Email:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'wowpizza@gmail.com',
              style: TextStyle(fontSize: 16),
            ),

            SizedBox(height: 15),

            Text(
              'Opening Hours:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'Monday - Sunday\n10:00 AM - 10:00 PM',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}