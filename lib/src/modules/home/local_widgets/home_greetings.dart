import '../home.dart';

class HomeGreetings extends StatefulWidget {
  const HomeGreetings({super.key});

  @override
  State<HomeGreetings> createState() => _HomeGreetingsState();
}

class _HomeGreetingsState extends State<HomeGreetings> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Hello, Yahya",
        style: TextStyle(fontSize: 28.sp, color: CustomColors.headingTextColor),
      ),
      subtitle: Text(
        'What do you want to eat?',
        style: TextStyle(color: CustomColors.paragraphTextColor, fontSize: 16.sp),
      ),
    );
  }
}
