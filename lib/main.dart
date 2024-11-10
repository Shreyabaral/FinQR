import 'package:flutter/material.dart';
import 'components/balance_reward_section.dart';
import 'components/action_buttons_row.dart';
import 'components/recent_transactions.dart';
import 'components/service_grid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FINQR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Adjust padding as needed
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BalanceRewardSection(),
              const ActionButtonsRow(),
              //Expanded(child: ServiceGrid()),
              Expanded(child: RecentTransactions()),
            ],
          ),
        ),
      ),
    );
  }
}

