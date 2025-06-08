import 'package:flutter/material.dart';
// import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> savePlaces() async{
  final CollectionReference ref = FirebaseFirestore.instance.collection('places');
  
}