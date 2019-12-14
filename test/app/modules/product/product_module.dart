import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'product_bloc.dart';
import 'product_widget.dart';


class ProductModule extends ChildModule {
  @override
  List<Bind> get binds => [
    Bind((i) => ProductBloc()),
  ];

  @override
  List<Router> get routers => [
    Router("/product", child: (_, args) => ProductPage()),
    Router("/product/:id", child: (_, args) => DetailsPage(id: args.params['id'])),
  ];

  static Inject get to => Inject<ProductModule>.of();

}


class DetailsPage extends StatelessWidget {
  final int id;

  const DetailsPage({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}