import 'package:flutter/material.dart';

import 'widgets/grid_view_containers_widget.dart';

class GridViewColumn extends StatelessWidget {
  const GridViewColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 600,
          width: 430,
          child: GridView.extent(
            primary: false,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.0/1.4,
            maxCrossAxisExtent: 200.0,
            children: const <Widget>[
              GridViewContainer(
                image: "assets/images/brown_bag.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
              GridViewContainer(
                image: "assets/images/brown_bag.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
              GridViewContainer(
                image: "assets/images/brown_bag.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
              GridViewContainer(
                image: "assets/images/brown_bag.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
              GridViewContainer(
                image: "assets/images/brown_bag.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
              GridViewContainer(
                image: "assets/images/brown_bag.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
              GridViewContainer(
                image: "assets/images/brown_bag.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
              GridViewContainer(
                image: "assets/images/brown_bag.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
              GridViewContainer(
                image: "assets/images/brown_bag.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
              GridViewContainer(
                image: "assets/images/brown_bag.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
              GridViewContainer(
                image: "assets/images/brown_bag.png",
                title: 'Mulberry Clutch',
                subtitle: 'Series 7',
                price: 333.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}