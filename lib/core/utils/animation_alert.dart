import 'package:flutter/material.dart';

class AnimationAlert extends StatefulWidget {
  final Color color;
  final String? title;
  final String? subTitle;
  final IconData icon;
  final int? milliseconds;

  const AnimationAlert(
      {super.key,
      required this.color,
      this.title,
      this.subTitle,
      required this.icon,
      this.milliseconds});

  @override
  State<AnimationAlert> createState() => _AnimationAlertState();
}

class _AnimationAlertState extends State<AnimationAlert>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      // ignore: unnecessary_null_comparison
      duration: widget.milliseconds != null
          ? Duration(milliseconds: widget.milliseconds!)
          : null,
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.pop(context);
        }
      });

    _animation = Tween<double>(begin: 0, end: 280).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      contentPadding: const EdgeInsets.all(10),
      actionsPadding: EdgeInsets.zero,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            widget.icon,
            color: widget.color,
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 60,
              width: 3,
              color: Colors.grey[300],
            ),
          ),
          SizedBox(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (widget.title != null)
                  Text(
                    widget.title!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                if (widget.subTitle != null)
                  Text(
                    widget.subTitle!,
                    style: const TextStyle(fontSize: 12),
                  ),
              ],
            ),
          )
        ],
      ),
      actions: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: double.infinity,
              height: 5,
              color: widget.color,
            ),
            Container(
              width: _animation.value,
              height: 5,
              color: Colors.grey[300],
            ),
          ],
        ),
      ],
    );
  }
}
