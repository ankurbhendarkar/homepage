import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    setState(() {
      changebutton = true;
      });
                          
      await Future.delayed(Duration(seconds : 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
              setState(() {
          changebutton = false;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset("assets/images/login.png",
              fit: BoxFit.cover
              ),
              SizedBox(height: 20,),
              
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 18.0),
                child: Column(
                  children: [
                    TextField(
                      
                      decoration: InputDecoration(
                        hintText: "Enter UserName",
                        labelText: "UserName"
                      ),
                      
                      onChanged: (value){
                        name = value;
                        setState(() {});
                      },
                      
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      
                    ),
                    SizedBox(height: 40,),
        
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changebutton? 50 : 8),
        
                      child: InkWell(
                        splashColor: Colors.red,
                        onTap: () async => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changebutton ? 50 : 150,
                          height: 40,
                          
                          alignment: Alignment.center,
                          child: changebutton ? Icon(Icons.done, color: Colors.white,) :
                          Text("Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ) ,
                          ),
                          
                        ),
                      ),
                    ),
              
                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: Size(150, 40),
                    //   ),
                    //   onPressed: (){
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    // )
              
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}