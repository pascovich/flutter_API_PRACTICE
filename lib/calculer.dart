import 'package:flutter/material.dart';
class Calculatrice extends StatefulWidget {
  const Calculatrice({Key? key}) : super(key: key);

  @override
  State<Calculatrice> createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {
  TextEditingController txtnombre1 = new TextEditingController();
  TextEditingController txtnombre2 = new TextEditingController();
  TextEditingController txtreponse = new TextEditingController();

  void addition(){
    int x = int.parse(txtnombre1.text);
    int y = int.parse(txtnombre2.text);
    txtreponse.text=(x+y).toString();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULATRICE"),
        backgroundColor: Colors.blue,

      ),
      body: ListView(
        children: [
          Row(
            children: [
              new TextField(
                controller: txtnombre1,
                decoration: InputDecoration(
                  labelText: "Nombre1",
                  hintText: "Entrer le nombre 1"
                ),
              ),
              new TextField(
                controller: txtnombre2,
                decoration: InputDecoration(
                  labelText: "Nombre2",
                  hintText: "Entrer le nombre 2"
                ),
              ),
              new RaisedButton(
                onPressed: (){ addition(); },
                child: Text("Calcluer"),
                color: Colors.blueAccent,

              ),
              new TextField(
                controller: txtreponse,
                decoration: InputDecoration(
                  labelText: "La reponse",
                  hintText: "Reponse"
                ),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}