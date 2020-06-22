import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WaitingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///ScreenUtil for Responsive UI
    ScreenUtil.init(
      context,
      width: 392.72727272727275,
      height: 850.9090909090909,
      allowFontScaling: true,
    );
    return Container(
      color: Colors.black.withOpacity(0.1),
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          height: 70.h,
          width: 200.w,
          padding: EdgeInsets.all(10.w),
          color: Colors.white,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Flexible(fit: FlexFit.loose, child: CircularProgressIndicator()),
              Flexible(
                fit: FlexFit.loose,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Text(
                    "Please Wait...",
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
