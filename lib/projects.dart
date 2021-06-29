import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  showProject(Color cardColor, String projectName, String projectStatus) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Card(
        color: cardColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Text(
                projectName,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, bottom: 10),
              // ignore: deprecated_member_use
              child: RaisedButton(
                child: Text(projectStatus),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // ignore: deprecated_member_use
          leading: FlatButton(
            child: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Projects'),
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            showProject(Colors.orange, 'Kirana Hub', 'Check it out'),
            showProject(Colors.green, 'Jivin App', 'Check it out'),
            showProject(Colors.pink, 'HealthCare7 App', 'Check it out'),
            showProject(Colors.red, '4prosper', 'Check it out'),
            showProject(Colors.purple, 'GoRetails', 'Check it out'),
            showProject(Colors.lightBlue, 'Be Fresh Groceries', 'Check it out')
          ],
        ),
      ),
    );
  }
}
