import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Data/Data Providers/colors.dart';
import '../../Data/Data Providers/side_constants.dart';

class SharedFileField extends StatelessWidget {
  const SharedFileField({
    super.key,
    required TextTheme textTheme,
    required this.textEditingController,
    this.inputType = 'text',
    this.isFormSubmitted = false,
    required this.label,
    this.placeholder,
    this.onChange,
    this.prefixIcon,
    this.isReadonly = false,
    this.suffixIcon,
    this.isRequired = false,
    this.onFilePick,
  }) : _textTheme = textTheme;

  final TextTheme _textTheme;
  final String label;
  final String? placeholder;
  final void Function(String)? onChange;
  final bool isReadonly;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final String inputType;
  final bool isFormSubmitted;
  final bool isRequired;
  final TextEditingController textEditingController;
  final void Function()? onFilePick;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text.rich(
            TextSpan(
              text: '$label ',
              style: TextStyle(
                color: ColorResources.textColor,
                fontWeight: FontWeight.bold,
                fontSize: _textTheme.bodyLarge?.fontSize,
              ),
              children: [
                if (isRequired)
                  TextSpan(
                    text: '*',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          GestureDetector(
            onTap: onFilePick,
            child: Container(
              height: 54,
              decoration: BoxDecoration(
                border: Border.all(
                  color: ColorResources.borderColor,
                  width: 1.0,
                ),
                // borderRadius: BorderRadius.circular(Dimensions.borderRadius),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  if (prefixIcon != null) prefixIcon!,
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0), // Adjust the padding as needed
                      child: Text(
                        textEditingController.text.isEmpty
                            ? placeholder ?? 'No file attached'
                            : textEditingController.text,
                        style: _textTheme.bodySmall
                            ?.copyWith(fontSize: 16.0, color: Colors.black54),
                      ),
                    ),
                  ),
                  if (suffixIcon != null) suffixIcon!,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
