import '../checkout.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 205,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                "Payment",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              title: Text("Item Total"),
              trailing: Text("Rp 18,500"),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              title: Text("Delivery fee"),
              trailing: Text("Rp 0"),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              title: Text("To pay"),
              trailing: Text("Rp 18,500"),
            ),
          ],
        ),
      ),
    );
  }
}
