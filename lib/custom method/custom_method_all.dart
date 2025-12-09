import 'package:flutter/material.dart';


//     vvi     =>both are same:
// CircleAvatar CustomCircleMethod({required Widget childWidget,Color? backGColor}) {
//   return CircleAvatar(
//         radius: 30,
//         backgroundColor: Color(0xFF272c28),
//         child: childWidget
//       );
// }

Widget customMethodCircular({required IconData icon, Color? backGColor}) {
  return CircleAvatar(
      radius: 30,
      backgroundColor: backGColor ?? Color(0xFF272c28),
      child: Icon(icon)
  );
}


Text customMethodHandwrite1({required String text, Color? textColor}) {
  return Text(text,
    style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
        color: textColor ?? Colors.white),);
}

Widget CMBodyLage({required String text,Color? textColor}) {
  return Text(text,
    style: TextStyle(fontSize:26,fontWeight: FontWeight.w500,
        color: textColor?? Colors.black54),);
}
Widget CMBodyMedium({required String text,Color? textColor}) {
  return Text(text,
    style: TextStyle(fontSize:18,fontWeight: FontWeight.w500,
        color: textColor?? Colors.black54),);
}
Widget CMBodySmall({required String text,Color? textColor}) {
  return Text(text,
    style: TextStyle(fontSize:12,fontWeight: FontWeight.w500,
        color: textColor?? Colors.black54),);
}




