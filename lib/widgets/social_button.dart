import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({Key? key, required this.title, this.backgroundColor, required this.iconPath, this.iconColor, this.textColor}) : super(key: key);

  final String? title;
  final String? iconPath;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.h,horizontal: 4.w),
      decoration: BoxDecoration(
        color: backgroundColor??Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black45.withOpacity(.1))
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [

            iconColor!=null?SvgPicture.asset(iconPath!,height: 18.sp,color: iconColor!,):SvgPicture.asset(iconPath!,height: 18.sp,),
            SizedBox(width: 2.w,),
            Text(title!,style: TextStyle(color: textColor??Colors.black,fontWeight: FontWeight.w500),),
          ],
        ),
      ),
    );
  }
}
