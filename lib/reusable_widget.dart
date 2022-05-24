import 'package:flutter/material.dart';

TextField reusableTextField(String text, IconData icon, bool isPasswordType, TextEditingController controller){
  return TextField(controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    style: TextStyle(color: Colors.white.withOpacity(0.9)),
    decoration: InputDecoration(prefixIcon: Icon(icon, color: Colors.white,),
      labelText: text,
      labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

Container SignButton(BuildContext context, bool isLogin, Function onTap){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: (){
        onTap();
      },
      child: Text(
        isLogin ? 'LOG IN': 'SIGN UP',
        style: const TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states){
        if(states.contains(MaterialState.pressed)){
          return Colors.black;
        }
        return Colors.white;
      }),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      ),
    ),
  );
}

Container DepartmentWtCourses(BuildContext context, String Department, String Imagename ) {
  return Container(
    child: Stack(
      children: <Widget>[
        TextButton(onPressed: () {  },
        child: Card(
            elevation: 20,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width*0.45,
              height: 200,
              child: Center(
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Center(child: Image.asset("assets/images/" + Imagename, scale: 1.3, alignment: FractionalOffset.center, fit: BoxFit.fill))),
                      Padding(padding: EdgeInsets.fromLTRB(0, MediaQuery.of(context).size.height*0.2, 0, MediaQuery.of(context).size.height*0.2)),
                      Text(Department, style: TextStyle(fontFamily: "LibreBaskerville", fontSize: 20),),
                          ],
                      )
                  ),
              ),
              ),
            ),
        ],
      ),
  );
}