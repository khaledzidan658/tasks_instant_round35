import 'package:flutter/material.dart';
import 'package:task5_r35_13/welcome/welcome.dart';

class Container2 extends StatefulWidget {
  Container2({super.key, required this.onChanged});
  final ValueChanged<double> onChanged;

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  double _slider = 170;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xff121327),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('Height', style: TextStyle(color: Colors.grey)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SliderNum(sliderValue: _slider),
                Text(' Cm', style: TextStyle(color: Colors.grey)),
              ],
            ),
            Sliderr(
              value: _slider,
              onChanged: (newValue) {
                setState(() {
                  _slider = newValue;
                });
                widget.onChanged(newValue);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Sliderr extends StatelessWidget {
  Sliderr({super.key, required this.onChanged, required this.value});

  final double value;
  final ValueChanged<double> onChanged;
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      onChanged: onChanged,
      label: value.round().toString(),
      min: 0,
      max: 250,
      divisions: 250,
    );
  }
}

class SliderNum extends StatelessWidget {
  const SliderNum({super.key, required this.sliderValue});

  final double sliderValue;

  @override
  Widget build(BuildContext context) {
    return Text(
      sliderValue.round().toString(),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
