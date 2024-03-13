import 'package:flutter/material.dart';

import '../../Data/Data Providers/colors.dart';
import '../../Data/Data Providers/side_constants.dart';

class BigCard extends StatelessWidget {
  final double? loanAmount;
  final double? loanTerm;
  final double? interest;

  const BigCard(
      {super.key,
      this.loanAmount = 34,
      this.loanTerm = 50,
      this.interest = 40});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;
    return Container(
      height: 184,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color(0xff293759),
          image: DecorationImage(
            image: AssetImage(
                'assets/images/calculator_background.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration:
                            BoxDecoration(color: ColorResources.textColor),
                        child: Text('Loan Amount',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    color: ColorResources.primaryColor,
                                    fontWeight: FontWeight.normal)),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 26,
                        width: 128,
                        decoration: const BoxDecoration(
                            color: ColorResources.scaffoldColor,
                            borderRadius: BorderRadius.all(
                                Radius.circular(Dimensions.cardRadius))),
                        child: Center(
                          child: Text(
                            loanAmount!.toInt().toString(),
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    color: ColorResources.textColor,
                                    fontWeight: FontWeight.normal),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration:
                            BoxDecoration(color: ColorResources.textColor),
                        child: Text('Interest',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    color: ColorResources.primaryColor,
                                    fontWeight: FontWeight.normal)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 26,
                        width: 128,
                        decoration: BoxDecoration(
                            color: ColorResources.scaffoldColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Center(
                          child: Text(
                            interest.toString(),
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    color: ColorResources.textColor,
                                    fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: screenWidth * 0.05,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration:
                            BoxDecoration(color: ColorResources.textColor),
                        child: Text('Loan Term',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    color: ColorResources.primaryColor,
                                    fontWeight: FontWeight.normal)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 26,
                        width: 128,
                        decoration: BoxDecoration(
                            color: ColorResources.scaffoldColor,
                            borderRadius: BorderRadius.all(
                                Radius.circular(Dimensions.cardRadius))),
                        child: Center(
                          child: Text(
                            loanTerm!.toInt().toString(),
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    color: ColorResources.textColor,
                                    fontWeight: FontWeight.normal),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration:
                            BoxDecoration(color: ColorResources.textColor),
                        child: Text('Total Due',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    color: ColorResources.primaryColor,
                                    fontWeight: FontWeight.normal)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 26,
                        width: 128,
                        decoration: BoxDecoration(
                            color: ColorResources.scaffoldColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Center(
                          child: Text(
                            '3000',
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                    color: ColorResources.textColor,
                                    fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
