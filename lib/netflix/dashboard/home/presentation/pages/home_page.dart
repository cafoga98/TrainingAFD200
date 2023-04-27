import 'package:flutter/material.dart';
import 'package:grilles/netflix/core/presentation/widgets/profile_photo.dart';
import 'package:grilles/netflix/dashboard/home/presentation/widgets/promotion_header.dart';

class HomeNetflixPage extends StatefulWidget {
  const HomeNetflixPage({Key? key}) : super(key: key);

  @override
  State<HomeNetflixPage> createState() => _HomeNetflixPageState();
}

class _HomeNetflixPageState extends State<HomeNetflixPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: Container(
          padding: const EdgeInsets.only(top: 30),
          decoration: const BoxDecoration(color: Colors.black54),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/img/netflix_logo.png',
                height: 85,
                width: 47,
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.only(top: 18),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      visualDensity: VisualDensity.compact,
                      padding: const EdgeInsets.all(0),
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/img/search_white.png',
                        height: 23,
                        width: 23,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16,),
                    const ProfilePhoto(),
                    const SizedBox(width: 12),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children: const [
          PromotionHeader()
        ],
      ),
    );
  }
}
