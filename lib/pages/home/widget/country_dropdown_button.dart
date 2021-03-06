import 'package:app_descomplica_covid/core/app_images.dart';
import 'package:flutter/material.dart';

class CountryDropdownButton extends StatefulWidget {
  @override
  _CountryDropdownButtonState createState() => _CountryDropdownButtonState();
}

class _CountryDropdownButtonState extends State<CountryDropdownButton> {
  String dropdownValue = 'USA1';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(36),
      ),
      child: DropdownButtonHideUnderline(
        // hide underline
        child: DropdownButton<String>(
          value: dropdownValue,
          items: <String>['USA1', 'USA2', 'USA3', 'USA4']
              .map<DropdownMenuItem<String>>(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          child: Image.asset(AppImages.imgusa),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          e,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
          onChanged: (value) {
            setState(() {
              dropdownValue = value!;
            });
          },
        ),
      ),
    );
  }
}
