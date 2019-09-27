import 'package:flutter/material.dart';
import 'package:happ/src/widgets/equipment.dart';
import 'package:happ/src/widgets/gallery.dart';
import 'package:happ/src/widgets/info.nav.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f6fb),
      body: _bodyContent()
    );
  }

  Widget _bodyContent() {
    return CustomScrollView(
      slivers: <Widget>[
        _sliverAppBar(),
        _sliverList()
      ],
    );
  }

  Widget _sliverAppBar() {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFFf5f6fb),
      expandedHeight: 100,
      floating: false,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(
          left: 40
        ),
        title: Text(
          'Bem-vindo ao Happ',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Quicksand-Bold'
          ),
        ),
      ),
    );
  }

  Widget _sliverList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              _cameras(),
              _aparelhos(),
              _aparelhos2(),
              SizedBox(
                height: 50,
              )
            ],
          );
        },
        childCount: 1,
      ),
    );
  }

  Widget _cameras() {
    return Container(
      child: Column(
        children: <Widget>[
          HappInfoNavigation(
            text: 'Cameras',
            textButton: 'Ver tudo',
          ),
          HappGallery(
            template: Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: AssetImage('assets/img_room.jpg'),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Container(
                      padding: EdgeInsets.only(
                      bottom: 20,
                      left: 20
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.05),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Living Room',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quicksand-Bold',
                            fontSize: 16
                          ),
                        ),
                      ]
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _aparelhos() {
    final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

    return Container(
      child: Column(
        children: <Widget>[
          HappInfoNavigation(
            text: 'Aparelhos \nem execução',
            textButton: 'Apagar',
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: numbers.length, itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    left: 20
                  ),
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: HappEquipment(),
                );
              }
            ),
          )
        ],
      ),
    );
  }

  Widget _aparelhos2() {
    final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

    return Container(
      child: Column(
        children: <Widget>[
          HappInfoNavigation(
            text: 'Aparelhos',
            textButton: 'Ligar',
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: numbers.length, itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                    left: 20
                  ),
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: HappEquipment(),
                );
              }
            ),
          )
        ],
      ),
    );
  }
}