import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/add_task_bar.dart';
import 'package:flutter_application_1/ui/home_page.dart';

class DeleteTaskPage extends StatefulWidget{
  const DeleteTaskPage({Key? key}) : super(key: key);

  @override
  State<DeleteTaskPage> createState() => _DeleteTaskPageState();
}

class _DeleteTaskPageState extends State<DeleteTaskPage> {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Eliminar',
    theme:ThemeData(
      primarySwatch: Colors.blue,
    ),
  home: const MyhomeDelete(title:'Eliminar'),
  );
  }
}

class MyhomeDelete extends StatefulWidget{
  const MyhomeDelete({Key? key,required this.title}) : super(key:key);
  final String title;
  @override
  State<MyhomeDelete> createState()=>_MyhomeDeleteState();
}
class _MyhomeDeleteState extends State<MyhomeDelete>{
   int _paginaActual=0;
  List<Widget> _paginas=[
HomePage(),
AddTaskPage(),
DeleteTaskPage()
  ];
   List data = [
    "Hacer app de desarrollo web",
    "Tomar siesta matutina",
    "Estudiar para examen de mañana",
    "Leer libro",
    "Ir al gimnasio",
    "Continuar con proyecto",
    "Realizar tarea de redes",
    "Lavar ropa",
    "Tomar siesta vespertina",
    "Llamar al Kevin",
    "Practicar Piano"
  ];
    @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/fondo.jpeg'),
          fit: BoxFit.cover
        )
        
      ),
      child: Scaffold(
        appBar:_appBar(context),
        backgroundColor: Colors.black12,
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           
          children: <Widget>[
            Text(""),
            Text(""),
            Text(
              'Eliminar Actividad',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white
                
              ),
            ),
            Container(
              height: 400,
              margin: EdgeInsets.all(20),
              child: (ListView.builder(
                itemCount: data.length,
                itemBuilder:(BuildContext contextn, int index){
                  return _buildItem(context,data[index]);/*ListTile(
                    title: Text(data[index],
                      style: TextStyle(fontSize: 15,color: Colors.white),
                      ),
                  );*/
                }))),
            Text(""),
            Text(""),
            Text(""),
            Text(""),
          ],
        ),
      ),
             bottomNavigationBar:BottomNavigationBar(
          onTap: (index){
            setState(() {
              _paginaActual=index;
            });
          },
          currentIndex: _paginaActual,
        items: [ BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ('Inicio'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: ('Agregar')
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.remove),
          label: ('Eliminar'))],
      ),
    )
    );
  }

 _appBar(BuildContext context){
    return AppBar(
      elevation:0,
      backgroundColor: Colors.blue,
    );
  }


    _borrarItem(context,tarea){
    showDialog(
      context: context, builder: ( _ ) => AlertDialog(
        title: Text("Eliminar Actividad"),
        content: Text("¿Estas seguro que deseas eliminar esta actividad?"),
        actions: [
          FlatButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Cancelar")),
          FlatButton(onPressed: (){
            data.removeWhere((item) => item == tarea);
            this.setState(() {
              
            });
            Navigator.pop(context);
          }, child: Text("Borrar", style: TextStyle(color:Colors.red)))
        ],
      ));
  }

  Widget _buildItem(context, String textTitle) {
  return new ListTile(
      title: new Text(textTitle,
                      style: TextStyle(color: Colors.white)),
      subtitle: new Text('fecha 12/12/22',
                          style: TextStyle(fontSize: 10,color: Colors.white)),
      leading: new Icon(Icons.remove_circle_outline, color: Colors.red,),
      onTap: (){
       
      },
  );
}

}