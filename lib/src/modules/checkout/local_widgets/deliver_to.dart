import '../checkout.dart';

class DeliverTo extends StatefulWidget {
  const DeliverTo({super.key});

  @override
  State<DeliverTo> createState() => _DeliverToState();
}

class _DeliverToState extends State<DeliverTo> {
  final circledCheckmarkIcon = CircledCheckmarkIcon().circledCheckmarkIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CustomColors.whiteColor,
        ),
        height: 120,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
                      child: Text(
                        "Deliver to",
                        style: TextStyle(
                            fontSize: 15, color: CustomColors.paragraphTextColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 2, 16, 0),
                      child: Text(
                        "Jl. Jayakatwang no 301",
                        style: TextStyle(fontSize: 17, color: CustomColors.headingTextColor),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.string(circledCheckmarkIcon[0]),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 12, 15, 16),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Add a note of delivery address",
                      prefixIcon: Icon(Icons.list_alt_rounded),
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      contentPadding: EdgeInsets.all(2)
                    ),
                    style: TextStyle(fontSize: 17, color: CustomColors.headingTextColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
