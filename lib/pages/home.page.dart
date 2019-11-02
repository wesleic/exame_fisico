import 'package:flutter/material.dart';
import 'exm.page.dart';


class Home extends StatefulWidget {
  @override
  _MainState createState() => new _MainState();
}

class _MainState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _cardController;

  static final GlobalKey<ScaffoldState> _scaffoldKey =
  GlobalKey<ScaffoldState>();

  final controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _cardController = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _cardController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: new Container(
        decoration: BoxDecoration(
            color: Colors.green
        ),
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 350),
              child: Container(
                width: 200,
                height: 200,
                child: new Image.asset("assets/img/logo.png"),
              ),
            ),
            Container(
              child: TabBarView(
                controller: _cardController,
                children: <Widget>[
                  _cardHome(Icons.playlist_play, "Realizar Exame Físico", () {Navigator.push(context, MaterialPageRoute(builder: (context) => ExameFisico(),),);},),
                  _cardHome(Icons.playlist_add_check, "Exames Físicos Realizados", () {},)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _cardHome(IconData icon, String inf, VoidCallback onCustomButtonPressed){
  return Container(
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.white,
      elevation: 8.0,
      margin:
      EdgeInsets.only(left: 70, right: 70, top: 330, bottom: 40),
      child: FlatButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Icon(
                icon,
                size: 170,
                color: Colors.green,
              ),
            ),
            Container(
              child: Text(
                inf,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        onPressed: onCustomButtonPressed,
      ),
    ),
  );
}