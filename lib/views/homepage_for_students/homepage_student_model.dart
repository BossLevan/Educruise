import 'package:educruise/shared/widgets/hompage_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePageStudentModel extends ChangeNotifier {
  List<StaggeredTile> staggeredTiles = const <StaggeredTile>[
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(1, 2),
    const StaggeredTile.count(1, 2),
  ];

  List<HomePageCard> homepageItems = [
    HomePageCard(),
    HomePageCard(),
    HomePageCard(),
    HomePageCard(),
    HomePageCard(),
    HomePageCard(),
    HomePageCard(),
    HomePageCard(),
  ];
}
