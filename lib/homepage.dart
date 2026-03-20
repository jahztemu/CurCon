import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(width: 1.0, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(40)),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(44, 129, 157, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '0',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                  fontStyle: FontStyle.normal,
                ),
                decoration: InputDecoration(
                  hintText: "Please enter the amount in USD",
                  hintStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(153, 0, 0, 0),
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Color.fromARGB(153, 0, 0, 0),
                  filled: true,
                  fillColor: Color.fromARGB(145, 255, 255, 255),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.directional(start: 120, end: 120),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(5),
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  minimumSize: WidgetStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(40),
                    ),
                  ),
                ),
                child: Text(
                  'Convert',
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
