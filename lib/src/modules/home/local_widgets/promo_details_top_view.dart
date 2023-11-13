// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
//
// import '../../../data/style/colors.dart';
//
// class PromoDetailsTopView extends StatefulWidget {
//   const PromoDetailsTopView({super.key});
//
//   @override
//   State<PromoDetailsTopView> createState() => _PromoDetailsTopViewState();
// }
//
// class _PromoDetailsTopViewState extends State<PromoDetailsTopView> {
//   @override
//   Widget build(BuildContext context) {
//     return   Stack(
//       clipBehavior: Clip.none,
//       children: [
//         Container(
//             height: 250.h,
//             width: double.infinity,
//             child: Image.network(
//               widget.promoDetails['img'],
//               fit: BoxFit.cover,
//             )),
//         Positioned(
//           top: 170,
//           bottom: -130,
//           left: 0,
//           right: 0,
//           child: Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(15).r,
//               child: Container(
//                 height: 150.h,
//                 width: double.infinity,
//                 color: CustomColors.whiteColor,
//                 child: Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         widget.promoDetails['title'],
//                         style: TextStyle(
//                             fontSize: 25.sp,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         widget.promoDetails['loc'],
//                       ),
//                       Text(
//                         widget.promoDetails['subtitle'],
//                       ),
//                       Text(
//                         widget.promoDetails['open'],
//                       ),
//                       SizedBox(
//                         height: 20.h,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             height: 25.h,
//                             width: 25.w,
//                             child: SvgPicture.string(
//                                 foodDetailsSvg.foodDetailsSvg[1]),
//                           ),
//                           SizedBox(
//                             width: 5.w,
//                           ),
//                           Text(widget.promoDetails['loc_no']),
//                           SizedBox(
//                             width: 15.w,
//                           ),
//                           Container(
//                             height: 23.h,
//                             width: 23.h,
//                             child: SvgPicture.string(
//                                 foodDetailsSvg.foodDetailsSvg[2]),
//                           ),
//                           SizedBox(
//                             width: 5.w,
//                           ),
//                           Text(widget.promoDetails['rating']),
//                           SizedBox(
//                             width: 15.w,
//                           ),
//                           Container(
//                             height: 22.h,
//                             width: 22.h,
//                             child: SvgPicture.string(
//                                 foodDetailsSvg.foodDetailsSvg[3]),
//                           ),
//                           SizedBox(
//                             width: 5.w,
//                           ),
//                           Text(widget.promoDetails['verify']),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Builder(builder: (context) {
//           var foodDetailsSvg;
//           return Positioned(
//             top: 40,
//             left: 15,
//             child: IconButton(
//               icon: Positioned(
//                 child: Container(
//                   height: 40.h,
//                   width: 40.h,
//                   child: SvgPicture.string(
//                       foodDetailsSvg.foodDetailsSvg[0]),
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: CustomColors.whiteColor),
//                 ),
//               ),
//               onPressed: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => HomePage()));
//               },
//             ),
//             height: 52.h,
//             width: 52.w,
//           );
//         }),
//         Builder(builder: (context) {
//           return Positioned(
//             top: 40,
//             right: 15,
//             child: IconButton(
//               icon: Positioned(
//                 child: Container(
//                   height: 40.h,
//                   width: 40.w,
//                   child:
//                   SvgPicture.string(itemListSvg.itemListSvg[0]),
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: CustomColors.whiteColor),
//                 ),
//               ),
//               onPressed: () {
//                 //   Nothing to here
//               },
//             ),
//             height: 52.h,
//             width: 52.w,
//           );
//         }),
//       ],
//     ),;
//   }
// }
