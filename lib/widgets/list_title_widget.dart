import 'package:flutter/material.dart';

class ListTitleWidget extends StatelessWidget {
  const ListTitleWidget({
    super.key,
    required this.text,
    required this.widget,
    required this.icon,
  });
  final String text;
  final Widget widget;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade100),
        child: ListTile(
          leading: Icon(icon, color: Colors.black),
          title: Row(
            children: [
              Text(
                text,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          trailing: widget,
        ),
      ),
    );
  }
}
