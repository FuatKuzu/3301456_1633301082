import 'package:flutter/material.dart';
import 'package:sea/screens/product_detail.dart';

class ProductItem extends StatelessWidget {
  final Map? product;

  ProductItem({this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          width: 140,
          height: 220,
          decoration: BoxDecoration(
            color: Colors.blueAccent.shade100,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.asset(
                  product!['images'],
                  width: 120,
                  height: 120,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 1)),
              SizedBox(
                  width: 110,
                  child: Text(
                    product!['title'],
                    maxLines: 2,
                  )),
              Padding(padding: EdgeInsets.all(3.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Fiyat:'),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                  ),
                  Text(product!['price']),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text('Tl')
                ],
              ),
              Padding(
                padding: EdgeInsets.all(1.0),
              ),
              Padding(padding: EdgeInsets.only(top: 1)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Product_Detail(product: product),
                        ));
                  },
                  child: Text('İncele')),
            ],
          ),
        )
      ],
    ));
  }
}
