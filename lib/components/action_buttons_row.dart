import 'package:flutter/material.dart';
import '../scanner/qr_scanner_screen.dart';
import '../donation/donation_screen.dart';

class ActionButtonsRow extends StatelessWidget {
  const ActionButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildActionIcon(context, Icons.qr_code_scanner, "Scan and Pay", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QRScannerScreen()),
            );
          }),
          _buildActionIcon(context, Icons.favorite, "Donate", () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DonationScreen()),
            );
          }),
          _buildActionIcon(context, Icons.settings, "Settings"),
        ],
      ),
    );
  }

  Widget _buildActionIcon(BuildContext context, IconData icon, String label, [VoidCallback? onTap]) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
