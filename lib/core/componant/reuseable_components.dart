import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Widget unDefineRoute() {
  return Scaffold(
    body: Center(
      child: Text("Route Name Not Found"),
    ),
  );
}
//
// Widget routeField(
//     {TextEditingController? controller,
//       String? label = "",
//       double? radius = 0,
//       bool? setBackgroundColor = false}) =>
//     TextFormField(
//       controller: controller,
//       decoration: InputDecoration(
//         label: Text(label!),
//         filled: setBackgroundColor,
//         fillColor: Colors.white,
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(radius!.r),
//         ),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(radius.r),
//         ),
//       ),
//     );
//
// setLoading(BuildContext context, bool enable) {
//   if (enable) {
//   } else {
//   }
//}
