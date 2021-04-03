import 'package:flutter/material.dart';

class CurrencyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 64,
            child: DropdownButton(
              iconEnabledColor: Colors.amber,
              iconSize: 30,
              isExpanded: true,
              underline: Container(
                height: 1,
                color: Colors.amber,
              ),
              items: <String>['Real', 'Dólar'].map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem(
                    child: Text(value),
                    value: value,
                  );
                },
              ).toList(),
              onChanged: (value) {},
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
