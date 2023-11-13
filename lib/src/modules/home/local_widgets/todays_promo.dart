import '../home.dart';


class TodaysPromo extends StatefulWidget {
  const TodaysPromo({super.key});

  @override
  State<TodaysPromo> createState() => _TodaysPromoState();
}

class _TodaysPromoState extends State<TodaysPromo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "Today's Promo",
            style: TextStyle(
                fontSize: 24.sp, color: CustomColors.headingTextColor),
          ),
          trailing: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AllPromos()));
            },
            child: Text(
              "See All",
              style:
                  TextStyle(fontSize: 14.sp, color: CustomColors.orangeColor),
            ),
          ),
        )
      ],
    );
  }
}
