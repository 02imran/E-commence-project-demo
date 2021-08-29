
import 'package:flutter/material.dart';
import 'package:login_ui/helpers/themes/themes.dart';

class SplashDot extends StatelessWidget {
  const SplashDot({
    Key? key,
    required this.splashData,
    required int currentPage,
  }) : _currentPage = currentPage, super(key: key);

  final List splashData;
  final int _currentPage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          splashData.length,
          (index) => Container(
            margin: EdgeInsets.only(left: 5),
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: index == _currentPage
                  ? kPrimaryColor
                  : Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
    );
  }
}
