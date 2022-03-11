import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void validate(){
    if(formKey.currentState!.validate()){
      print("Ok");
    }
    else{
      print("Error");
    }
  }

  String? validatePass (val){
                  if(val!.isEmpty){
                    return "Password Required";
                  }
                  else if(val.length < 6){
                    return "Atleast 6 character required";
                  }
                  else{
                    return null;
                  }
                }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Login Form"),
        centerTitle: true,
      ),


      
     body: Card(
       child: Padding(
         padding: const EdgeInsets.only(
           top: 200
         ),
         child: Center(
           child: Form(
              key: formKey,
              child: Column(
               children: [
                 TextFormField(
                   decoration: InputDecoration(
                     prefixIcon: Icon(Icons.email),
                     border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                     hintText: "Email",
                     
                   ),

                   validator: MultiValidator([
                     RequiredValidator(errorText: "Email Required"),
                     EmailValidator(errorText: "Not Valid"),
                   ]),
                  
                 ),
                 SizedBox(
                   height: 25,
                 ),

                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    hintText: "Password",
                  ),
                  validator: validatePass,

                  
                ),
                SizedBox(
                  height: 25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                          child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(250, 50),
                          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          primary: Colors.black,
                          side: BorderSide(width: 3, color: Colors.black),
                        ),
                        child: Text("Login"),
                        
                        onPressed: (){

                            if (formKey.currentState!.validate()){
                              Navigator.popAndPushNamed(context, 'home');
                            }
                            else{
                              return null;
                            }
                            
                            
                               
                             
                        }
                              
      
                            // Navigator.popAndPushNamed(context, 'home');
                        )
                      ),
                    
                  ],
                )

               ],
             ),
           ),
         ),
       ),

       
     ),
    );

     

  }
  }
  