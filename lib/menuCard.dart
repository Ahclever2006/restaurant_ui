import 'package:flutter/material.dart';
import 'package:restaurant_ui/models/menu-model.dart';

class MenuCard extends StatelessWidget {
  final MenuModel menuModel;

  const MenuCard({Key key, @required this.menuModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.24,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken),
              image: NetworkImage(menuModel.image), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(5)),
                    child:
                        Icon(Icons.more_horiz, color: Colors.white, size: 30))
              ],
            ),
            Container(
              height: 60,
            ),
            Text(menuModel.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500)),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  chipCard(Icons.star_border, menuModel.stars, Colors.white54),
                  SizedBox(
                    width: 5,
                  ),
                  chipCard(
                      Icons.calendar_today, menuModel.time, Colors.white54),
                  SizedBox(
                    width: 50,
                  ),
                  coloredChipCard('${menuModel.menuItems} Menu Items', Color(0xFFd95806))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget chipCard(IconData icon, String label, Color color) => Container(
        padding: EdgeInsets.all(4),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(5), color: color.withOpacity(0.3)),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Text(label, style: TextStyle(color: Colors.white)),
          ],
        ),
      );
  Widget coloredChipCard(String label, Color color) => Container(
        padding: EdgeInsets.all(4),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(5), color: color),
        child: Text(label, style: TextStyle(color: Colors.white)),
      );
}
