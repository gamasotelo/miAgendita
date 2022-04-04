
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/servicios/notification_services.dart';
import 'package:flutter_application_1/servicios/theme_services.dart';

import 'package:flutter_application_1/ui/add_task_bar.dart';
import 'package:flutter_application_1/ui/theme.dart';
import 'package:flutter_application_1/ui/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'eliminar.dart';
import 'widgets/button.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
  DateTime _selectedDate = DateTime.now();
var notifyHelper;
@override
void initState(){
  //TODO: implement initState
  super.initState();
  notifyHelper=NotifyHelper();
  notifyHelper.initializeNotification();
  notifyHelper.requestIOSPermissions();
}

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
        
       
         backgroundColor: Colors.black12,
      appBar: _appBar(),
      
      body: Column(
           
        children: [
         _addTaskBar(),
         _addDateBar(),
         
         Text(""),
            Text(""),
            Text(
              'Actividades',
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
     
      //New
     
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
      
      ),
      
    );
  }

 _addDateBar(){
   return  Container(
            margin: const EdgeInsets.only(top:20,left:20),
            child: DatePicker(
              DateTime.now(),
              height: 100,
              width: 80,
              initialSelectedDate: DateTime.now(),
              selectionColor: primaryClr,
              selectedTextColor: Colors.white,
              dateTextStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color:Colors.grey
              ),
              ),
              dayTextStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color:Colors.grey
              ),
              ),
              monthTextStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color:Colors.grey
              ),
              ),
              onDateChange: (date){
                _selectedDate=date;
              },
            ),
          );
 }
  _addTaskBar(){
return Container(
           margin: const EdgeInsets.only(left:20,right: 20,top: 10),
            child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(DateFormat.yMMMMd().format(DateTime.now()),
                  style:subHeadingStyle,
                  ),
                  Text("Dia",
                  style:headingStyle,
                  ),
                ],
              )
              ),
              MyButton(label: "+ Agregar Tarea", onTap: ()=>Get.to(AddTaskPage())),
              MyButton(label: "+ Eliminar Tarea", onTap: ()=>Get.to(DeleteTaskPage())),
              
            ],
            
          )
          
         );
  }


  Widget _buildItem(context, String textTitle) {
  return new ListTile(
      title: new Text(textTitle,
                      style: TextStyle(color: Colors.white)),
      subtitle: new Text('fecha 12/12/22',
                          style: TextStyle(fontSize: 10,color: Colors.white)),
      leading: new Icon(Icons.star_border, color: Colors.red,),
      onTap: (){
        
      },
  );
}

  _appBar(){
    return AppBar(
      elevation:0,
      backgroundColor: Colors.black12,
      leading: GestureDetector(
        onTap: (){
           
        },
       
      ),
      actions: [
       CircleAvatar(
         backgroundImage: NetworkImage('https://e7.pngegg.com/pngimages/556/580/png-clipart-computer-icons-symbol-user-profile-logo-symbol-miscellaneous-white.png'),
       ),
        SizedBox(width: 20,),
      ],
    );
  }
}

class PaginaCambio extends StatelessWidget{
  const PaginaCambio({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return Center(
child: Text("Inicio",style: TextStyle(fontSize: 30),),
    );
  }
}
class PaginaEditar extends StatelessWidget{
  const PaginaEditar({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return Center(
child: Text("Eliminar",style: TextStyle(fontSize: 30),),
    );
  }
}

class BarraNavegacion extends StatelessWidget {
  int currentIndex=0;
  final screens=[
    HomePage(),
    AddTaskPage(),
    DeleteTaskPage()
  ];
  @override
  Widget build(BuildContext context) {
 
    return BottomNavigationBar(
      currentIndex: currentIndex,
      //onTap: (index)=>setState(()=>currentIndex=index),
      backgroundColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ('Inicio'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: ('Agregar')
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.remove),
          label: ('Eliminar'))
      ] 
    );
  }
}
