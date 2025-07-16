import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/notifier.dart';
import 'package:flutter_application_1/views/pages/history_page.dart';
import 'package:flutter_application_1/views/pages/home_page.dart';
import 'package:flutter_application_1/views/widgets/navbar_widget.dart';

List<Widget> pages = [
  HomePage(),
  HistoryPage()
];

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            '(Name of the App)',
            style: TextStyle(
              color: Colors.white,
            )
          ),
          centerTitle: false,
        ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context,selectedPage,child) {
          return  pages.elementAt(selectedPage);
        },
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.camera_alt),
      ),*/
      bottomNavigationBar: NavBarWidget(),
      );
  }
}