import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget loadingShimmer() => Shimmer.fromColors(
  baseColor: Colors.grey,
  highlightColor: Colors.grey[400]!,
  period: const Duration(seconds: 1),
  child: Container(
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey)),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: Container(
              width: 80,
              height: 60,
              color: Colors.grey,
            )
        ),
        const SizedBox(width: 10,),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Container(
                width: 200,
                height: 10,
                color: Colors.grey,
              )
            ],
          ),
        )
      ],
    ),
  ),
);