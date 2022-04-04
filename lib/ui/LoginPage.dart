import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir'
      ),
      home: loginPage(),
    );
  }
}
class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
          decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/fondo.jpeg'),
          fit: BoxFit.cover
        )
        
      ),
        padding: EdgeInsets.all(20),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
             Expanded(
               child: Center(
                child: Image(
                  image: NetworkImage('https://e7.pngegg.com/pngimages/556/580/png-clipart-computer-icons-symbol-user-profile-logo-symbol-miscellaneous-white.png'),
                  height: 140,
                ),)
              ),
            SizedBox(height: 20,),
            Text("Bienvenido", style: TextStyle(
              fontSize: 35,
              color: Colors.white
            ),),
            Text("Ingresa los datos...", style: TextStyle(
                fontSize: 18,
              color: Colors.white
            ),),
            SizedBox(height: 20,),
            Text("Usuario", style: TextStyle(
                fontSize: 23,
                color: Colors.white
            ),),
            TextField(
              decoration: InputDecoration(
                hintText: "Nombre usuario",fillColor: Colors.white
              ),
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
            SizedBox(height: 40,),
            Text("Contraseña", style: TextStyle(
              fontSize: 23,
              color: Colors.white
            ),),
            TextField(
              decoration: InputDecoration(
                  hintText: "Ingresa tu contraseña"
              ),
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ),
            ),
            SizedBox(height: 10,),
        
            Expanded(
              child: Center(
                child: Container(
                  child: RaisedButton(
                     child: Text("Ingresar"),
                     
              onPressed: (){
              
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>HomePage()) );
                }
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  
}
