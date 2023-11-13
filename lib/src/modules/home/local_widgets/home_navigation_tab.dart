import '../home.dart';


class HomeNavigationTab extends StatefulWidget {
  const HomeNavigationTab({super.key});

  @override
  State<HomeNavigationTab> createState() => _HomeNavigationTabState();
}

class _HomeNavigationTabState extends State<HomeNavigationTab> {
  final customIcons = CustomIcons();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: double.infinity,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                child: Center(
                  child: SvgPicture.string(customIcons.itemListSvg[0]),
                ),
                height: 80.h,
                width: 80.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).r,
                  color: CustomColors.whiteColor,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Favorite",
                style: TextStyle(fontSize: 14.sp, color: CustomColors.paragraphTextColor),
              )
            ],
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            children: [
              Container(
                child: Center(
                    child: SvgPicture.string(customIcons.itemListSvg[1])
                ),
                height: 80.h,
                width: 80.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).r,
                  color: CustomColors.whiteColor,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Cheap",
                style: TextStyle(fontSize: 14.sp, color: CustomColors.paragraphTextColor),
              )
            ],
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            children: [
              Container(
                child: Center(
                    child: SvgPicture.string(customIcons.itemListSvg[2])
                ),
                height: 80.h,
                width: 80.w
                ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).r,
                  color: CustomColors.whiteColor,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Trend",
                style: TextStyle(fontSize: 14.sp, color: CustomColors.paragraphTextColor),
              )
            ],
          ),
          SizedBox(
            width: 10.w,
          ),

          Column(
            children: [
              Container(
                child: Center(
                    child: SvgPicture.string(customIcons.itemListSvg[3])
                ),
                height: 80.h,
                width: 80.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).r,
                  color: CustomColors.whiteColor,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "More",
                style: TextStyle(fontSize: 14.sp, color: CustomColors.paragraphTextColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}
