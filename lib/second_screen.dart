import 'package:flutter/material.dart';
import 'third_screen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the Second Screen'),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Pop (Back to First Screen)'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/third');
              },
              child: Text('PopAndPushNamed to Third Screen'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen()),
                );
              },
              child: Text('Push to Third Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
