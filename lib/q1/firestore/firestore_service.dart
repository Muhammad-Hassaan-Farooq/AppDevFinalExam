import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/juice.dart';

class FirestoreService {
  final CollectionReference _juicesCollection =
      FirebaseFirestore.instance.collection('juices');

  Future<List<Juice>> getJuices() async {
    final juices = await _juicesCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Juice.fromSnapShot(doc.data() as Map<String, dynamic>);
      }).toList();
    });
    return juices.first;
  }
}
