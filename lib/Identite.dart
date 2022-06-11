
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
class Identite extends StatefulWidget {
  const Identite({Key? key}) : super(key: key);

  @override
  State<Identite> createState() => _IdentiteState();
}

class _IdentiteState extends State<Identite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IDENTIFICATION"),
        backgroundColor: Colors.brown,
      ),
      body: ListView(
        children: [
          new TextField(
            controller: null,
            decoration: InputDecoration(
              labelText: "Nom",
              hintText: "Entrer votre nom : "
            ),
          ),
          new TextField(
            controller: null,
            decoration: InputDecoration(
              labelText: "Adresse",
              hintText: "Entrer votre adresse : "
            ),
          ),
          SizedBox(width: 40)
          ,
          new TextField(
            controller: null,
            keyboardType: TextInputType.phone,
            enabled: true,
            decoration: InputDecoration(
              labelText: "Telephone",
              hintText: "Entrer votre Telephone : "
            ),
          ),
           SizedBox(width: 40)
           ,
          RaisedButton(
            onPressed: (){},
            child: Text("Save"),
            color: Colors.blueGrey,
            )
        ],
      ),
    );
  }
}