import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sea/screens/product_detail.dart';
import 'package:sea/widgets/infos.dart';

/*class ProductItem extends StatefulWidget {
  const ProductItem({Key? key, required this.product}) : super(key: key);
  final Map? product;
  @override
  State<ProductItem> createState() => _ProductItemState();

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    //return //Text(widget.category['title']);
    return Scaffold(
        body: Container(
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
              widget.product!['images'],
              width: 130,
              height: 130,
            ),
          ),
          SizedBox(
              width: 110, child: Text(widget.product!['title'], maxLines: 2)),
          Padding(padding: EdgeInsets.all(3.0)),
          Text(widget.product!['price']),
          Padding(
            padding: EdgeInsets.all(1.0),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Product_Detail(product: )));
              },
              child: Text('Tıkla')),
        ],
      ),
    ));
  }
}*/
class ProductItem extends StatelessWidget {
  final Map? product;
  //final String productname;
  ProductItem({this.product /*, required this.productname*/});

  /*buildProductsInfo(BuildContext context) {
    var my_product = [];

    productsInfo.forEach((name) {
      if (name['title'] == product) {
        my_product.add(name);
      }
    });

    return Container(
        height: MediaQuery.of(context).size.height - 145,
        child: Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.only(left: 25),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 16.0,
                  runSpacing: 8.0,
                  children: my_product
                      .map((a) => Product_Detail(product: a))
                      .toList(),
                ),
              ),
            ],
          ),
        ));
  }*/

  @override
  Widget build(BuildContext context) {
    //return //Text(widget.category['title']);
    var my_product = [];
    productsInfo.forEach((name) {
      if (name['title'] == product) {
        my_product.add(name);
      }
    });
    return Scaffold(
        body: ListView(
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
              SizedBox(width: 110, child: Text(product!['title'], maxLines: 2)),
              Padding(padding: EdgeInsets.all(3.0)),
              Text(product!['price']),
              Padding(
                padding: EdgeInsets.all(1.0),
              ),
              ElevatedButton(
                  onPressed: () {
                    /*
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              my_product.map((i) => Product_Detail(product: i)).toList(),
                        ));*/
                    //  Product_Detail(product: my_product.asMap())));
                    //Product_Detail(product: my_product.asMap())));
                  },
                  child: Text('Tıkla')),
            ],
          ),
        )
      ],
    ));
  }
}
