import 'package:flutter/material.dart';

import '../../../data/style/colors.dart';

class HaveAnyIdea extends StatefulWidget {
  const HaveAnyIdea({super.key});

  @override
  State<HaveAnyIdea> createState() => _HaveAnyIdeaState();
}

class _HaveAnyIdeaState extends State<HaveAnyIdea> {
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
                "Have an idea for your project?",
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
              child: Text(
                "Sign up to get exclusive email updates directly from me.",
                style: TextStyle(fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Full Name",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2))),
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2))),
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(18, 8, 18, 12),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Please enter Phone Number",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 2))),
                )),
            SizedBox(
              height: MaterialStateProperty.all<double>(50).resolve(Set.from([MaterialState.pressed])),
              width: MaterialStateProperty.all<double>(MediaQuery.of(context).size.width / 1.250).resolve(Set.from([MaterialState.pressed])),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Submit"),
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
