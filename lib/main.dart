import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';


void  main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    title: "Form",

    home: HomePage(),
  )
  
  );
}



class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void validate(){
    if(formKey.currentState!.validate()){
      print("Ok");
    }
    else{
      print("Error");
    }
  }

  String? emailValidate (value){
      if(value.isEmpty){
        return "Email Required";
      }
      else{
        return null;
      }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        centerTitle: true,
      ),
     body: Center(
       child: Padding(
         padding: const EdgeInsets.all(25.0),
         child: Form(
            autovalidateMode: AutovalidateMode.always, key: formKey,
           child: Column(
             children: [
               TextFormField(
                 decoration: InputDecoration(
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
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  hintText: "Password",
                ),
                validator: (val){
                  if(val!.isEmpty){
                    return "Password Required";
                  }
                  else if(val.length < 6){
                    return "Atleast 6 character required";
                  }
                  else{
                    return null;
                  }
                },

                
              ),
              SizedBox(
                height: 25,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      style:ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        primary: Colors.red,
                      ), onPressed: validate,
                      
                      
                       child: Text("Login", style: TextStyle(
                         fontSize: 20,
                       ),) ,
                    ),
                  )
                ],
              )

             ],
           ),
         ),
       ),
     ),
    );
  }
}

