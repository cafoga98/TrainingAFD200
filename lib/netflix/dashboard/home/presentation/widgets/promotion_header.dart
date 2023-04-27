import 'package:flutter/material.dart';

class PromotionHeader extends StatefulWidget {
  const PromotionHeader({Key? key}) : super(key: key);

  @override
  State<PromotionHeader> createState() => _PromotionHeaderState();
}

class _PromotionHeaderState extends State<PromotionHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 70),
      child: Column(
        children: [
          Image.asset(
            'assets/img/promotion.png',
            height: 310,
            width: 220,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5), // Image border
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(11), // Image radius
                  child: Image.asset('assets/img/top10.png', fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'N.º 6 en películas hoy',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.w800),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              iconHeader(iconData: Icons.add, title: 'Mi lista'),
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  height: 40,
                  width: 145,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.play_arrow,
                        color: Colors.black,
                        size: 30,
                      ),
                      const SizedBox(width: 5,),
                      Text(
                        'Reproducir',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              iconHeader(iconData: Icons.info_outline, title: 'Información'),
            ],
          )
        ],
      ),
    );
  }

  Widget iconHeader({required IconData iconData, required String title}) {
    return SizedBox(
      height: 50,
      width: 80,
      child: Column(
        children: [
          Icon(
            iconData,
            size: 30,
            color: Colors.white,
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
