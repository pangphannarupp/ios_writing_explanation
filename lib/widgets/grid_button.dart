import 'package:flutter/material.dart';

Widget gridButton(Color colorBackground, Color colorIcon, IconData icon, double size, String title, VoidCallback? onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: colorBackground,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Icon(
                icon,
                color: colorIcon,
                size: size,
              ),
            ),
            const SizedBox(height: 10,),
            Text(title, textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              // color: Colors.black,
              fontSize: 12
            ),)
          ],
        ),
      ),
    ),
  );
}