import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5), // Image border
      child: SizedBox.fromSize(
        size: const Size.fromRadius(13), // Image radius
        child: Image.asset('assets/img/profile_photo.png', fit: BoxFit.cover),
      ),
    );
  }
}
