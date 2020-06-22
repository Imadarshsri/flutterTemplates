import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:urbancultur/app_localization.dart';

class SamplePage extends StatelessWidget {
  static const routeName = '/sample';
  @override
  Widget build(BuildContext context) {
    final String title =
        ModalRoute.of(context).settings.arguments!= null ?ModalRoute.of(context).settings.arguments: "Title"; //Setting title
    ScreenUtil.init(context,
        width: 392.72727272727275,
        height: 850.9090909090909,
        allowFontScaling: true);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(),
    );
  }
}