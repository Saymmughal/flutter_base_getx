import 'package:flutter/material.dart';
import 'package:flutter_base_getx/utils/colors.dart';
import 'package:flutter_base_getx/utils/style.dart';
import 'package:flutter_base_getx/view/widgets/extention/int_extension.dart';
import 'package:flutter_base_getx/view/widgets/extention/string_extension.dart';

class NoDataFound extends StatelessWidget {
  const NoDataFound({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo of the Error that no data found
          8.height,
          title.toText(
            textAlign: TextAlign.center,
            fontSize: 14,
            fontWeight: w500,
            color: whitePrimary,
          ),
        ],
      ),
    );
  }
}
