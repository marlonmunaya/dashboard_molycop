import 'package:flutter/material.dart';
import 'package:molycop_dashboard/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
Widget header({context,setting}){
  FirebaseUser user = Provider.of<UserState>(context).currentUser(); 
  // TODO:habilitar
  return UserAccountsDrawerHeader(
        accountName: Text('Cliente Monitor',style: TextStyle(color:Colors.white),),
        accountEmail: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('${user.email}',style: TextStyle(color:Colors.white),),
            SizedBox(width: 0.0,),
            Material(
              color: Theme.of(context).primaryColor,
              child: IconButton(
                focusNode: FocusNode(),
                // padding: EdgeInsets.all(10.0),
                // highlightColor: Colors.red,
                icon:Icon(Icons.settings,color: Colors.white,),
                // splashColor: Colors.red,
                onPressed: setting,
                ),
            ),
            SizedBox(width: 0.0,)
          ],
        ),
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.white,
          // backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2012/04/13/21/07/user-33638__340.png'),
          child:  Image.asset('lib/src/assets/molycop.PNG',
                    width: 70.0,
                    fit: BoxFit.fitWidth,),
           
        ),
      );
}