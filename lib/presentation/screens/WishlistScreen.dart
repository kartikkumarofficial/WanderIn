import 'package:flutter/material.dart';
import 'package:wanderin/presentation/widgets/WishlistIntroSheet.dart';


class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(right: 35,top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Edit",style: TextStyle(fontSize: 16),),
                ElevatedButton(onPressed: (){
                  showWishlistIntroSheet(context);
                },child: Text("hi"),)
              ],
            )
          ],
        ),
      ),

    );
  }
}
