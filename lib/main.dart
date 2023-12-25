import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Biểu đồ Line Chart'),
        ),
        body: LineChartExample(),
      ),
    );
  }
}

class LineChartExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
            leftTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              margin: 12,
              getTextStyles: (context, value) => const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            bottomTitles: SideTitles(
              showTitles: true,
              reservedSize: 30,
              margin: 12,
              getTextStyles: (context, value) => const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              getTitles: (value) {
                switch (value.toInt()) {
                  case 0:
                    return '0:00';
                  case 3:
                    return '3:00';
                  case 6:
                    return '6:00';
                }
                return '';
              },
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(
              color: const Color(0xff37434d),
              width: 1,
            ),
          ),
          minX: 0,
          maxX: 6,
          minY: -1,
          maxY: 1,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 0),
                FlSpot(1, 0.4),
                FlSpot(2, 0.6),
                FlSpot(3, 0.7),
                FlSpot(3.6, 0.8),
                FlSpot(6, 0),
              ],
              isCurved: true,
              colors: [Colors.blue],
              dotData: FlDotData(show: false),
              belowBarData: BarAreaData(show: false),
            ),
          ],
        ),
      ),
    );
  }
}

