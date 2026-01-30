
import 'package:flutter/material.dart';
import '../models/product_model.dart';


class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required  this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 216,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFFFFFFFF),
      ),
      child: Column(
        children: [
          Container(
            width: 164,
            height: 114,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFFEBEBEB),
            ),
            child: Image.asset( product.imagePath,),

          ),
          SizedBox(height: 8,),
          Text( product.title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
          SizedBox(height: 4,),
          Row(
            children: [
              Icon(Icons.star,color: Color(0xFFFFC039),),
              Text("4.5",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Color(0xFF6F7C8E)),),
              SizedBox(width: 4,),
              Text("(${product.reviews} reviews)",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Color(0xFF6F7C8E)),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text( product.price,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Color(0xFF2F2F2F))),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFFF4F4F4),
                ),
                child: Image.asset("assets/images/shopping-basket-add-01.png"),
              )
            ],
          )
        ],
      ),
    );
  }
}
