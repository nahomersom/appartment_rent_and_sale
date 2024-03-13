import 'package:appartment_rent_and_sale/Data/Data%20Providers/colors.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
  static showErrorToast(BuildContext context, String errorMessage,
      TextTheme _textTheme, bool? isSuccess) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 4),
        backgroundColor: isSuccess != null && isSuccess
            ? Colors.green
            : ColorResources.errorText,
        content: Center(
          child: Text(
            errorMessage,
            style: _textTheme.titleSmall?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }

  static Future<bool> IsBookmarked(String userId) async {
    SharedPreferences pre = await SharedPreferences.getInstance();

    List<String> userIds = pre.getStringList("userIds") ?? [];
    if (userIds.contains(userId)) {
      return true;
    }
    return false;
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}
