import 'package:flutter/material.dart';
import 'package:restaurant_ui/menuCard.dart';
import 'package:restaurant_ui/models/menu-model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          leading: InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Icon(Icons.chevron_left, color: Colors.black87, size: 30)),
          backgroundColor: Colors.white,
          //title: Text('Settings', style: ZingAppTheme.title),
          actions: <Widget>[
            Container(
              //height: 40,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xFFe9f3fc))
              ),
              child: Icon(Icons.add, color: Colors.black87, size: 30)),
            SizedBox(
              width: 20,
            ),
          ]),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Menu',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    fontWeight: FontWeight.w600)),
            Text('Note that all menus are currently available',
                style: TextStyle(
                    color: Color(0xFFa7b8cc),
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
            SizedBox(height: 30,),
            Expanded(
              child: ListView.separated(
                itemCount: getMenuCards().length,
                itemBuilder: (BuildContext context, int index) {
                  return MenuCard(
                    menuModel: getMenuCards()[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 30,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
