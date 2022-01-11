import 'package:flutter/material.dart';

class IconAndTextRow extends StatelessWidget {
  const IconAndTextRow({
    required this.icon,
    required this.text,
    this.iconHeight = 20,
    this.fontSize = 12,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final double? iconHeight;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: iconHeight,
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.caption?.copyWith(
                  fontSize: fontSize,
                ),
          ),
        ),
      ],
    );
  }
}
