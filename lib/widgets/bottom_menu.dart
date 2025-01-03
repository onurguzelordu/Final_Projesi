import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.brown,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                context.go("/home");
              },
              icon: Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                context.go("/helpdesk");
              },
              icon:
                  Icon(Icons.contact_support_outlined, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                context.go("/profile");
              },
              icon: Icon(Icons.person_rounded, color: Colors.white),
            ),
          ],
        ));
  }
}
