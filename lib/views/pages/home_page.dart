import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(5.0)
                  ),
                width: 200.0,
                height: 75.0,
                child: Center(
                  child: Text(
                    'Connect to ESP32',
                    style: TextStyle(color:Colors.white),
                  ),
                ),
              ),
            ],
          )
        );
  }
}