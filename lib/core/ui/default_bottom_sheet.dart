import 'package:flutter/material.dart';

Future ithutaBottomSheet(BuildContext context, {required String title}) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    elevation: 0,
    builder: (builder) {
      return Container(
        color: Colors.black,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.fromLTRB(23, 13, 0, 20),
              height: 69,
              color: const Color(0xFFD9D9D9),
              child: const Text(
                'Lesson Name',
                style: TextStyle(
                  fontSize: 33,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 62),
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              height: 67,
              color: Colors.white,
              child: const Center(
                child: Text(
                  'Study',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 39),
              height: 67,
              color: const Color(0xFF0AB98F),
              child: const Center(
                child: Text(
                  'Challenges',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            )
          ],
        ),
      );
    },
  );
}
