import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VehicleTypeDropdown extends StatefulWidget {
  final String? labelText;
  final List<String>? vehicleTypes;
  final Function(String)? onChanged;
  final String? value;

  const VehicleTypeDropdown({
    Key? key,
    this.labelText,
    this.vehicleTypes,
    this.onChanged,
    this.value,
  }) : super(key: key);

  @override
  _VehicleTypeDropdownState createState() => _VehicleTypeDropdownState();
}

class _VehicleTypeDropdownState extends State<VehicleTypeDropdown> {
  late String? _selectedVehicleType;
  late List<String> _vehicleTypes;

  @override
  void initState() {
    super.initState();
    _vehicleTypes = widget.vehicleTypes ?? [];
    _selectedVehicleType =
        widget.value ?? (_vehicleTypes.isNotEmpty ? _vehicleTypes[0] : null);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null)
          Row(
            children: [
              Text(
                widget.labelText!,
                style: const TextStyle(fontSize: 15),
              ),
              const Text(
                '*',
                style: TextStyle(fontSize: 15, color: Colors.red),
              ),
            ],
          ),
        if (widget.labelText != null) const SizedBox(height: 8),
        Container(
          height: 48,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _selectedVehicleType,
              isExpanded: true,

              alignment: Alignment.center,
              underline: const SizedBox(),
              items: _vehicleTypes.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    _selectedVehicleType = newValue;
                  });
                  if (widget.onChanged != null) {
                    widget.onChanged!(newValue);
                  }
                }
              },
              menuMaxHeight: 200, 
              dropdownColor: Colors.white,
              style: const TextStyle(fontSize: 15, color: Colors.black),
              itemHeight: 48,
  
              borderRadius: BorderRadius.circular(12.0), // Bo góc menu
            ),
          ),
        ),
      ],
    );
  }
}
