import 'package:flutter/material.dart';

import 'package:currency_converter/app/components/currency_row.dart';
import 'package:currency_converter/app/controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
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
              CurrencyRow(
                selectedItem: homeController.toCurrency,
                controller: toText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.toCurrency = model!;
                  });
                },
              ),
              SizedBox(height: 10),
              CurrencyRow(
                selectedItem: homeController.fromCurrency,
                controller: fromText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.fromCurrency = model!;
                  });
                },
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  homeController.convert();
                },
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
      ),
    );
  }
}
