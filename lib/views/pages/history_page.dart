import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('10:10 15th Jul 2025', 
                        style: CardTextStyle.title,
                      ),
                      Text('Total kcal: 800kcal'),
                      Text('Note: ---'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
