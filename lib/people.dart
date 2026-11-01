import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class People extends StatelessWidget {
  const People({super.key});
  @override
  Widget build(BuildContext context){
    final team = [
      {
        'name': 'Mario Gotze',
        'role': 'Chef and Founder',
        'image': 'assets/images/people1.jpg',
      },
      {
        'name': 'John Pyzza',
        'role': 'Chef and Founder',
        'image': 'assets/images/people3.jpg',
      },
      {
        'name': 'Ahmad',
        'role': 'Store General Manager',
        'image': 'assets/images/people4.jpg',
      },
      {
        'name': 'Sofia',
        'role': 'Quality Control Manager',
        'image': 'assets/images/people5.jpg',
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Our People', style: GoogleFonts.chewy(fontSize: 40)),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: team.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 12.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: team[index]['image']!.isNotEmpty ? AssetImage(team[index]['image']!):null,
              ),
              title: Text(
                team[index]['name']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(team[index]['role']!),
            ),
          );
        },
      ),

      bottomNavigationBar: BottomAppBar(
          child: FilledButton(
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
              child: Text(
                  'Back to Home',
                  style:GoogleFonts.poppins(fontSize: 18)
              )
          )
      ),

    );
  }
}
