import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageWithLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('asset:'),
            Image.asset(
              'asset/image/flutter_logo.png',
              height: 50,
            ),
            SizedBox(height: 20,),
            Text('network:'),
            Image.network(
              'https://flutter.dev/assets/flutter-lockup-1caf6476beed76adec3c477586da54de6b552b2f42108ec5bc68dc63bae2df75.png',
              height: 50,
            )
          ],
        ),
      ),
    );
  }
  
}