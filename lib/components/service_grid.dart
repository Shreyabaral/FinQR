import 'package:flutter/material.dart';

class ServiceGrid extends StatelessWidget {
  final List<Map<String, dynamic>> services = [
    //{"icon": Icons.phone_android, "label": "Topup"},
    //{"icon": Icons.flash_on, "label": "Electricity"},
    //{"icon": Icons.water, "label": "Khanepani"},
   // {"icon": Icons.wifi, "label": "Internet"},
    //{"icon": Icons.flight, "label": "Airlines"},
    //{"icon": Icons.flight_takeoff, "label": "International Airlines"},
    //{"icon": Icons.hotel, "label": "Hotels"},
    //{"icon": Icons.payment, "label": "Govt. Payment"},
    //{"icon": Icons.cable, "label": "Cable Car"},
    //{"icon": Icons.account_balance, "label": "Sahakari Deposit"},
    //{"icon": Icons.tv, "label": "TV"},
    //{"icon": Icons.school, "label": "Education Fee"},
    //{"icon": Icons.beach_access, "label": "Insurance"},
    //{"icon": Icons.monetization_on, "label": "Financial Services"},
    //{"icon": Icons.health_and_safety, "label": "Health"},
    //{"icon": Icons.attach_money, "label": "Cashout"},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.builder(
        padding: EdgeInsets.all(16.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          childAspectRatio: 0.7,
        ),
        itemCount: services.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(services[index]["icon"], color: Colors.blue, size: 30),
              SizedBox(height: 8),
              Text(
                services[index]["label"],
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
