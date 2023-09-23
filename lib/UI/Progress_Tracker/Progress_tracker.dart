import 'package:fitness_app/Models/Progress_model.dart';
import 'package:fitness_app/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ProgressTracker extends StatefulWidget {
  const ProgressTracker({super.key});

  @override
  State<ProgressTracker> createState() => _ProgressTrackerState();
}

class _ProgressTrackerState extends State<ProgressTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Tracking', style: kAppBarTextStyle),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: kTextColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildChart(
              title: 'Weight Progress',
              data: weightData,
            ),
            _buildChart(
              title: 'Body Fat Progress',
              data: bodyFatData,
            ),
            _buildChart(
              title: 'Body Measurement Progress',
              data: bodyMeasurementData,
            ),
            _buildChart(
              title: 'Body Composition Progress',
              data: bodyCompositionData,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChart({
    required String title,
    required List<FlSpot> data,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          AspectRatio(
            aspectRatio: 1.7,
            child: LineChart(
              LineChartData(
                gridData: const FlGridData(show: false),
                titlesData: const FlTitlesData(show: false),
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(color: const Color(0xff37434d), width: 1),
                ),
                minX: 0,
                maxX: data.length.toDouble() - 1,
                minY: 0,
                maxY: 200,
                lineBarsData: [
                  LineChartBarData(
                    spots: data,
                    isCurved: true,
                    color: Colors.blue,
                    dotData: const FlDotData(show: false),
                    belowBarData: BarAreaData(show: false),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
