
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountWidget extends StatelessWidget {
  const AlreadyHaveAnAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Already have an account ? ',
            style: TextStyle(
                fontSize: 13,
                color: Color(0xff939393),
                fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () => {Navigator.pop(context)},
            child: const Text(
              'Log-in',
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff748288),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
