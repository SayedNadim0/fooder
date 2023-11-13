import '../home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var data = Data();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bgColor,
      appBar: AppBarView(),
      bottomNavigationBar: BottomNavigationView(),
      drawer: DrawerView(),
      body: ListView(
        children: [
          CustomHeight(height: 15.h),
          DropDownMenu(),
          CustomHeight(height: 12.h),
          HomeGreetings(),
          CustomHeight(height: 15.h),
          const HomeNavigationTab(),
          TodaysPromo(),
          CustomHeight(height: 5.h),
          PromoItems()
        ],
      ),
    );
  }
}
