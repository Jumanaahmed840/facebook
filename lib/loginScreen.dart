import 'package:facebook_screen/homeScreen.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
   Loginscreen({super.key});
  static const String routeName = "/" ;
   bool visibility = true ;



  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
late bool _v = true ;
final _formKey = GlobalKey<FormState>();
final _formK = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
         body: SafeArea(child: SingleChildScrollView(
           child: Padding(
             padding: const EdgeInsets.all(20),
             child: Column(
               children: [
                 SizedBox(height: 80,),
                   Center(child: Image.asset("assets/images/logo.png" , fit: BoxFit.cover,)) ,
                   SizedBox(height: 30,),
                   Form(
                     key: _formKey,
                     child: TextFormField(
                       autovalidateMode: AutovalidateMode.onUserInteractionIfError ,
                       keyboardType: TextInputType.emailAddress,
                       validator:  (value){
                         if(value == null || value.isEmpty)
                           return "please enter email" ;
                        final RX =  RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                         if(!RX.hasMatch(value))
                           return "Invalid Email";
                         return null ;
                       },
                       decoration: InputDecoration(
                         fillColor: Color(0xFFD6DFF1).withValues(alpha: .47),
                         filled: true,
                         hintText: "Mobile Number or Email Address",

                         focusedErrorBorder:OutlineInputBorder( borderRadius: BorderRadius.circular(15) ,
                             borderSide: BorderSide(color: Colors.red  , width: 2)) ,
                         errorBorder:OutlineInputBorder( borderRadius: BorderRadius.circular(15) ,
                             borderSide: BorderSide(color: Colors.red  , width: 2)) ,
                         focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(15) ,
                             borderSide: BorderSide(color: Colors.purple , width: 2)),
                         enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(15) ,
                             borderSide: BorderSide(color: Colors.black54  , width: 2)),
                       ),
                     ),
                   ),

                   SizedBox(height: 12,),

                   Form(
                     key: _formK,
                     child: TextFormField(
                       autovalidateMode: AutovalidateMode.onUserInteractionIfError ,
                       keyboardType: TextInputType.visiblePassword,
                       obscureText: _v,
                       validator:  (value){
                         if(value == null || value.isEmpty)
                           return "please enter Password" ;
                         if(value.length<8)
                           return "Invalid Password";
                         return null ;
                       },
                       decoration: InputDecoration(
                         fillColor: Color(0xFFD6DFF1).withValues(alpha: .47),
                         filled: true,
                         hintText: "Password",
                         suffixIcon: widget.visibility ? IconButton(onPressed: (){
                           setState(() {
                             _v = !_v ;
                           });
                         },
                             icon: Icon( _v ? Icons.visibility : Icons.visibility_off )
                         ) : null ,
                         focusedErrorBorder:OutlineInputBorder( borderRadius: BorderRadius.circular(15) ,
                             borderSide: BorderSide(color: Colors.red  , width: 2)) ,
                         errorBorder:OutlineInputBorder( borderRadius: BorderRadius.circular(15) ,
                             borderSide: BorderSide(color: Colors.red  , width: 2)) ,
                         focusedBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(15) ,
                             borderSide: BorderSide(color: Colors.purple , width: 2)),
                         enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(15) ,
                             borderSide: BorderSide(color: Colors.black54  , width: 2)),
                       ),
                     ),
                   ),

                 SizedBox(height: 30,),
                      SizedBox(
                     child: FilledButton(style: FilledButton.styleFrom (
                       backgroundColor:  Color(0xff1877F2) ,
                       minimumSize: const Size.fromHeight(56),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20) ,),
                     ),
                         onPressed: (){
                           if(_formKey.currentState!.validate() && _formK.currentState!.validate()){
                             Navigator.pushReplacementNamed(context, Homescreen.routeName);
                           };
                         } ,
                         child: Text("Login" , style: TextStyle(
                           fontSize: 20 ,
                           fontWeight: .w400
                         ),)),
                   ),

                 TextButton(onPressed: (){}, child: Text("Forget Password ?" , style: TextStyle(
                   color: Color(0xFF898F9C) ,
                   fontSize: 16 ,
                   fontWeight: .w500
                 ),)),

                 SizedBox(
                   height: 250,
                 ),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(56),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: BorderSide(color: Colors.blue))),
                         onPressed: (){} ,
                         child: Text("Create Account" , style: TextStyle(
                             fontSize: 20 ,
                             fontWeight: .w400 ,
                           color: Color(0xFF1877F2),)),
                   ),
                 SizedBox(height: 12,),
                 Image.asset("assets/images/meta.png")
               ],
             ),
           ),
         )),
    );
  }
}
