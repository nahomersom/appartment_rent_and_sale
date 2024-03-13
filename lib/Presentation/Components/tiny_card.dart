// import 'package:flutter/material.dart';

// import '../../Data/Data Providers/colors.dart';
// import '../../Data/Data Providers/side_constants.dart';

// class TinyCard extends StatelessWidget {
//   final double height;
//   final double fontSize;
//   final String title;
//   final double cardRadius;
//   const TinyCard({
//     required this.height,
//     required this.fontSize,
//     required this.title,
//     this.cardRadius = Dimensions.cardRadius,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: height,
//       decoration: BoxDecoration(
//           color: ColorResources.scaffoldColor,
//           border: Border.all(width: 1, color: ColorResources.borderColor),
//           borderRadius: BorderRadius.all(Radius.circular(cardRadius))),
//       child: Center(
//         child: Text(
//           title,
//           textAlign: TextAlign.center,
//           style: Theme.of(context).textTheme.titleSmall?.copyWith(
//               color: ColorResources.textColor,
//               fontSize: fontSize,
//               fontWeight: FontWeight.normal),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import '../../Data/Data Providers/colors.dart';
import '../../Data/Data Providers/side_constants.dart';

class TinyCard extends StatelessWidget {
  final double height;
  final double fontSize;
  final String title;
  final String result;
  final double cardRadius;
  const TinyCard({
    required this.height,
    required this.fontSize,
    required this.title,
    this.cardRadius = Dimensions.cardRadius,
    this.result = '',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
          color: ColorResources.scaffoldColor,
          border: Border.all(width: 1, color: ColorResources.borderColor),
          borderRadius: BorderRadius.all(Radius.circular(cardRadius))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: ColorResources.textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.bold),
          ),
          Text(
            result,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: ColorResources.textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.normal),
          ),
        ]),
      ),
    );
  }
}
