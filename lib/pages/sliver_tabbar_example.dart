import 'package:flutter/material.dart';
// import 'package:flutter_tutorials/demos/listview.dart';

class SliverTabBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: new AppBar(
        //   title: Text('Flutter Tutorials'),
        //   leading: IconButton(
        //     icon: Icon(Icons.menu),
        //     tooltip: 'Menu',
        //     onPressed: () => debugPrint('Menu button pressed!'),
        //   ),
        //   actions: <Widget>[
        //     IconButton(
        //       icon: Icon(Icons.search),
        //       tooltip: 'Search',
        //       onPressed: () => debugPrint('Search button pressed!'),
        //     ),
        //   ],
        // ),
        body: DefaultTabController(
      length: 2,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
//              title: Text('PUSHSTACK'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              tooltip: 'Menu',
              onPressed: () => debugPrint('Menu button pressed!'),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Search',
                onPressed: () => debugPrint('Search button pressed!'),
              ),
            ],
            pinned: true,
//               floating: true,
            bottom: TabBar(indicatorColor: Colors.white, tabs: <Widget>[
              Tab(icon: Icon(Icons.mail)),
              Tab(icon: Icon(Icons.image)),
            ]),
//               bottom: PreferredSize(
//                 preferredSize: const Size.fromHeight(300.0),
//                 child: Container(
//                   child: Column(
//                     children: <Widget>[
//                       Container(
//                         margin: EdgeInsets.all(16.0),
//                         width: double.infinity,
//                         color: Colors.white,
//                         child: Center(
//                           child: Text('place something in appbar'),
//                         ),
//                       ),
//                       TabBar(
//                         indicatorColor: Colors.white,
//                         tabs: <Widget>[
//                           Tab(icon: Icon(Icons.mail)),
//                           Tab(icon: Icon(Icons.image)),
//                         ]
//                       )
//                     ]
//                   )
//                 ),
//               ),

            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
//                title: Text(
//                  'www.pushstack.com'.toUpperCase()
//                ),
              background: Image.network(
                  'https://tva3.sinaimg.cn/crop.0.0.640.640.640/a1d3feabjw1eca1gkmhz8j20hs0hswfn.jpg',
                  fit: BoxFit.cover),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              children: <Widget>[
                Icon(Icons.mail, size: 128.0, color: Colors.black12),
                Icon(Icons.image, size: 128.0, color: Colors.black12),
              ],
            ),
          ),
          // SliverPadding(
          //   padding: EdgeInsets.all(10.0),
          //   sliver: SliverGridDemo(),
          //   // sliver: SliverListDemo(),
          // ),
          // TabBarView(
          //   children: <Widget>[
          //     Icon(Icons.mail, size: 128.0, color: Colors.black12),
          //     Icon(Icons.image, size: 128.0, color: Colors.black12),
          //   ],
          // )
        ],
      ),
    ));
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 1.0),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
            child: Image.network(
                'https://tva2.sinaimg.cn/crop.0.0.640.640.180/9e5b07c7jw8f014yvcyjbj20hs0hs3z4.jpg',
                fit: BoxFit.cover));
      }),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(10.0),
          child: Material(
            borderRadius: BorderRadius.circular(10.0),
            elevation: 10.0,
            shadowColor: Colors.grey.withOpacity(0.5),
            child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                    'https://tva2.sinaimg.cn/crop.0.0.640.640.180/9e5b07c7jw8f014yvcyjbj20hs0hs3z4.jpg',
                    fit: BoxFit.cover)),
          ),
        );
      }),
    );
  }
}
