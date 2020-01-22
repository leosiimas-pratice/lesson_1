import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(title: "Curriculum", home: Home()),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var colors = [Colors.black, Colors.red, Colors.blue, Colors.green];
  int posC = 0;

  void newColor() {
    setState(() {
      posC < colors.length - 1 ? posC++ : posC = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Curriculum Vitae"),
        centerTitle: true,
        backgroundColor: colors[posC],
      ),
      backgroundColor: Colors.white,
      body: Container(
          padding: EdgeInsets.only(left: 15, top: 40.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      "images/image.jpg",
                      fit: BoxFit.cover,
                      height: 100.0,
                      width: 100.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 15,
                      ),
                      height: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Leonardo Abreu",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold)),
                          Text("Desenvolvedor Backend"),
                          Text("leonardo@email.com"),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Experiência:",
                  style: TextStyle(
                    height: 2,
                    color: colors[posC],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text("Mocka, Porto Alegre  —  Desenvolvedor Backend",
                    style: TextStyle(height: 2)),
                Text("Napead, Porto Alegre  —  Desenvolvedor Fullstack",
                    style: TextStyle(height: 2)),
                SizedBox(height: 10),
                Text(
                  "EDUCAÇÃO:",
                  style: TextStyle(
                    height: 2,
                    color: colors[posC],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                    "UNIVERSIDADE FEDERAL DO RIO GRANDE DO SUL, Porto Alegre — Engenharia da Computação",
                    style: TextStyle(height: 1.5)),
                Text(
                  "PROJETOS:",
                  style: TextStyle(
                    height: 2,
                    color: colors[posC],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Text("FILHOS EM DIA  —  Aplicativo blablabla")
              ])),
      floatingActionButton: FloatingActionButton(
        onPressed: newColor,
        tooltip: 'Increment',
        child: Icon(Icons.refresh),
        backgroundColor: colors[posC],
      ),
    );
  }
}
