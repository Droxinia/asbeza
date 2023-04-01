import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: const Image(image: AssetImage('assets / cake.jpg')),
                ),
                const Text('Profile'),
                const Text('Profile pic')
              ],
            ),
            const Text('MR . Donate'),
            const Text('bole/5th street/building 004'),
            const Text('000*****************')
          ],
        ),
      ),
    );
  }
}
