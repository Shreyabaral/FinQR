import 'package:flutter/material.dart';

class BalanceRewardSection extends StatelessWidget {
  const BalanceRewardSection({super.key});

 @override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 16.0), // Adds padding below this component
    child: Container(
      padding: const EdgeInsets.all(16.0),
      color: Colors.blue,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "300.00",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Reward Points", style: TextStyle(color: Colors.white)),
            ],
          ),
          Icon(Icons.swap_horiz, color: Colors.white, size: 32.0),
        ],
      ),
    ),
  );
}

}
