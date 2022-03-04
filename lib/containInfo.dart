import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //container for the game info
      width: 400,
      height: 370,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      padding: const EdgeInsets.all(20.0),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // row for gamename,star icon and rating
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'gameName', //need data from api
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    '4.5', //need data from api
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),

          // The container for Game Image
          Container(
            width: 350,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(
                        'assets/Valentines_day_images_feature_0.jpg'),
                    fit: BoxFit.cover)),
          ),

          // Row for discount button, text(price)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  child: Text(
                    "-50%", //need data from api
                    style: TextStyle(color: Colors.white),
                  )),
              Text(
                '\$22.50', //need data from api
                style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '\$11.25', //need data from api
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),

          // Row text(Enddate) and button to the game page.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Sale ends 2/10/2022 at 11:00 PM'), //need data from api
              //button
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.grey),
                onPressed: () => null,
                child: Text(
                  'Buy Now',
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
