import 'package:flutter/material.dart';

class Container3 extends StatelessWidget {
  const Container3({super.key, required this.onChangedWeight});

  final ValueChanged<double> onChangedWeight;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: mContainer(
              title: 'Weight',
              initialValue: 60,
              onChangedWeight: onChangedWeight,
            ),
          ),
          Expanded(
            child: mContainer(
              title: 'Age',
              initialValue: 20,
              onChangedWeight: onChangedWeight,
            ),
          ),
        ],
      ),
    );
  }
}

class mContainer extends StatefulWidget {
  const mContainer({
    super.key,
    required this.title,
    required this.initialValue,
    required this.onChangedWeight,
  });
  final ValueChanged<double> onChangedWeight;

  final String title;
  final double initialValue;
  @override
  State<mContainer> createState() => _mContainerState();
}

class _mContainerState extends State<mContainer> {
  late double value;
  @override
  void initState() {
    super.initState();
    value = widget.initialValue;
  }

  void upDateVlaue(newValue) {
    setState(() {
      value = newValue;
    });
    widget.onChangedWeight(newValue);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xff121327),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text(
            widget.title,
            style: TextStyle(color: Colors.grey, fontSize: 25),
          ),
          Text(
            value.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(180),
                ),
                child: IconButton(
                  onPressed: () => upDateVlaue(value + 1),
                  icon: Icon(Icons.add, color: Colors.white),
                ),
              ),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(180),
                ),
                child: IconButton(
                  onPressed: () => upDateVlaue(value - 1),
                  icon: Icon(Icons.remove, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
