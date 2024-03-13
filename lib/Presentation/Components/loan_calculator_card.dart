import 'package:flutter/material.dart';

import '../../Data/Data Providers/colors.dart';
import '../../Data/Data Providers/side_constants.dart';

class LoanCalculatorCard extends StatefulWidget {
  final bool showInterest;
  final void Function(double)? onLoanAmountSlide;
  final void Function(double)? onLoanTermSlide;
  final void Function(double)? onLoanInterestlide;

  const LoanCalculatorCard(
      {super.key,
      this.showInterest = true,
      this.onLoanAmountSlide,
      this.onLoanInterestlide,
      this.onLoanTermSlide});

  @override
  State<LoanCalculatorCard> createState() => _LoanCalculatorCardState();
}

class _LoanCalculatorCardState extends State<LoanCalculatorCard> {
  double _currentLoanAmount = 1000;
  double _currentLoanTerm = 0;
  double _currentInterest = 0;

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    var screenHeight = size.height;
    var screenWidth = size.width;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: ColorResources.borderColor),
          borderRadius:
              BorderRadius.all(Radius.circular(Dimensions.largeCardRadius))),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Loan Amount',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: ColorResources.primaryColor),
                      ),
                      Text(
                        _currentLoanAmount.round().toString(),
                        style: Theme.of(context).textTheme.titleSmall,
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      trackHeight: 11,
                      // here
                      trackShape: CustomTrackShape(),
                    ),
                    child: Slider(
                      value: _currentLoanAmount,
                      activeColor: ColorResources.primaryColor,
                      inactiveColor: ColorResources.inActiveColor,
                      thumbColor: ColorResources.textColor,
                      max: 1000000,
                      min: 10000,
                      divisions: null,
                      label: _currentLoanAmount.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentLoanAmount = value;
                          widget.onLoanAmountSlide!(value);
                        });
                      },
                    ),
                  ),
                ]),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Loan Term',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: ColorResources.primaryColor),
                      ),
                      Text(
                        _currentLoanTerm.round().toString(),
                        style: Theme.of(context).textTheme.titleSmall,
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                      trackHeight: 11,
                      // here
                      trackShape: CustomTrackShape(),
                    ),
                    child: Slider(
                      value: _currentLoanTerm,
                      activeColor: ColorResources.primaryColor,
                      inactiveColor: ColorResources.inActiveColor,
                      thumbColor: ColorResources.textColor,
                      max: 100,
                      divisions: null,
                      label: _currentLoanTerm.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentLoanTerm = value;
                          widget.onLoanTermSlide!(value);
                        });
                      },
                    ),
                  ),
                ]),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                widget.showInterest
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Interest',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                          color: ColorResources.primaryColor),
                                ),
                                Text(
                                  _currentInterest.round().toString() + '%',
                                  style: Theme.of(context).textTheme.titleSmall,
                                )
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            SliderTheme(
                              data: SliderThemeData(
                                trackHeight: 11,
                                // here
                                trackShape: CustomTrackShape(),
                              ),
                              child: Slider(
                                value: _currentInterest,
                                activeColor: ColorResources.primaryColor,
                                inactiveColor: ColorResources.inActiveColor,
                                thumbColor: ColorResources.textColor,
                                max: 100,
                                divisions: null,
                                label: _currentInterest.round().toString(),
                                onChanged: (double value) {
                                  setState(() {
                                    widget.onLoanInterestlide!(value);
                                    _currentInterest = value;
                                  });
                                },
                              ),
                            ),
                          ])
                    : SizedBox()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
