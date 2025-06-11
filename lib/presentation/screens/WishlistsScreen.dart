import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(title: const Text("Wishlists")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: user == null
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login to view your wishlists",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to your login screen
              },
              child: const Text("Login"),
            )
          ],
        )
            : FutureBuilder(
          future: getUserWishlists(user.uid),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            final wishlists = snapshot.data as List<String>;
            if (wishlists.isEmpty) {
              return const Center(child: Text("No wishlists found."));
            }
            return ListView.builder(
              itemCount: wishlists.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(wishlists[index]),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<List<String>> getUserWishlists(String uid) async {
    // Sample logic: you should adapt based on your Firestore schema
    final snapshot = await FirebaseFirestore.instance
        .collection("users")
        .doc(uid)
        .collection("wishlists")
        .get();

    return snapshot.docs.map((doc) => doc["title"] as String).toList();
  }
}
