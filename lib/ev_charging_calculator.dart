import 'package:flutter/material.dart';

class EvChargingCalculator extends StatefulWidget {
  const EvChargingCalculator({super.key});

  @override
  State<EvChargingCalculator> createState() => _EvChargingCalculatorState();
}

class _EvChargingCalculatorState extends State<EvChargingCalculator> {
  String _chrg_power = "-";
  String _chrg_time = "-";
  final _current_soc = TextEditingController();
  final _target_soc = TextEditingController();
  final _chrg_rate = TextEditingController();
  final _voltage = TextEditingController();
  final _bat_capacity = TextEditingController();
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
                        controller: _current_soc,
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
                        controller: _target_soc,
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
                        controller: _chrg_rate,
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
                        controller: _bat_capacity,
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
                          "$_chrg_power kWh",
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
                          "$_chrg_time hrs",
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
                        double current_soc_var =
                            double.parse(_current_soc.text);
                        double target_soc_var = double.parse(_target_soc.text);
                        double chrg_rate_var = double.parse(_chrg_rate.text);
                        double voltage_var = double.parse(_voltage.text);
                        double bat_capacity_var =
                            double.parse(_bat_capacity.text);
                        double effiency_var = double.parse(_effiency.text);

                        double chrg_power_var =
                            (voltage_var * chrg_rate_var) / 1000;
                        double chrg_time_var = target_soc_var *
                            bat_capacity_var /
                            100 /
                            (chrg_power_var * effiency_var);
                        _chrg_power = chrg_power_var.toStringAsFixed(4);
                        _chrg_time = chrg_time_var.toStringAsFixed(3);
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
