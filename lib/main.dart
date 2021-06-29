import 'package:flutter/material.dart';
import './projects.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile page'),
      ), //AppBar
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            //height: 200,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(Icons.call),
                      minRadius: 35.0,
                      backgroundColor: Colors.blue.shade900,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 60,
                      child: ClipRRect(
                        child: Image.asset(
                          'lib/assets/brlhex.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      child: Icon(Icons.message),
                      minRadius: 35.0,
                      backgroundColor: Colors.blue.shade900,
                    )
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Blockchain Research Lab',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ), //Container

          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Bio', style: TextStyle(color: Colors.blue, fontSize: 24)),
                Divider(
                  height: 15,
                  thickness: 2,
                  //color: Colors.black
                ),
                Text(
                    'We’re passionate about building innovative products that will disrupt the industry. At Blockchain Research Lab, we look forward with the advancement in Blockchain technology and it\'s recent changes.'),
                SizedBox(
                  width: double.infinity,
                  height: 15,
                ),
                ListTile(
                  leading: Icon(Icons.mail, color: Colors.blue),
                  title: Text('Email'),
                  subtitle: Text('blockchain@akgec.ac.in'),
                ),
                ListTile(
                  leading: Icon(Icons.message, color: Colors.blue),
                  title: Text('Instagram'),
                  subtitle: Text('@brl_akgec'),
                ),
                ListTile(
                  leading: Icon(Icons.call, color: Colors.blue),
                  title: Text('Contact'),
                  subtitle: Text('+91 7275390010'),
                ),
              ],
            ), //Column
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            color: Colors.blue,
            child: Text(
              'Projects',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Projects(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
