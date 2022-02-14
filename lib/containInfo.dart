import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                'GAME NAME',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text(
                'RATING',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            width: 100,
            height: 70,
            child: Image.asset(
              'assets/Valentines_day_images_feature_0.jpg',
            ),
          ),
          Row(
            children: const [
              Text('-50%'),
              Text(
                '\$22.50',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              Text('\$11.25')
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Sale ends 2/10/2022 at 11:00 PM'),
              RaisedButton(
                onPressed: () => null,
                child: Text('Buy Now'),
              )
            ],
          )
        ],
      ),
    );
  }
}
