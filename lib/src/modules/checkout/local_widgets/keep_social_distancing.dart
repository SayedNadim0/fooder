import 'package:flutter/cupertino.dart';
import '../checkout.dart';

class KeepSocialDistancing extends StatefulWidget {
  const KeepSocialDistancing({super.key});

  @override
  State<KeepSocialDistancing> createState() => _KeepSocialDistancingState();
}

class _KeepSocialDistancingState extends State<KeepSocialDistancing> {
  bool _isSocialDistancingEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CustomColors.whiteColor,
        ),
        height: 80,
        width: double.infinity,
        child: Center(
          child: ListTile(
            title: Text(
              "Keep social distancing",
              style:
                  TextStyle(fontSize: 17, color: CustomColors.headingTextColor),
            ),
            subtitle: Text(
              "Leave your order on the doorstep",
              style: TextStyle(
                  fontSize: 15, color: CustomColors.paragraphTextColor),
            ),
            trailing: CupertinoSwitch(
              value: _isSocialDistancingEnabled,
              onChanged: (value) {
                setState(() {
                  _isSocialDistancingEnabled = value;
                });
              },
              activeColor: CustomColors.orangeColor,
            ),
          ),
        ),
      ),
    );
  }
}
