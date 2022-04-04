import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/eliminar.dart';
import 'package:flutter_application_1/ui/home_page.dart';
import 'package:flutter_application_1/ui/theme.dart';
import 'package:flutter_application_1/ui/widgets/button.dart';
import 'package:flutter_application_1/ui/widgets/input_field.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/material/dropdown.dart';

class AddTaskPage extends StatefulWidget {
    const AddTaskPage({Key? key}) : super(key: key);
    @override
    _AddTaskPageState createState()=>_AddTaskPageState();
}
    class _AddTaskPageState extends State<AddTaskPage> {
       int _paginaActual=0;
  List<Widget> _paginas=[
HomePage(),
AddTaskPage(),
DeleteTaskPage()
  ];
      DateTime _selectedDate = DateTime.now();
      String _endTime="9:30 PM";
      String _startTime=DateFormat("hh:mm a").format(DateTime.now()).toString();
      int _selectedRemind=5;
      List<int> remindList=[
        5,
        10,
        15,
        20,
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
        
        body:Container(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: SingleChildScrollView(
            child: Column(
            children: [
              Text(
                "Agregar Tarea",
                style: headingStyle,
              ),
              MyInputField(title: "Titulo", hint: "Ingresa el titulo"),
              MyInputField(title: "Nota", hint: "Ingresa la nota"),
              MyInputField(title: "Fecha", hint: DateFormat.yMd().format(_selectedDate),
              widget: IconButton(
                icon:Icon(Icons.calendar_today_outlined,
                  color: Colors.grey,
                ),
                onPressed: (){
                  print("Hola");
                  _getDateFromUser();
                },),),
            
              Row(
                children: [
                  Expanded(
                    child: MyInputField(
                      title:"Hora Inicio",
                      hint: _startTime,
                      widget: IconButton(
                        onPressed: (){
                            _getTimeFromUser(isStartTime: true);
                        },
                        icon: Icon(
                          Icons.access_time_rounded,
                          color:Colors.grey,
                        ),
                      ),
                    )),
                    SizedBox(width: 12,),
                   Expanded(
                    child: MyInputField(
                      title:"Hora Fin",
                      hint: _endTime,
                      widget: IconButton(
                        onPressed: (){
                          _getTimeFromUser(isStartTime: false);
                        },
                        icon: Icon(
                          Icons.access_time_rounded,
                          color:Colors.grey,
                        ),
                      ),
                    ))
                ],
              ),
              MyInputField(title: "Recordar", hint: "$_selectedRemind minutos antes",
               
              ),
              MyButton(label: "Crear Tarea", onTap: ()=>null)
            ],
          ),
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

    _getDateFromUser() async{
      DateTime? _pickerDate= await showDatePicker(
        context: context, 
        initialDate: DateTime.now(), 
        firstDate: DateTime(2015), 
        lastDate: DateTime(2121)
        );

        if(_pickerDate!=null){
          setState(() {
            _selectedDate=_pickerDate;
            print(_selectedDate);
          });
        }else{
          print("Esta nulo o ocurrio un error");
        }
    }

    _getTimeFromUser({required bool isStartTime}) async{
      var pickedTime= await _showTimePicker();
      String _formatedTime =pickedTime.format(context);
      if(pickedTime==null){
        print("Tiempo cancelado");
      }else if(isStartTime==true){
        setState(() {
          _startTime=_formatedTime;
        });
      }else if(isStartTime==false){
         setState(() {
            _endTime=_formatedTime;
         });
      }
    }

    _showTimePicker(){
      return showTimePicker(
        initialEntryMode: TimePickerEntryMode.input,
        context: context, 
        initialTime: TimeOfDay(
          
          hour: int.parse(_startTime.split(":")[0]), 
          minute: int.parse(_startTime.split(":")[1].split(" ")[0])
          )
        );
    }
}