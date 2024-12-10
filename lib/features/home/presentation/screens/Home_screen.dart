import 'package:awfar_gomla_vendor/core/assets_utils/app_colors.dart';
import 'package:awfar_gomla_vendor/core/assets_utils/app_dimens.dart';
import 'package:awfar_gomla_vendor/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import 'package:pie_chart/pie_chart.dart';
import '../../../../core/app_routes.dart';
import '../../../../core/assets_utils/assets_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dataMap = <String, double>{
      "Flutter": 50,
      "React": 30,
      "Ionic": 20,
    };
    return SafeArea(
      top: false,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child:  Column(
              children: [
                10.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child:
                      Card(
                        elevation: 5,
                        margin: EdgeInsets.all(10.w),
                        color:AppColors.home_card_orders ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                            alignment: Alignment.center,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Opacity(
                                  opacity: 0.1,
                                  child: SvgPicture.asset(
                                      ImgAssets.home_card_shape
                                  ),
                                ),
                                Column(
                                  children: [
                                    5.verticalSpace,
                                    Text(AppLocalizations.of(context)!.today_orders,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: AppDimens.xxLargeFontSize
                                      ),
                                    ),
                                    const Text("50",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: AppDimens.xxxLargeFontSize
                                      ),
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text("34.5",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: AppDimens.xxLargeFontSize
                                          ),
                                        ),
                                        10.horizontalSpace,
                                        SvgPicture.asset(ImgAssets.arrow_down)
                                      ],
                                    ),
                                    Text(AppLocalizations.of(context)!.compared_to_last_week,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: AppDimens.smallFontSize
                                      ),
                                    ),
                                    5.verticalSpace
                                  ],
                                )

                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child:
                      Card(
                        elevation: 5,
                        margin: EdgeInsets.all(10.w),
                        color:AppColors.home_card_revenue ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                            alignment: Alignment.center,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Opacity(
                                  opacity: 0.1,
                                  child: SvgPicture.asset(
                                      ImgAssets.home_card_shape
                                  ),
                                ),
                                Column(
                                  children: [
                                    5.verticalSpace,
                                    Text(AppLocalizations.of(context)!.today_revenue,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: AppDimens.xxLargeFontSize
                                      ),
                                    ),
                                    const Text("\u0024 150",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: AppDimens.xxxLargeFontSize
                                      ),
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text("17.5",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: AppDimens.xxLargeFontSize
                                          ),
                                        ),
                                        10.horizontalSpace,
                                        SvgPicture.asset(ImgAssets.arrow_up,)
                                      ],
                                    ),
                                    Text(AppLocalizations.of(context)!.compared_to_last_week,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: AppDimens.smallFontSize
                                      ),
                                    ),
                                    5.verticalSpace
                                  ],
                                )

                              ],
                            )),
                      ),
                    ),

                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child:
                      Card(
                        elevation: 5,
                        margin: EdgeInsets.all(10.w),
                        color:AppColors.home_card_clients ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                            alignment: Alignment.center,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Opacity(
                                  opacity: 0.1,
                                  child: SvgPicture.asset(
                                      ImgAssets.home_card_shape
                                  ),
                                ),
                                Column(
                                  children: [
                                    5.verticalSpace,
                                    Text(AppLocalizations.of(context)!.today_clients,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: AppDimens.xxLargeFontSize
                                      ),
                                    ),
                                    const Text("9",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: AppDimens.xxxLargeFontSize
                                      ),
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text("2.0",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: AppDimens.xxLargeFontSize
                                          ),
                                        ),
                                        10.horizontalSpace,
                                        SvgPicture.asset(ImgAssets.arrow_up)
                                      ],
                                    ),
                                    Text(AppLocalizations.of(context)!.compared_to_last_week,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: AppDimens.smallFontSize
                                      ),
                                    ),
                                    5.verticalSpace
                                  ],
                                )

                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child:
                      Card(
                        elevation: 5,
                        margin: EdgeInsets.all(10.w),
                        color:AppColors.home_card_products ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                            alignment: Alignment.center,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Opacity(
                                  opacity: 0.1,
                                  child: SvgPicture.asset(
                                      ImgAssets.home_card_shape
                                  ),
                                ),
                                Column(
                                  children: [
                                    5.verticalSpace,
                                    Text(AppLocalizations.of(context)!.today_products,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: AppDimens.xxLargeFontSize
                                      ),
                                    ),
                                    const Text("19",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: AppDimens.xxxLargeFontSize
                                      ),
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text("17.5",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: AppDimens.xxLargeFontSize
                                          ),
                                        ),
                                        10.horizontalSpace,
                                        SvgPicture.asset(ImgAssets.arrow_up,)
                                      ],
                                    ),
                                    Text(AppLocalizations.of(context)!.compared_to_last_week,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: AppDimens.smallFontSize
                                      ),
                                    ),
                                    5.verticalSpace
                                  ],
                                )

                              ],
                            )),
                      ),
                    ),

                  ],
                ),

                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child:
                      Card(
                        elevation: 2,
                        margin: EdgeInsets.all(10.w),
                        color:AppColors.white ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                            alignment: Alignment.center,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Opacity(
                                  opacity: 0.9,
                                  child: SvgPicture.asset(
                                      ImgAssets.home_card_shape2
                                  ),
                                ),
                                Column(
                                  children: [
                                    5.verticalSpace,
                                    Text(AppLocalizations.of(context)!.markets_statistics,
                                      style: const TextStyle(
                                          color: AppColors.normal_text_color,
                                          fontWeight: FontWeight.bold,
                                          fontSize: AppDimens.xLargeFontSize
                                      ),

                                    ),
                                    10.verticalSpace,

                                    PieChart(
                                      dataMap: dataMap,
                                      animationDuration: Duration(milliseconds: 800),
                                      chartLegendSpacing: 32,
                                      chartRadius: MediaQuery.of(context).size.width / 3.5,
                                      colorList: const [
                                        AppColors.home_card_orders,
                                        AppColors.home_card_clients,
                                        AppColors.home_card_products
                                      ] ,
                                      initialAngleInDegree: 0,
                                      chartType: ChartType.ring,
                                      ringStrokeWidth: 32,
                                      // centerText: "HYBRID",
                                      legendOptions: const LegendOptions(
                                        showLegendsInRow: false,
                                        legendPosition: LegendPosition.right,
                                        showLegends: false,
                                        // legendShape: _BoxShape.circle,
                                        legendTextStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      chartValuesOptions: const ChartValuesOptions(
                                        showChartValueBackground: true,
                                        showChartValues: true,
                                        showChartValuesInPercentage: false,
                                        showChartValuesOutside: false,
                                        decimalPlaces: 1,
                                      ),
                                      // gradientList: ---To add gradient colors---
                                      // emptyColorGradient: ---Empty Color gradient---
                                    ),
                                    15.verticalSpace,

                                    Row(
                                      children: [
                                        12.horizontalSpace,
                                        Container(
                                          height: 12.0,
                                          width: 12.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: AppColors.home_card_orders,
                                          ),
                                        ),
                                        5.horizontalSpace,
                                        Text(
                                          AppLocalizations.of(context)!.completed_orders,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: AppDimens.xSmallFontSize,
                                              color: AppColors.home_card_orders),
                                        ),
                                      ],
                                    ),
                                    4.verticalSpace,
                                    Row(
                                      children: [
                                        12.horizontalSpace,
                                        Container(
                                          height: 12.0,
                                          width: 12.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: AppColors.home_card_clients,
                                          ),
                                        ),
                                        5.horizontalSpace,
                                        Text(
                                          AppLocalizations.of(context)!.canceled_orders,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: AppDimens.xSmallFontSize,
                                              color: AppColors.home_card_clients),
                                        ),
                                      ],
                                    ),
                                    4.verticalSpace,
                                    Row(
                                      children: [
                                        12.horizontalSpace,
                                        Container(
                                          height: 12.0,
                                          width: 12.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: AppColors.home_card_products,
                                          ),
                                        ),
                                        5.horizontalSpace,
                                        Text(
                                          AppLocalizations.of(context)!.in_progress_orders,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: AppDimens.xSmallFontSize,
                                              color: AppColors.home_card_products),
                                        ),
                                      ],
                                    ),
                                    5.verticalSpace,
                                  ],
                                )
                              ],
                            )),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child:
                      Card(
                        elevation: 2,
                        margin: EdgeInsets.all(10.w),
                        color:AppColors.white ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                            alignment: Alignment.center,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Opacity(
                                  opacity: 0.9,
                                  child: SvgPicture.asset(
                                      ImgAssets.home_card_shape2
                                  ),
                                ),
                                Column(
                                  children: [
                                    5.verticalSpace,
                                    Text(AppLocalizations.of(context)!.orders_statistics,
                                      style: const TextStyle(
                                          color: AppColors.normal_text_color,
                                          fontWeight: FontWeight.bold,
                                          fontSize: AppDimens.xLargeFontSize
                                      ),

                                    ),
                                    5.verticalSpace,
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment: AlignmentDirectional.centerStart,
                                            child: Row(
                                              children: [
                                                12.horizontalSpace,
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      AppLocalizations.of(context)!.orders,
                                                      style: const TextStyle(
                                                          fontSize: AppDimens.mediumFontSize,
                                                          color: AppColors.normal_text_color),
                                                      // style: Theme.of(context).textTheme.headlineLarge,
                                                    ),
                                                    const Text("55",
                                                      style: TextStyle(
                                                          fontSize: AppDimens.mediumFontSize,
                                                          fontWeight: FontWeight.bold,
                                                          color: AppColors.black),
                                                      // style: Theme.of(context).textTheme.headlineLarge,
                                                    ),
                                                  ],
                                                )

                                              ],
                                            ),
                                          ),
                                        ),
                                        15.horizontalSpace,
                                        SvgPicture.asset(ImgAssets.home_card_orders),
                                        12.horizontalSpace,

                                      ],
                                    ),
                                    5.verticalSpace,
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment: AlignmentDirectional.centerStart,
                                            child: Row(
                                              children: [
                                                12.horizontalSpace,
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      AppLocalizations.of(context)!.clients,
                                                      textAlign: TextAlign.center,
                                                      style: const TextStyle(
                                                          fontSize: AppDimens.mediumFontSize,
                                                          color: AppColors.normal_text_color),
                                                      // style: Theme.of(context).textTheme.headlineLarge,
                                                    ),
                                                    const Text("55",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: AppDimens.mediumFontSize,
                                                          fontWeight: FontWeight.bold,
                                                          color: AppColors.black),
                                                      // style: Theme.of(context).textTheme.headlineLarge,
                                                    ),
                                                  ],
                                                )

                                              ],
                                            ),
                                          ),
                                        ),
                                        15.horizontalSpace,
                                        SvgPicture.asset(ImgAssets.home_card_clients),
                                        12.horizontalSpace,

                                      ],
                                    ),
                                    5.verticalSpace,
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment: AlignmentDirectional.centerStart,
                                            child: Row(
                                              children: [
                                                12.horizontalSpace,
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      AppLocalizations.of(context)!.products,
                                                      style: const TextStyle(
                                                          fontSize: AppDimens.mediumFontSize,
                                                          color: AppColors.normal_text_color),
                                                      // style: Theme.of(context).textTheme.headlineLarge,
                                                    ),
                                                    const Text("120",
                                                      style: TextStyle(
                                                          fontSize: AppDimens.mediumFontSize,
                                                          fontWeight: FontWeight.bold,
                                                          color: AppColors.black),
                                                      // style: Theme.of(context).textTheme.headlineLarge,
                                                    ),
                                                  ],
                                                ),


                                              ],
                                            ),
                                          ),
                                        ),
                                        15.horizontalSpace,
                                        SvgPicture.asset(ImgAssets.home_card_products),
                                        12.horizontalSpace,

                                      ],
                                    ),
                                    5.verticalSpace,
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment: AlignmentDirectional.centerStart,
                                            child: Row(
                                              children: [
                                                12.horizontalSpace,
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      AppLocalizations.of(context)!.categories,
                                                      style: const TextStyle(
                                                          fontSize: AppDimens.mediumFontSize,
                                                          color: AppColors.normal_text_color),
                                                      // style: Theme.of(context).textTheme.headlineLarge,
                                                    ),
                                                    const Text("55",
                                                      style: TextStyle(
                                                          fontSize: AppDimens.mediumFontSize,
                                                          fontWeight: FontWeight.bold,
                                                          color: AppColors.black),
                                                      // style: Theme.of(context).textTheme.headlineLarge,
                                                    ),
                                                  ],
                                                )

                                              ],
                                            ),
                                          ),
                                        ),
                                        15.horizontalSpace,
                                        SvgPicture.asset(ImgAssets.home_card_cats),
                                        12.horizontalSpace,

                                      ],
                                    ),
                                    5.verticalSpace,
                                  ],
                                )
                              ],
                            )),
                      ),
                    ),

                  ],
                ),

              ],
            ),


            ),
          ),
        ),
    );
  }
}
