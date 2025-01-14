import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:traveler/logic/main-app-provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:traveler/utils/colors.dart';
class CountriesScreen extends StatefulWidget {
  const CountriesScreen({super.key});

  @override
  State<CountriesScreen> createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainAppProvider>(
        builder: (context,provider,_){
          return Scaffold(
            backgroundColor: AppColors().white,
            appBar: AppBar(
              elevation: 1,
              backgroundColor: AppColors().white,
              title: Text('Traveler',style: GoogleFonts.cairo(color: AppColors().black,fontStyle: FontStyle.italic,fontSize: 25.sp),),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10).r,
                  child: Container(
                    height: 30.h,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          InkWell(
                            child: Container(
                              height: 20,
                              width: 90.w,
                              decoration: BoxDecoration(
                                color: AppColors().black,
                                borderRadius: BorderRadius.circular(10).r
                              ),
                              child: Center(
                                child: Text('Europe',style: GoogleFonts.cairo(fontSize: 14.sp,color: AppColors().white),),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Container(
                            height: 20,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: AppColors().black,
                                borderRadius: BorderRadius.circular(10).r
                            ),
                            child: Center(
                              child: Text('Africa',style: GoogleFonts.cairo(fontSize: 14.sp,color: AppColors().white),),
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Container(
                            height: 20,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: AppColors().black,
                                borderRadius: BorderRadius.circular(10).r
                            ),
                            child: Center(
                              child: Text('Asia',style: GoogleFonts.cairo(fontSize: 14.sp,color: AppColors().white),),
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Container(
                            height: 20,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: AppColors().black,
                                borderRadius: BorderRadius.circular(10).r
                            ),
                            child: Center(
                              child: Text('America',style: GoogleFonts.cairo(fontSize: 14.sp,color: AppColors().white),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h,),
                provider.EuContries!=null? ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: provider.EuContries!.length,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return ListTile(
                        leading: Image.network(provider.EuContries![index].flags.png.toString()),
                      );
                    }):Center(
                  child: CircularProgressIndicator(color: AppColors().blue,),
                )
              ],
            ),
          );
        }
    );
  }
}
