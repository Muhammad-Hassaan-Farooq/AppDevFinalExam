import 'package:app_dev_final_exam/main.dart';
import 'package:app_dev_final_exam/q1/bloc/juice_bloc.dart';
import 'package:app_dev_final_exam/q1/models/juice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JuiceDetailScreen extends StatelessWidget {
  final int count;
  final bool expanded;
  final Juice juice;

  const JuiceDetailScreen(
      {super.key,
      required this.count,
      required this.expanded,
      required this.juice});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Card(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xfffbd7d3), Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back_ios_new)),
                      Text("Details"),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.share_outlined)),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.all(16),
                      child: Image.network(
                        juice.url,
                        height: 300,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        juice.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                context.read<JuiceBloc>().add(IncCount());
                              },
                              icon: Icon(Icons.add_circle_sharp)),
                          Text(count.toString()),
                          IconButton(
                              onPressed: () {
                                context.read<JuiceBloc>().add(DecCount());
                              },
                              icon: Icon(Icons.remove_circle_sharp))
                        ],
                      )
                    ],
                  ),
                  Row(children: [Text(juice.serving)]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(juice.rating.toString()),
                      Text(juice.ratingsCount.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16),child:ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xfff4acac),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                          ),
                          onPressed: () {}, child: Icon(Icons.history,color: Colors.white,))),
                      Padding(
                        padding: EdgeInsets.all(16),child: Column(
                        children: [
                          Text("Delivery Time",style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          )),
                          Text(
                              "${juice.deliveryLower}-${juice.deliveryUpper} min")
                        ],
                      ))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [Text("Price",style: TextStyle(
                    fontWeight: FontWeight.w500,
                      fontSize: 20,
                    )), Text("\$ ${juice.price}",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 30,
                              ))],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xfff4acac)
                            ),
                            onPressed: () {}, child: Text("Add to Cart",style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
