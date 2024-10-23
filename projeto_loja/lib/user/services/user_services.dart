import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:projeto_loja/user/models/user_model.dart';

class UserServices {
  //instancia do firebase
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //Classe de dados
  UserModel? userModel;

  //metodo para salvar usuario no firebase
  signUp(UserModel userModel) {
    _auth.createUserWithEmailAndPassword(
        email: userModel.email!, password: userModel.password!);
    this.userModel = userModel;
    save();
  }

  save() {
    _firestore.collection('users').add(userModel!.toMap());
  }
}
