import 'package:fooder/src/modules/order_confirmed/views/order_confirmed_view.dart';

import '../checkout.dart';

class CheckoutBottom extends StatefulWidget {
  const CheckoutBottom({super.key});

  @override
  State<CheckoutBottom> createState() => _CheckOut_BottomState();
}

class _CheckOut_BottomState extends State<CheckoutBottom> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Container(
          height: 90,
          width: double.infinity,
          color: Colors.white,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrderConfirmed()));
                  },
                  child: ListTile(
                    title: Text(
                      "Place Order",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    trailing: Text(
                      "18,500",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
