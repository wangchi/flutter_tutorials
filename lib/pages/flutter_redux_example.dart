import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import '../store/store.dart';

class FlutterReduxExample extends StatefulWidget {
  @override
  _FlutterReduxState createState() => new _FlutterReduxState();
}

class _FlutterReduxState extends State<FlutterReduxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Redux'),
        ),
        body: Container(
          height: double.infinity,
          color: Color.fromRGBO(0, 0, 0, .05),
          child: CustomScrollView(
            controller: null,
            physics: ScrollPhysics(),
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  // width: double.infinity,
                  color: Colors.white,
                  height: 200.0,
                  child: StoreConnector<int, String>(converter: (store) {
                    // print('-----');
                    // print(store.state.counter);
                    return store.state.toString();
                  }, builder: (context, counter) {
                    return Text(counter);
                  }),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  // width: double.infinity,
                  color: Colors.green,
                  height: 200.0,
                  child: StoreConnector<int, VoidCallback>(converter: (store) {
                    return () => store.dispatch('Increment');
                    // return () => store.dispatch(IncrementAction({ 'counter': 0 }));
                  }, builder: (context, callback) {
                    return RaisedButton(
                      onPressed: callback,
                      child: Text('Increment'),
                    );
                  }),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  // width: double.infinity,
                  color: Colors.green,
                  height: 200.0,
                  child: StoreConnector<int, VoidCallback>(converter: (store) {
                    return () => store.dispatch('Decrement');
                  }, builder: (context, callback) {
                    return RaisedButton(
                      onPressed: callback,
                      child: Text('Decrement'),
                    );
                  }),
                ),
              ),
            ],
          ),
        ));
  }
}
