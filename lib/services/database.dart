import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  //collection refrence
  final CollectionReference BookCollection =
      FirebaseFirestore.instance.collection("BookCollection");
}
