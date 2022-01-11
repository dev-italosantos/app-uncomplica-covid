import 'package:app_descomplica_covid/core/app_default.dart';
import 'package:app_descomplica_covid/core/app_images.dart';
import 'package:app_descomplica_covid/pages/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xFF008AC1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.imgwearmask,
                width: 100.0,
                height: 100.0,
              ),
              SizedBox(height: defaultPadding),
              Container(
                height: 325.0,
                width: 325.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: defaultPadding),
                    Text(
                      'Olá, bem-vindo ao WorldTec',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: defaultPadding / 2),
                    Text(
                      'Por favor, faça o Login na sua conta',
                      style: TextStyle(fontSize: 12.0,
                          color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: defaultPadding),
                    Container(
                      width: 250.0,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'E-mail',
                          suffixIcon: Icon(
                            FontAwesomeIcons.envelope,
                            size: 16.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: defaultPadding / 2),
                    Container(
                      width: 250.0,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Senha',
                          suffixIcon: Icon(
                            FontAwesomeIcons.eyeSlash,
                            size: 16.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          20, defaultPadding, 40, defaultPadding),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Esqueceu sua senha?',
                            style: TextStyle(
                                color: Color(0xFF008AC1), fontSize: 12.0),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Home())
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFFCBDB76),
                              Color(0xFF008AC1),
                              Color(0xFF0E3746)
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.5),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
