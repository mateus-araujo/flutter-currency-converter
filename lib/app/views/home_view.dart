import 'package:currency_converter/app/components/currency_row.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 100,
          bottom: 20,
        ),
        child: Column(
          children: [
            ClipOval(
              child: Container(
                padding: EdgeInsets.all(50),
                color: Colors.blueGrey.shade800,
                child: Image.asset(
                  'assets/images/logo.png',
                  color: Colors.amber.shade700,
                  width: 125,
                ),
              ),
            ),
            SizedBox(height: 50),
            CurrencyRow(),
            SizedBox(height: 10),
            CurrencyRow(),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Convert'.toUpperCase(),
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.amber.shade800),
            )
          ],
        ),
      ),
    );
  }
}
