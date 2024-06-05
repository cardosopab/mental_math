import 'package:flutter/material.dart';
import 'package:mentis_math/complement/view/complement_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mentis Math'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ComplementPage()),
                );
              },
              child: const Text('Complement'),
            ),
          ],
        ),
      ),
    );
  }
}
