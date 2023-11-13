import 'package:flutter/material.dart';
import 'package:fooder/src/controller/home_controller.dart';
import 'package:fooder/src/data/style/colors.dart';
import 'package:fooder/src/modules/home/views/home_view.dart';
import 'package:fooder/src/modules/provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => Data())],
    child: Fooder(),
  ));
}

class Fooder extends StatefulWidget {
  const Fooder({super.key});

  @override
  State<Fooder> createState() => _FooderState();
}

class _FooderState extends State<Fooder> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => HomeController()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: CustomColors.fooderPrimary,
              appBarTheme: AppBarTheme(
                  iconTheme: IconThemeData(color: CustomColors.orangeColor),
                  color: CustomColors.bgColor),
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
            home: HomePage(),
          ),
        );
      },
    );
  }
}