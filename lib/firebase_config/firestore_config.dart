import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreConfig{
  var db = FirebaseFirestore.instance;
  
  
  void saveUser(String name,String email,String password){
      final user = <String,dynamic>{
        "name" : name,
        "email" : email,
        "password" : password
      };
      db.collection("user").add(user).then((DocumentReference doc) => 
        // ignore: avoid_print
        print('DocumentSnashop added with ID: ${doc.id}')
      );
  }
}