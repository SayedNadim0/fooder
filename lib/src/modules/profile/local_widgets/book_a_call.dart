import 'package:flutter/material.dart';

import '../../../data/style/colors.dart';

class BookACall extends StatefulWidget {
  const BookACall({super.key});

  @override
  State<BookACall> createState() => _BookACallState();
}

class _BookACallState extends State<BookACall> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
        width: MediaQuery.sizeOf(context).width / 1.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2),
          color: CustomColors.whiteColor,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Any Problems in your code? I am here to assist you! 😊",
                style: TextStyle(fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MaterialStateProperty.all<double>(50).resolve(Set.from([MaterialState.pressed])),
              width: MaterialStateProperty.all<double>(MediaQuery.of(context).size.width / 1.250).resolve(Set.from([MaterialState.pressed])),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Book a 1:1 call"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
