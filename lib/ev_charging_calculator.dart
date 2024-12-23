import 'package:flutter/material.dart';

class EvChargingCalculator extends StatefulWidget {
  const EvChargingCalculator({super.key});

  @override
  State<EvChargingCalculator> createState() => _EvChargingCalculatorState();
}

class _EvChargingCalculatorState extends State<EvChargingCalculator> {
  String _chrgPower = "-";
  String _chrgTime = "-";
  final _currentSoc = TextEditingController();
  final _targetSoc = TextEditingController();
  final _chrgRate = TextEditingController();
  final _voltage = TextEditingController();
  final _batCapacity = TextEditingController();
  final _effiency = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold is like form.
      // property : wiget
      appBar: AppBar(
        title: const Text(
          "EV Charging App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        // action is one or more child but leading is have one child only.
        leading: IconButton(
          onPressed: () {
            debugPrint("leading is clicked.");
          },
          icon: const Icon(Icons.menu),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("inbox action button is clicked.");
            },
            icon: const Icon(Icons.inbox),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {
              debugPrint("Profile action button is clicked.");
            },
            icon: const Icon(Icons.person),
            color: Colors.black,
          ),
        ],
      ),
      // body must have 1 wiget(child) only if want to add other wiget must use wrapper ( Column , Row or etc.) to set layout.
      // if have button or elements it will be paste in body.
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 20,
            ),
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            decoration: const BoxDecoration(
              color: Colors.white,
              // border: Border.all(
              //   color: Colors.black,
              //   width: 1,
              // ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18.0),
                  topRight: Radius.circular(18.0)),
            ),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      "Charging Battery",
                      style: TextStyle(
                        color: Color.fromARGB(255, 68, 188, 102),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.battery_charging_full),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Current SOC%",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      width: 160,
                      child: TextField(
                        controller: _currentSoc,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Current SOC%"),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.battery_std),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Target SOC%",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      width: 160,
                      child: TextField(
                        controller: _targetSoc,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Target SOC%"),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.bolt),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Charging rate (A)",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      width: 160,
                      child: TextField(
                        controller: _chrgRate,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Charging rate (A)"),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.bolt),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Voltage (V)",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      width: 160,
                      child: TextField(
                        controller: _voltage,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Voltage (V)"),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.battery_saver),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Battery Capacity (kWh)",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      width: 160,
                      child: TextField(
                        controller: _batCapacity,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Battery Capacity (kWh)"),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.trending_up),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Effiency (%)",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      width: 160,
                      child: TextField(
                        controller: _effiency,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter Effiency (%)"),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.electrical_services),
                        SizedBox(
                          width: 1,
                        ),
                        Text(
                          "Charging Power (kWh)",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      width: 150,
                      alignment: Alignment.centerRight,
                      child: Expanded(
                        child: Text(
                          "$_chrgPower kWh",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.timer),
                        SizedBox(
                          width: 1,
                        ),
                        Text(
                          "Charging Time (hrs)",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      width: 150,
                      alignment: Alignment.centerRight,
                      child: Expanded(
                        child: Text(
                          "$_chrgTime hrs",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(
                      () {
                        double currentSocVar = double.parse(_currentSoc.text);
                        double targetSocVar = double.parse(_targetSoc.text);
                        double chrgRateVar = double.parse(_chrgRate.text);
                        double voltageVar = double.parse(_voltage.text);
                        double batCapacityVar = double.parse(_batCapacity.text);
                        double effiencyVar = double.parse(_effiency.text);

                        double chrgPowerVar = (voltageVar * chrgRateVar) / 1000;
                        double chrgTimeVar = (targetSocVar - currentSocVar) *
                            batCapacityVar /
                            100 /
                            (chrgPowerVar * effiencyVar);
                        _chrgPower = chrgPowerVar.toStringAsFixed(4);
                        _chrgTime = chrgTimeVar.toStringAsFixed(3);
                      },
                    );
                    debugPrint("");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 112, 255, 117),
                  ),
                  child: const Text(
                    "Confirm Charging",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
