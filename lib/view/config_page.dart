import 'package:alimentadoapp/view/main_page.dart';
import 'package:flutter/material.dart';

class ConfigPage extends StatefulWidget{
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  String dropdownValue = 'Tipo de animal';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Configuración", style: TextStyle(fontSize: 25.0,color: Colors.white),),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network("https://www.ellitoral.com/um/fotos/286420_gatos.jpg",
                        height: 150,
                        width: 150,
                      ),
                    )
                ),
                Container(
                    child: Text ("Garry",style: TextStyle(fontSize: 20.0, color: Colors.black87),)
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Nombre'
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Especie'
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Raza'
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Cantidad de alimento'
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Numero de veces al dia'
                  ),
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.blueAccent),
                       underline: Container(
                       height: 2,
                      color: Colors.blueAccent,
                    ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                     });
                  },
                  items: <String>['Tipo de animal', 'Pequeño', 'Mediano', 'Grande']
                    .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                ),
                RaisedButton(
                  onPressed: (){
                    Navigator.pushReplacement( context,
                        MaterialPageRoute(
                            builder: (context) => MainPage()
                        )
                    );
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child:
                    const Text('Guardar', style: TextStyle(fontSize: 20)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}