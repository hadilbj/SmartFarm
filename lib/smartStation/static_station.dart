// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../drawer.dart';
import '../main.dart';

class ChartApp extends StatelessWidget {
  const ChartApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerComponent(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: d_purple),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/favicon.png',
                  height: 50,
                  width: 50,
                ),
                Text(
                  'Bonjour Leila DIFALLAH ',
                  style: GoogleFonts.poppins(
                      color: d_green,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(right: 50.0)),
                Text(
                  '20/02/2022 à 12:00:20',
                  style: GoogleFonts.poppins(color: d_green, fontSize: 12.0),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
      body: _buildBody(context),
    );
  }
}

class _buildBody extends StatefulWidget {
  const _buildBody(BuildContext context, {Key? key}) : super(key: key);

  @override
  State<_buildBody> createState() => __buildBodyState();
}

class __buildBodyState extends State<_buildBody> {
  List<_SalesData> data = [
    _SalesData('Jan', 0.0),
    _SalesData('Feb', 1.0),
    _SalesData('Mar', 2.0),
    _SalesData('Apr', 3.0),
    _SalesData('May', 4.0)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        //Initialize the chart widget
        SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            // Chart title
            title: ChartTitle(text: 'Température'),
            // Enable legend
            legend: Legend(isVisible: true),
            // Enable tooltip
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <ChartSeries<_SalesData, String>>[
              LineSeries<_SalesData, String>(
                  dataSource: data,
                  xValueMapper: (_SalesData sales, _) => sales.year,
                  yValueMapper: (_SalesData sales, _) => sales.sales,
                  name: '',
                  // Enable data label
                  dataLabelSettings: const DataLabelSettings(isVisible: true))
            ]),
      ]),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
