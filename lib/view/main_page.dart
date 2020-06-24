import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

import 'config_page.dart';

class MainPage extends StatefulWidget{
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double percent = 75;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ("Tu Mascota",style: TextStyle(color: Colors.white,fontSize: 25.0),textAlign: TextAlign.center,),
        backgroundColor: Colors.blueAccent,
        elevation: 1.0,
        centerTitle: true,
      ),
      body: Container(
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
          SizedBox(
            height: 5.0,
          ),
          Container(
              child: Text ("Garry",style: TextStyle(fontSize: 20.0, color: Colors.black87),)
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            "Cantidad de Comida"
          ),
          SizedBox(
            height: 10.0,
          ),
          RoundedProgressBar(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              childLeft: Text("$percent%",
                  style: TextStyle(color: Colors.white)),
              percent: percent,
              theme: RoundedProgressBarTheme.green),
          SizedBox(
            height: 20.0,
          ),
          Container(
            color: Colors.blueGrey,
            width: MediaQuery.of(context).size.width*.8,
            height: MediaQuery.of(context).size.height*.30,
            child: ListView(
              children: <Widget>[
                Table(
                  border: TableBorder.all(),
                  children: [
                    TableRow(
                      children: [
                        Text("Veces al día",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                        Text("2",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                      ]
                    ),
                    TableRow(
                        children: [
                          Text("Cantidad de alimento",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                          Text("70 gr.",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                        ]
                    ),
                    TableRow(
                        children: [
                          Text("Tipo de animal",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                          Text("Pequeño",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                        ]
                    ),
                    TableRow(
                        children: [
                          Text("Especie",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                          Text("Gato",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                        ]
                    ),
                    TableRow(
                        children: [
                          Text("Raza",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                          Text("Mestizo",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                        ]
                    ),
                    TableRow(
                        children: [
                          Text("Alimento favorito",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                          Text("Wiskas Res",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                        ]
                    ),
                  ],
                ),
              ],
            ),
          ),
         SizedBox(
           height: 10.0,
         ),
         RaisedButton(
           onPressed: (){
            Navigator.push( context,
                MaterialPageRoute(
                builder: (context) => ConfigPage()
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
             const Text('Configurar', style: TextStyle(fontSize: 20)),
           ),
         ),
        ],
      ),
      ),
    );
  }
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        width: 1, //                   <--- border width here
      ),
    );
  }
}