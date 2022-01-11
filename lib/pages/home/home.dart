import 'package:app_descomplica_covid/core/app_default.dart';
import 'package:app_descomplica_covid/pages/home/widget/country_dropdown_button.dart';
import 'package:app_descomplica_covid/pages/home/widget/griddashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            SizedBox(
              height: defaultPadding / 2,
            ),
            GridDashboard(),
            SizedBox(
              height: defaultPadding / 2,
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: Icon(
        Icons.menu,
        color: Colors.black87,
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.bell,
            color: Colors.black,
          ),
        ),
      ],
      elevation: 0.0,
      backgroundColor: Colors.white,
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 36),
      decoration: BoxDecoration(
        color: Color(0xFF0E3746),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(36),
          bottomLeft: Radius.circular(36),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'COVID-19',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              CountryDropdownButton()
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Are you feeling sick?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'If you feel sick with any of covid-19 symptoms '
            '\nplease call or SMS us immediately for help.',
            style: TextStyle(color: Colors.white, fontSize: 14, height: 1.5),
          ),
        ],
      ),
    );
  }
}
