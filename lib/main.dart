import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWithAxes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Line Chart with Axes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            titlesData: FlTitlesData(
              leftTitles: SideTitles(
                showTitles: true,
                getTextStyles: (context, value) => const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                margin: 16,
                getTitles: (value) {
                  switch (value.toInt()) {
                    case 0:
                      return '0';
                    case 3:
                      return '3';
                    case 6:
                      return '6';
                    default:
                      return '';
                  }
                },
              ),
              bottomTitles: SideTitles(
                showTitles: true,
                getTextStyles: (context, value) => const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                margin: 8,
                getTitles: (value) {
                  switch (value.toInt()) {
                    case 1:
                      return '0:00';
                    case 4:
                      return '3:00';
                    case 7:
                      return '6:00';
                    default:
                      return '';
                  }
                },
              ),
              rightTitles: SideTitles(
                showTitles: false,
              ), // Hide titles on the right
              topTitles: SideTitles(
                showTitles: false,
              ),   // Hide titles on the top
            ),
            borderData: FlBorderData(
              show: true,
              border: const Border(
                left: BorderSide(color: Colors.black, width: 1),
                bottom: BorderSide(color: Colors.black, width: 1),
                right: BorderSide.none, // Hide the right border
                top: BorderSide.none,   // Hide the top border
              ),
            ),
            gridData: FlGridData(
              show: false,
              drawVerticalLine: false,  // Hide vertical grid lines
              drawHorizontalLine: true, // Show horizontal grid lines
              horizontalInterval: 1.0,  // Set the interval for horizontal grid lines
            ),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  const FlSpot(0, 1),
                  const FlSpot(3, 1.5),
                  const FlSpot(6, 2),
                ],
                isCurved: true,
                colors: [Colors.blue],
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(show: false),
                aboveBarData: BarAreaData(show: false),
              ),
            ],
            titlesData: FlTitlesData(
              centerTitles: true, // Center the title on the axis
              rotation: 90,   // Rotate the title by 90 degrees
              show: true,
              bottomTitles: SideTitles(
                showTitles: true,
                getTextStyles: (context, value) => const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                margin: 16,
                getTitles: (value) {
                  switch (value.toInt()) {
                    case 1:
                      return '咬合圧'; // Replace with your desired text
                    case 4:
                      return '3:00';
                    case 7:
                      return '6:00';
                    default:
                      return '';
                  }
                },
              ),
            ),
            minX: 0,
            maxX: 8,
            minY: 0,
            maxY: 2,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LineChartWithAxes(),
  ));
}
